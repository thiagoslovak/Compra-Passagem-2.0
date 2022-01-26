unit uFactoryFormaPagamento;

interface

uses
  uFormaDePagamento,
  uTipoPagamento;
  
type
  TFactoryFormaPagamento = class
    class function GetInstance(const AFormaPagamento: TTipoPagamentoType): IFormaDePagamento;
  end;

implementation

uses
  uBoleto,
  uTransferencia,
  uCartao;
  
class function TFactoryFormaPagamento.GetInstance(const AFormaPagamento: TTipoPagamentoType): IFormaDePagamento;
begin
  case AFormaPagamento of
    tpBoleto: Result := TBoleto.Create;
    tpTransferencia: Result := TTransferencia.Create;
    tpCartao: Result := TCartao.Create;
  end;
end;

end.
 