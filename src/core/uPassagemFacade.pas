unit uPassagemFacade;

interface

uses
  uCidade,
  uTipoCidade,
  uTipoPagamento,
  uFormaDePagamento,
  uTipoPassagem,
  uTipoClassePassagem;
  
type
  TPassageFacade = class

  private
    FCidade: ICidade;
    FFormaPagamento: IFormaDePagamento;
    FTipoClassePassagem: ITipoClassePassagem;

  public
    constructor CreateCidade(const ACidade: TTipoCidadeType);
    constructor CreateFormaPagamento(const AFormaPagamento: TTipoPagamentoType);
    constructor CreateTipoClassePassagem(const ATipoPassagem: TTipoPassagemType);

    function GetCidade(const ACidade: Integer): String;
    function GetValor(const ACidade:String): Integer;
    function GetTipoPassagem(const ATipoPassagem: Integer): Integer;
    procedure SetDadosPagamento(const AValorA, AValorB, AValorC: String);
    procedure SetValorOrigemDestino(const AValorA, AValorB, AValorC: String);
  end;

implementation

uses
  uFactoryCidades,
  uFactoryFormaPagamento,
  uValorAhPagar,
  uFactoryTipoClassePassagem;

constructor TPassageFacade.CreateCidade(const ACidade: TTipoCidadeType);
begin
  Self.FCidade := TFactoryCidades.GetInstance(ACidade);
end;

constructor TPassageFacade.CreateFormaPagamento(const AFormaPagamento: TTipoPagamentoType);
begin
  Self.FFormaPagamento := TFactoryFormaPagamento.GetInstance(AFormaPagamento);
end;

constructor TPassageFacade.CreateTipoClassePassagem(const ATipoPassagem: TTipoPassagemType);
begin
  Self.FTipoClassePassagem := TFactoryTipoClassePassagem.GetInstance(ATipoPassagem);
end;

function TPassageFacade.GetCidade(const ACidade: Integer): String;
begin
  Result := Self.FCidade.Cidade(ACidade);
end;

procedure TPassageFacade.SetDadosPagamento(const AValorA, AValorB, AValorC: String);
begin
  Self.FFormaPagamento.ImprimirDadosDoPagamento(AValorA, AValorB, AValorC);
end;

function TPassageFacade.GetValor(const ACidade:String): Integer;
begin
  Result := Self.FCidade.ValorCidade(ACidade);
end;

function TPassageFacade.GetTipoPassagem(const ATipoPassagem: Integer): Integer;
begin
  Result := Self.FTipoClassePassagem.TipoClassePassagem(ATipoPassagem);
end;

procedure TPassageFacade.SetValorOrigemDestino(const AValorA, AValorB, AValorC: String);
var
  vPassaValores: TValorAhPagar;
begin
  vPassaValores := TValorAhPagar.Create();
  vPassaValores.ImprimirDadosDoPagamento(AValorA, AValorB, AValorC);

  vPassaValores.Free;
end;

end.
