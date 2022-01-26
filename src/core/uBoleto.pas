unit uBoleto;

interface

uses
  Dialogs,
  uValorAhPagar;
  
type
  TBoleto = class(TValorAhPagar)
  protected
    procedure ImprimirDadosDoPagamento(const AValorA, AValorB, AValorC: String);override;
  end;

implementation

procedure TBoleto.ImprimirDadosDoPagamento(const AValorA, AValorB, AValorC: String);
begin
  //inherited;

  ShowMessage('Boleto de: '+AValorA + sLineBreak
             + 'CPF: ' + AValorB + sLineBreak
             + 'Com Valor de: ' + AValorC);

  ShowMessage('Boleto Pago!');
end;

end.
