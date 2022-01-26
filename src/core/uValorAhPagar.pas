unit uValorAhPagar;

interface

uses
  Dialogs,
  SysUtils,
  uFormaDePagamento,
  Classes;
  
type
  TValorAhPagar = class(TInterfacedObject, IFormaDePagamento)
  public
    procedure ImprimirDadosDoPagamento(const AValorA, AValorB, AValorC: String);virtual;
  end;

implementation

procedure TValorAhPagar.ImprimirDadosDoPagamento(const AValorA, AValorB, AValorC: String);
begin
  ShowMessage('Valor a pagar: ' + AValorA + sLineBreak
             + 'Origem: '+ AValorB + sLineBreak
             + 'Destino: '+ AValorC);
end;

end.
 