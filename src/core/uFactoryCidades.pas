unit uFactoryCidades;

interface

uses
  uCidade,
  uTipoCidade;
  
type
  TFactoryCidades = class
      class function GetInstance(const ACidade: TTipoCidadeType): ICidade;
  end;

implementation

uses
  uMaringa,
  uCuritiba,
  uSaoPaulo,
  uManaus;
  
class function TFactoryCidades.GetInstance(const ACidade: TTipoCidadeType): ICidade;
begin
  case ACidade of
    tcMaringa: Result := TMaringa.Create;
    tcCuritiba: Result := TCuritiba.Create;
    tcSaoPaulo: Result := TSaoPaulo.Create;
    tcManaus: Result :=  TManaus.Create;
  end;
end;

end.
