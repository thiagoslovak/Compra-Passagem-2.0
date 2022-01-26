unit uPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvGroupBox, AdvOfficeButtons, DBAdvOfficeButtons,
  ExtCtrls, AdvPanel, CurvyControls, AdvGlowButton, uTipoCidade, Mask;

type
  TFPagamento = class(TForm)
    pnlPagamento: TAdvPanel;
    edtValor: TCurvyEdit;
    lblValor: TLabel;
    edtNome: TCurvyEdit;
    edtCPF: TCurvyEdit;
    lblNomePessoa: TLabel;
    lblCPF: TLabel;
    btnPagarBoleto: TAdvGlowButton;
    edtAgencia: TCurvyEdit;
    lblAgencia: TLabel;
    edtConta: TCurvyEdit;
    lblConta: TLabel;
    btnTransferir: TAdvGlowButton;
    edtCartao: TCurvyEdit;
    lblNomeCartao: TLabel;
    btnPagarCartao: TAdvGlowButton;
    rdgMeioPagamento: TRadioGroup;
    edtNomePessoa: TCurvyEdit;
    lblCartao: TLabel;
    edtNomePessoaCartao: TCurvyEdit;
    procedure btnPagarBoletoClick(Sender: TObject);
    procedure btnPagarCartaoClick(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure edtCPFEnter(Sender: TObject);
    procedure rdgMeioPagamentoClick(Sender: TObject);

    procedure RecebeValor(const AValorA, AValorB, AValorC: String);
  end;

var
  FPagamento: TFPagamento;

implementation

uses
  uPassagemFacade,
  uTipoPagamento;

{$R *.dfm}

procedure TFPagamento.btnPagarBoletoClick(Sender: TObject);
var
  vMeioPagamento: TPassageFacade;
begin
  vMeioPagamento := TPassageFacade.CreateFormaPagamento(TTipoPagamentoType(rdgMeioPagamento.ItemIndex));

  try
    vMeioPagamento.SetDadosPagamento(edtNome.Text, edtCPF.Text, edtValor.Text);
  finally
    vMeioPagamento.Free;
  end;
end;

procedure TFPagamento.btnPagarCartaoClick(Sender: TObject);
var
  vMeioPagamento: TPassageFacade;
begin
  vMeioPagamento := TPassageFacade.CreateFormaPagamento(TTipoPagamentoType(rdgMeioPagamento.ItemIndex));
   
  try
    vMeioPagamento.SetDadosPagamento(edtNomePessoaCartao.Text, edtCartao.Text, edtValor.Text);
  finally
    vMeioPagamento.Free;
  end;
end;

procedure TFPagamento.btnTransferirClick(Sender: TObject);
var
  vMeioPagamento: TPassageFacade;
begin
  vMeioPagamento := TPassageFacade.CreateFormaPagamento(TTipoPagamentoType(rdgMeioPagamento.ItemIndex));

  try
    vMeioPagamento.SetDadosPagamento(edtAgencia.Text, edtConta.Text, edtValor.Text);
  finally
    vMeioPagamento.Free;
  end;
end;

procedure TFPagamento.edtCPFEnter(Sender: TObject);
begin
  //Arrumar a mascara
  //edtCPF.Text := FormatFloat('000.000.000-00', StrToFloat(edtCPF.Text));
end;

procedure TFPagamento.rdgMeioPagamentoClick(Sender: TObject);
begin
  if rdgMeioPagamento.ItemIndex = 0 then
  begin
    lblNomePessoa.Visible := True;
    edtNome.Visible := True;
    lblCPF.Visible := True;
    edtCPF.Visible := True;
    btnPagarBoleto.Visible := True;

    lblAgencia.Visible := False;
    edtAgencia.Visible := False;
    lblConta.Visible := False;
    edtConta.Visible := False;
    btnTransferir.Visible := False;
    
    lblNomeCartao.Visible := False;
    edtNomePessoaCartao.Visible := False;
    lblCartao.Visible := False;
    edtCartao.Visible := False;
    btnPagarCartao.Visible := False;
  end;

  if rdgMeioPagamento.ItemIndex = 1 then
  begin
    lblAgencia.Visible := True;
    edtAgencia.Visible := True;
    lblConta.Visible := True;
    edtConta.Visible := True;
    btnTransferir.Visible := True;

    lblNomePessoa.Visible := False;
    edtNome.Visible := False;
    lblCPF.Visible := False;
    edtCPF.Visible := False;
    btnPagarBoleto.Visible := False;

    lblNomeCartao.Visible := False;
    edtNomePessoaCartao.Visible := False;
    lblCartao.Visible := False;
    edtCartao.Visible := False;
    btnPagarCartao.Visible := False;
  end;

  if rdgMeioPagamento.ItemIndex = 2 then
  begin
    lblNomeCartao.Visible := True;
    edtNomePessoaCartao.Visible := True;
    lblCartao.Visible := True;
    edtCartao.Visible := True;
    btnPagarCartao.Visible := True;

    lblAgencia.Visible := False;
    edtAgencia.Visible := False;
    lblConta.Visible := False;
    edtConta.Visible := False;
    btnTransferir.Visible := False;

    lblNomePessoa.Visible := False;
    edtNome.Visible := False;
    lblCPF.Visible := False;
    edtCPF.Visible := False;
    btnPagarBoleto.Visible := False;
  end;
end;

procedure TFPagamento.RecebeValor(const AValorA, AValorB, AValorC: String);
var
  vPassaValor: TPassageFacade;
begin
  edtValor.Text := AValorA;
  vPassaValor := TPassageFacade.Create;
  vPassaValor.SetValorOrigemDestino(AValorA, AValorB, AValorC);
end;

end.
