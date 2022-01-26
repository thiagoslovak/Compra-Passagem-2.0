unit uMaringa;

interface

uses
  uCidade;
  
type
  TMaringa = class(TInterfacedObject, ICidade)
  private
    function Cidade(const ACidade: Integer): String;
    function ValorCidade(const ACidade: String): Integer;
  end;
  
implementation

function TMaringa.Cidade(const ACidade: Integer): String;
begin
  Result := 'Maringá';
end;

function TMaringa.ValorCidade(const ACidade: String): Integer;
begin
  Result := 200;
end;

end.
