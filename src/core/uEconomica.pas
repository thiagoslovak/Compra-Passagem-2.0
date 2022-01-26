unit uEconomica;

interface

uses
  uTipoClassePassagem;

type
  TEconomica = class(TInterfacedObject, ITipoClassePassagem)
  private
    Function TipoClassePassagem(const ATipoPassagem: Integer): Integer;
  end;

implementation

{ TEconomica }

function TEconomica.TipoClassePassagem(const ATipoPassagem: Integer): Integer;
begin
  Result := 50;
end;

end.

