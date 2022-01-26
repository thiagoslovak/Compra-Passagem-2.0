unit uPrimeiraClasse;

interface

uses
  uTipoClassePassagem;

type
  TPrimeiraClasse = class(TInterfacedObject, ITipoClassePassagem)
  private
    Function TipoClassePassagem(const ATipoPassagem: Integer): Integer;
  end;

implementation

function TPrimeiraClasse.TipoClassePassagem(const ATipoPassagem: Integer): Integer;
begin
  Result := 1000;
end;

end.

