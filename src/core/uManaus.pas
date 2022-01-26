unit uManaus;

interface

uses
  uCidade;
  
type
  TManaus = class(TInterfacedObject, ICidade)
    private
      Function Cidade(const ACidade: Integer): String;
      Function ValorCidade(const ACidade: String): Integer;
  end;
  
implementation

function TManaus.Cidade(const ACidade: Integer): String;
begin
  Result := 'Manaus';
end;

function TManaus.ValorCidade(const ACidade: String): Integer;
begin
  Result := 500;
end;

end.
