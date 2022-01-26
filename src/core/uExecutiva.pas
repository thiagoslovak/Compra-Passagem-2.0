unit uExecutiva;

interface

uses
  uTipoClassePassagem;

type
  TExecutiva = class(TInterfacedObject, ITipoClassePassagem)
  private
    Function TipoClassePassagem(const ATipoPassagem: Integer): Integer;
  end;

implementation

function TExecutiva.TipoClassePassagem(const ATipoPassagem: Integer): Integer;
begin
  Result := 300;
end;

end.

