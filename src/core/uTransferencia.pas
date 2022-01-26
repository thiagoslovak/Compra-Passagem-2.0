unit uTransferencia;

interface

uses
  Dialogs,
  uValorAhPagar;

type
  TTransferencia = class(TValorAhPagar)
  protected
    procedure ImprimirDadosDoPagamento(const AValorA, AValorB, AValorC: String);override;
  end;

implementation

procedure TTransferencia.ImprimirDadosDoPagamento(const AValorA, AValorB, AValorC: String);
begin
  //inherited;

  ShowMessage('Ag�ncia: '+AValorA + sLineBreak
             + 'Conta: ' + AValorB + sLineBreak
             + 'Com Valor de: ' + AValorC);

  ShowMessage('Transfer�ncia Efetuada!');

end;

end.

