unit uSaoPaulo;

interface

uses
  uCidade;
  
type
  TSaoPaulo = class(TInterfacedObject, ICidade)
  private
    Function Cidade(const ACidade: Integer): String;
    Function ValorCidade(const ACidade: String): Integer;
  end;
  
implementation

function TSaoPaulo.Cidade(const ACidade: Integer): String;
begin
  Result := 'São Paulo';
end;

function TSaoPaulo.ValorCidade(const ACidade: String): Integer;
begin
  Result := 300;
end;

end.
