unit uCabinePrincipal;

interface

uses
  uTipoClassePassagem;

type
  TCabinePrincipal = class(TInterfacedObject, ITipoClassePassagem)
  private
    Function TipoClassePassagem(const ATipoPassagem: Integer): Integer;
  end;

implementation

function TCabinePrincipal.TipoClassePassagem(const ATipoPassagem: Integer): Integer;
begin
  Result := 100;
end;

end.
 