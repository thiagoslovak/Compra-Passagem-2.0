unit uTipoCidade;

interface

type
  TTipoCidadeType = (
    tcMaringa = 0,
    tcCuritiba = 1,
    tcSaoPaulo = 2,
    tcManaus = 3
  );

  TTipoCidade = class
    class function toType(const AValue: string): TTipoCidadeType;
    class function toValue(const AEnum: TTipoCidadeType): string;
    class function toValueDef(const AEnum: TTipoCidadeType; const ADef: string = ''): string;
    class function toText(const AValue: string): string; overload;
    class function toText(const AEnum: TTipoCidadeType): string; overload;
    class function toListText: string;
    class function toListValue: string;
  end;

implementation

uses
  SysUtils,
  StrUtils;

const
  ARRAY_VALUE: Array[TTipoCidadeType] of String = (
    'Maringá',
    'Curitiba',
    'São Paulo',
    'Manaus'
  );

  ARRAY_TEXT: Array[TTipoCidadeType] of String = (
    'Maringá',
    'Curitiba',
    'São Paulo',
    'Manaus'
  );

class function TTipoCidade.toListText: string;
var
 vEnum: TTipoCidadeType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoCidadeType) to High(TTipoCidadeType) do
  begin
    if vEnum <> Low(TTipoCidadeType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoCidade.toText(vEnum));
  end;
end;

class function TTipoCidade.toListValue: string;
var
 vEnum: TTipoCidadeType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoCidadeType) to High(TTipoCidadeType) do
  begin
    if vEnum <> Low(TTipoCidadeType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoCidade.toValue(vEnum));
  end;
end;

class function TTipoCidade.toText(const AEnum: TTipoCidadeType): string;
begin
  Result := ARRAY_TEXT[AEnum];
end;

class function TTipoCidade.toText(const AValue: string): string;
begin
  Result := TTipoCidade.toText(TTipoCidade.toType(AValue));
end;

class function TTipoCidade.toType(const AValue: string): TTipoCidadeType;
begin
  Result := TTipoCidadeType(AnsiIndexText(AValue,ARRAY_VALUE));
end;

class function TTipoCidade.toValue(const AEnum: TTipoCidadeType): string;
begin
  Result := ARRAY_VALUE[AEnum];
end;

class function TTipoCidade.toValueDef(const AEnum: TTipoCidadeType; const ADef: string): string;
begin
  if (AEnum < Low(TTipoCidadeType)) or
     (AEnum > High(TTipoCidadeType)) then
  begin
    Result := ADef;
    Exit;
  end;

  Result := ARRAY_VALUE[AEnum];
end;

end.

