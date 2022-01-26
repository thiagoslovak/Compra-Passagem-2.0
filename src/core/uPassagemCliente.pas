unit uPassagemCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CurvyControls, StdCtrls, AdvGroupBox, AdvOfficeButtons,
  DBAdvOfficeButtons, ExtCtrls, AdvPanel, AdvGlowButton;

type
  TFPassagemCliente = class(TForm)
    pnlPassagem: TAdvPanel;
    edtOrigem: TCurvyEdit;
    edtDestino: TCurvyEdit;
    lblOrigem: TLabel;
    lblDestino: TLabel;
    edtValor: TCurvyEdit;
    lblValor: TLabel;
    btnCalcular: TAdvGlowButton;
    btnPagar: TAdvGlowButton;
    rdgCidades: TRadioGroup;
    chkDestino: TCheckBox;
    chkOrigem: TCheckBox;
    rdgTipoPassagem: TRadioGroup;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnPagarClick(Sender: TObject);
    procedure chkDestinoClick(Sender: TObject);
    procedure chkOrigemClick(Sender: TObject);
    procedure edtDestinoChange(Sender: TObject);
    procedure edtOrigemChange(Sender: TObject);
    procedure rdgCidadesClick(Sender: TObject);
    procedure rdgTipoPassagemClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPassagemCliente: TFPassagemCliente;
  vgGuardaValorApagar: Integer;

implementation

uses
  uPagamento,
  uPassagemFacade,
  uTipoCidade,
  uTipoPassagem;
  
{$R *.dfm}

procedure TFPassagemCliente.btnCalcularClick(Sender: TObject);
var
  vPassaCidadeOrigem: TPassageFacade;
  vPassaCidadeDestino: TPassageFacade;
  vValorOrigem: Integer;
  vValorDestino: Integer;
  
begin
  vPassaCidadeOrigem := TPassageFacade.CreateCidade(TTipoCidadeType(TTipoCidade.toType(edtOrigem.Text)));
  vPassaCidadeDestino := TPassageFacade.CreateCidade(TTipoCidadeType(TTipoCidade.toType(edtDestino.Text)));

  try
    //tem que ter dois obj, senão ele não tras valores diferentes
    vValorOrigem := vPassaCidadeOrigem.GetValor(edtOrigem.Text);
    vValorDestino := vPassaCidadeDestino.GetValor(edtDestino.Text);
    edtValor.Text := IntToStr(vValorOrigem + vValorDestino);
  finally
    vPassaCidadeOrigem.Free;
    vPassaCidadeDestino.Free;
  end;

  if not(edtValor.Text = '') then
    rdgTipoPassagem.Enabled := True;

  vgGuardaValorApagar := StrToInt(edtValor.Text);
end;

procedure TFPassagemCliente.btnPagarClick(Sender: TObject);
begin
  FPassagemCliente.FormStyle := fsNormal;
  FPagamento := TFPagamento.Create(Application);
  FPagamento.Show;
  FPagamento.RecebeValor(edtValor.Text, edtOrigem.Text, edtDestino.Text);
end;

procedure TFPassagemCliente.chkDestinoClick(Sender: TObject);
begin
  if chkDestino.State = cbChecked then
  begin
    edtDestino.Enabled := True;
    rdgCidades.Enabled := True;
    //chkOrigem.State := cbUnchecked;
    Exit;
  end;

  edtDestino.Enabled := False;
  rdgCidades.Enabled := False;
end;

procedure TFPassagemCliente.chkOrigemClick(Sender: TObject);
begin
  if chkOrigem.State = cbChecked then
  begin
    edtOrigem.Enabled := True;
    rdgCidades.Enabled := True;
    //chkDestino.State := cbUnchecked;
    Exit;
  end;

  edtOrigem.Enabled := False;
  rdgCidades.Enabled := False;
end;

procedure TFPassagemCliente.edtDestinoChange(Sender: TObject);
begin
  if edtDestino.Text = edtOrigem.Text then
  begin
    edtDestino.Text := '';
    ShowMessage('Não é possivel inserir duas cidades iguais.');
  end;
end;

procedure TFPassagemCliente.edtOrigemChange(Sender: TObject);
begin
  if edtOrigem.Text = edtDestino.Text then
  begin
    edtOrigem.Text := '';
    ShowMessage('Não é possivel inserir duas cidades iguais.');
  end;
end;

procedure TFPassagemCliente.rdgCidadesClick(Sender: TObject);
var
  vPassaCidade: TPassageFacade;
begin
  vPassaCidade := TPassageFacade.CreateCidade(TTipoCidadeType(rdgCidades.ItemIndex));

  if (chkOrigem.State = cbChecked) and (chkDestino.State = cbChecked) then
  begin
    ShowMessage('Não é possivel adicionar duas cidades ao mesmo tempo. ' + sLineBreak
                +'Por favor selecione apenas um checkbox');
    Exit;
  end;

  if not(edtOrigem.Text = '') or not(edtDestino.Text = '') then
    btnCalcular.Enabled := True;
    
  try
    if chkOrigem.State = cbChecked then
    begin
      edtOrigem.Text := vPassaCidade.GetCidade(rdgCidades.ItemIndex);
    end;

    if chkDestino.State = cbChecked then
    begin
      edtDestino.Text := vPassaCidade.GetCidade(rdgCidades.ItemIndex);
    end;

  finally
    vPassaCidade.Free;
  end
end;

procedure TFPassagemCliente.rdgTipoPassagemClick(Sender: TObject);
var
  vPassaTipoPassagem: TPassageFacade;

begin
  if rdgTipoPassagem.ItemIndex <> -1 then
    btnPagar.Enabled := True;
    
  vPassaTipoPassagem := TPassageFacade.CreateTipoClassePassagem(TTipoPassagemType(rdgTipoPassagem.ItemIndex));

  try
    edtValor.Text := IntToStr(((vgGuardaValorApagar) + (vPassaTipoPassagem.GetTipoPassagem(rdgTipoPassagem.ItemIndex))));
  finally
    vPassaTipoPassagem.Free;
  end;
end;

end.
