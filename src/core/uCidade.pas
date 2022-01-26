unit uCidade;

interface

type
  ICidade = interface
    ['{88072DFF-E64E-4884-8974-5BE8E4DBFEA5}']
    Function Cidade(const ACidade: Integer): string;
    Function ValorCidade(const ACidade: String): Integer;
  end;

implementation

end.
