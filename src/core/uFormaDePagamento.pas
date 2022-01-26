unit uFormaDePagamento;

interface

type
  IFormaDePagamento = interface
    ['{A2565185-FB6E-41B1-AAD9-AC5CBF51F901}']
    procedure ImprimirDadosDoPagamento(const AValorA, AValorB, AValorC: String);
  end;

implementation

end.

