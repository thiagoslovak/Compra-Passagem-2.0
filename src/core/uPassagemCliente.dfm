object FPassagemCliente: TFPassagemCliente
  Left = 505
  Top = 206
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Comprar Passagem'
  ClientHeight = 243
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPassagem: TAdvPanel
    Left = 0
    Top = 0
    Width = 613
    Height = 243
    Align = alClient
    TabOrder = 0
    UseDockManager = True
    Version = '2.3.0.7'
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'MS Sans Serif'
    Caption.Font.Style = []
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 200
    object lblOrigem: TLabel
      Left = 288
      Top = 24
      Width = 36
      Height = 13
      Caption = 'Origem:'
    end
    object lblDestino: TLabel
      Left = 287
      Top = 99
      Width = 39
      Height = 13
      Caption = 'Destino:'
    end
    object lblValor: TLabel
      Left = 49
      Top = 200
      Width = 78
      Height = 13
      Caption = 'Valor passagem:'
    end
    object edtOrigem: TCurvyEdit
      Left = 218
      Top = 38
      Width = 177
      Height = 24
      TabOrder = 0
      TabStop = False
      Version = '1.1.1.9'
      Controls = <>
      Enabled = False
      ReadOnly = True
      OnChange = edtOrigemChange
    end
    object edtDestino: TCurvyEdit
      Left = 218
      Top = 113
      Width = 177
      Height = 24
      TabOrder = 1
      TabStop = False
      Version = '1.1.1.9'
      Controls = <>
      Enabled = False
      ReadOnly = True
      OnChange = edtDestinoChange
    end
    object edtValor: TCurvyEdit
      Left = 0
      Top = 216
      Width = 177
      Height = 24
      TabOrder = 2
      TabStop = False
      Version = '1.1.1.9'
      Controls = <>
      ReadOnly = True
    end
    object btnCalcular: TAdvGlowButton
      Left = 233
      Top = 216
      Width = 148
      Height = 24
      Caption = 'Calcular'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      OnClick = btnCalcularClick
      Appearance.BorderColorFocused = 16367008
      Appearance.ColorChecked = 16367008
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 16367008
      Appearance.ColorDisabledTo = 16367008
      Appearance.ColorDown = 16367008
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16367008
      Appearance.ColorHotTo = 16367008
      Appearance.ColorMirror = 16367008
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16367008
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16367008
      Appearance.ColorMirrorChecked = 16367008
      Appearance.ColorMirrorCheckedTo = 16367008
      Appearance.ColorMirrorDisabled = 16367008
      Appearance.ColorMirrorDisabledTo = 16367008
      Enabled = False
    end
    object btnPagar: TAdvGlowButton
      Left = 444
      Top = 216
      Width = 148
      Height = 24
      Caption = 'Pagar'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 4
      OnClick = btnPagarClick
      Appearance.BorderColorFocused = 16367008
      Appearance.ColorChecked = 16367008
      Appearance.ColorCheckedTo = 16367008
      Appearance.ColorDisabled = 16367008
      Appearance.ColorDisabledTo = 16367008
      Appearance.ColorDown = 16367008
      Appearance.ColorDownTo = 16367008
      Appearance.ColorHot = 16367008
      Appearance.ColorHotTo = 16367008
      Appearance.ColorMirror = 16367008
      Appearance.ColorMirrorHot = 16107693
      Appearance.ColorMirrorHotTo = 16367008
      Appearance.ColorMirrorDown = 16102556
      Appearance.ColorMirrorDownTo = 16367008
      Appearance.ColorMirrorChecked = 16367008
      Appearance.ColorMirrorCheckedTo = 16367008
      Appearance.ColorMirrorDisabled = 16367008
      Appearance.ColorMirrorDisabledTo = 16367008
      Enabled = False
    end
    object rdgCidades: TRadioGroup
      Left = 24
      Top = 24
      Width = 118
      Height = 113
      Caption = 'Cidades:'
      Enabled = False
      Items.Strings = (
        'Maring'#225
        'Curitiba'
        'S'#227'o Paulo'
        'Manaus')
      TabOrder = 5
      OnClick = rdgCidadesClick
    end
    object chkDestino: TCheckBox
      Left = 160
      Top = 89
      Width = 105
      Height = 17
      Caption = 'Adicionar destino'
      TabOrder = 6
      OnClick = chkDestinoClick
    end
    object chkOrigem: TCheckBox
      Left = 160
      Top = 16
      Width = 105
      Height = 17
      Caption = 'Adicionar origem'
      TabOrder = 7
      OnClick = chkOrigemClick
    end
    object rdgTipoPassagem: TRadioGroup
      Left = 448
      Top = 24
      Width = 118
      Height = 113
      Caption = 'Tipo passagem:'
      Enabled = False
      Items.Strings = (
        'Cabine Principal'
        'Economica'
        'Executiva'
        'Primeira Classe')
      TabOrder = 8
      OnClick = rdgTipoPassagemClick
    end
  end
end
