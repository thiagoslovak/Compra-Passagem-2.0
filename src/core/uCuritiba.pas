unit uCuritiba;

interface

uses
  uCidade;

type
  TCuritiba = class(TInterfacedObject, ICidade)
  private
    Function Cidade(const ACidade: Integer): String;
    Function ValorCidade(const ACidade: String): Integer;
  end;
  
implementation

function TCuritiba.Cidade(const ACidade: Integer): String;
begin
  Result := 'Curitiba';
end;

function TCuritiba.ValorCidade(const ACidade: String): Integer;
begin
  Result := 150;
end;

end.
