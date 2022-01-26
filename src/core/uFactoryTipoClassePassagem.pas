unit uFactoryTipoClassePassagem;

interface

uses
  uTipoClassePassagem,
  uTipoPassagem;
  
type
  TFactoryTipoClassePassagem = class
    class function GetInstance(const ATipoPassagem: TTipoPassagemType): ITipoClassePassagem;
  end;
  
implementation

uses
  uCabinePrincipal,
  uEconomica,
  uExecutiva,
  uPrimeiraClasse;

class function TFactoryTipoClassePassagem.GetInstance(const ATipoPassagem: TTipoPassagemType): ITipoClassePassagem;
begin
  case ATipoPassagem of
    tpCabinePrincipal: Result := TCabinePrincipal.Create;
    tpEconomica: Result := TEconomica.Create;
    tpExecutiva: Result :=  TExecutiva.Create;
    tpPrimeiraClasse: Result := TPrimeiraClasse.Create;
  end;
end;

end.
 