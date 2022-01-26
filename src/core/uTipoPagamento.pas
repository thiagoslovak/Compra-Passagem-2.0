unit uTipoPagamento;

interface

type
  TTipoPagamentoType = (
    tpBoleto = 0,
    tpTransferencia = 1,
    tpCartao = 2
  );

  TTipoPagamento = class
    class function toType(const AValue: string): TTipoPagamentoType;
    class function toValue(const AEnum: TTipoPagamentoType): string;
    class function toValueDef(const AEnum: TTipoPagamentoType; const ADef: string = ''): string;
    class function toText(const AValue: string): string; overload;
    class function toText(const AEnum: TTipoPagamentoType): string; overload;
    class function toListText: string;
    class function toListValue: string;
  end;

implementation

uses
  SysUtils,
  StrUtils;

const
  ARRAY_VALUE: Array[TTipoPagamentoType] of String = (
    'Boleto',
    'Transferência',
    'Cartão'
  );

  ARRAY_TEXT: Array[TTipoPagamentoType] of String = (
    'Boleto',
    'Transferência',
    'Cartão'
  );

class function TTipoPagamento.toListText: string;
var
 vEnum: TTipoPagamentoType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoPagamentoType) to High(TTipoPagamentoType) do
  begin
    if vEnum <> Low(TTipoPagamentoType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoPagamento.toText(vEnum));
  end;
end;

class function TTipoPagamento.toListValue: string;
var
 vEnum: TTipoPagamentoType;
begin
  Result := EmptyStr;

  for vEnum := Low(TTipoPagamentoType) to High(TTipoPagamentoType) do
  begin
    if vEnum <> Low(TTipoPagamentoType) then
      Result := Result + sLineBreak;

    Result := Concat(Result, TTipoPagamento.toValue(vEnum));
  end;
end;

class function TTipoPagamento.toText(const AEnum: TTipoPagamentoType): string;
begin
  Result := ARRAY_TEXT[AEnum];
end;

class function TTipoPagamento.toText(const AValue: string): string;
begin
  Result := TTipoPagamento.toText(TTipoPagamento.toType(AValue));
end;

class function TTipoPagamento.toType(const AValue: string): TTipoPagamentoType;
begin
  Result := TTipoPagamentoType(AnsiIndexText(AValue,ARRAY_VALUE));
end;

class function TTipoPagamento.toValue(const AEnum: TTipoPagamentoType): string;
begin
  Result := ARRAY_VALUE[AEnum];
end;

class function TTipoPagamento.toValueDef(const AEnum: TTipoPagamentoType; const ADef: string): string;
begin
  if (AEnum < Low(TTipoPagamentoType)) or
     (AEnum > High(TTipoPagamentoType)) then
  begin
    Result := ADef;
    Exit;
  end;

  Result := ARRAY_VALUE[AEnum];
end;

end.

