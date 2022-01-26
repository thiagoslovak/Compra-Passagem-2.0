unit uTipoPassagem;

interface

type
  TTipoPassagemType = (
    tpCabinePrincipal = 0,
    tpEconomica = 1,
    tpExecutiva = 2,
    tpPrimeiraClasse = 3
  );

  TTipoPassagem = class
    class function toType(const AValue: string): TTipoPassagemType;
    class function toValue(const AEnum: TTipoPassagemType): string;
    class function toValueDef(const AEnum: TTipoPassagemType; const ADef: string = ''): string;
    class function toText(const AValue: string): string; overload;
    class function toText(const AEnum: TTipoPassagemType): string; overload;
    class function toListText: string;
    class function toListValue: string;
  end;

implementation

uses
  SysUtils,
  StrUtils;

const
  ARRAY_VALUE: Array[TTipoPassagemType] of String = (
    'Cabine Principal',
    'Economica',
    'Executiva',
    'Primeira Classe'
  );

  ARRAY_TEXT: Array[TTipoPassagemType] of String = (
    'Cabine Principal',
    'Economica',
    'Executiva',
    'Primeira Classe'
  );

class function TTipoPassagem.toListText: string;
var
 vEnum: TTipoPassagemType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoPassagemType) to High(TTipoPassagemType) do
  begin
    if vEnum <> Low(TTipoPassagemType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoPassagem.toText(vEnum));
  end;
end;

class function TTipoPassagem.toListValue: string;
var
 vEnum: TTipoPassagemType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoPassagemType) to High(TTipoPassagemType) do
  begin
    if vEnum <> Low(TTipoPassagemType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoPassagem.toValue(vEnum));
  end;
end;

class function TTipoPassagem.toText(const AEnum: TTipoPassagemType): string;
begin
  Result := ARRAY_TEXT[AEnum];
end;

class function TTipoPassagem.toText(const AValue: string): string;
begin
  Result := TTipoPassagem.toText(TTipoPassagem.toType(AValue));
end;

class function TTipoPassagem.toType(const AValue: string): TTipoPassagemType;
begin
  Result := TTipoPassagemType(AnsiIndexText(AValue,ARRAY_VALUE));
end;

class function TTipoPassagem.toValue(const AEnum: TTipoPassagemType): string;
begin
  Result := ARRAY_VALUE[AEnum];
end;

class function TTipoPassagem.toValueDef(const AEnum: TTipoPassagemType; const ADef: string): string;
begin
  if (AEnum < Low(TTipoPassagemType)) or
     (AEnum > High(TTipoPassagemType)) then
  begin
    Result := ADef;
    Exit;
  end;

  Result := ARRAY_VALUE[AEnum];
end;

end.

