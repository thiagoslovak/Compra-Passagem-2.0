unit uCartao;

interface

uses
  Dialogs,
  uValorAhPagar;

type
  TCartao = class(TValorAhPagar)
  protected
    procedure ImprimirDadosDoPagamento(const AValorA, AValorB, AValorC: String);override;
  end;

implementation

procedure TCartao.ImprimirDadosDoPagamento(const AValorA, AValorB, AValorC: String);
begin
  //inherited;
  
  ShowMessage('Nome: '+AValorA + sLineBreak
             + 'Cartão: ' + AValorB + sLineBreak
             + 'Com Valor de: ' + AValorC);

  ShowMessage('Compra Efetuada!');
end;

end.

