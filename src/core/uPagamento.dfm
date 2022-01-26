object FPagamento: TFPagamento
  Left = 467
  Top = 228
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pagamento'
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
  object pnlPagamento: TAdvPanel
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
    FullHeight = 243
    object lblValor: TLabel
      Left = 49
      Top = 200
      Width = 93
      Height = 13
      Caption = 'Valor da passagem:'
    end
    object lblNomePessoa: TLabel
      Left = 8
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Nome:'
      Visible = False
    end
    object lblCPF: TLabel
      Left = 10
      Top = 65
      Width = 23
      Height = 13
      Caption = 'CPF:'
      Visible = False
    end
    object lblAgencia: TLabel
      Left = 416
      Top = 16
      Width = 42
      Height = 13
      Caption = 'Ag'#234'ncia:'
      Visible = False
    end
    object lblConta: TLabel
      Left = 416
      Top = 65
      Width = 31
      Height = 13
      Caption = 'Conta:'
      Visible = False
    end
    object lblNomeCartao: TLabel
      Left = 226
      Top = 156
      Width = 31
      Height = 13
      Caption = 'Nome:'
      Visible = False
    end
    object lblCartao: TLabel
      Left = 226
      Top = 201
      Width = 34
      Height = 13
      Caption = 'Cart'#227'o:'
      Visible = False
    end
    object edtValor: TCurvyEdit
      Left = 0
      Top = 216
      Width = 177
      Height = 24
      TabOrder = 0
      TabStop = False
      Version = '1.1.1.9'
      Controls = <>
      ReadOnly = True
    end
    object edtNome: TCurvyEdit
      Left = 10
      Top = 30
      Width = 177
      Height = 24
      TabOrder = 1
      TabStop = False
      Visible = False
      Version = '1.1.1.9'
      Controls = <>
    end
    object edtCPF: TCurvyEdit
      Left = 10
      Top = 80
      Width = 177
      Height = 24
      TabOrder = 2
      TabStop = False
      Visible = False
      Version = '1.1.1.9'
      Controls = <>
      OnEnter = edtCPFEnter
    end
    object btnPagarBoleto: TAdvGlowButton
      Left = 24
      Top = 136
      Width = 148
      Height = 24
      Caption = 'Pagar com boleto'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 3
      Visible = False
      OnClick = btnPagarBoletoClick
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
    end
    object edtAgencia: TCurvyEdit
      Left = 416
      Top = 30
      Width = 177
      Height = 24
      TabOrder = 4
      TabStop = False
      Visible = False
      Version = '1.1.1.9'
      Controls = <>
    end
    object edtConta: TCurvyEdit
      Left = 416
      Top = 80
      Width = 177
      Height = 24
      TabOrder = 5
      TabStop = False
      Visible = False
      Version = '1.1.1.9'
      Controls = <>
    end
    object btnTransferir: TAdvGlowButton
      Left = 431
      Top = 136
      Width = 148
      Height = 24
      Caption = 'Transferir'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 6
      Visible = False
      OnClick = btnTransferirClick
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
    end
    object edtCartao: TCurvyEdit
      Left = 224
      Top = 216
      Width = 177
      Height = 24
      TabOrder = 7
      TabStop = False
      Visible = False
      Version = '1.1.1.9'
      Controls = <>
    end
    object btnPagarCartao: TAdvGlowButton
      Left = 431
      Top = 216
      Width = 148
      Height = 24
      Caption = 'Pagar com cart'#227'o'
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      TabOrder = 8
      Visible = False
      OnClick = btnPagarCartaoClick
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
    end
    object rdgMeioPagamento: TRadioGroup
      Left = 247
      Top = 16
      Width = 118
      Height = 113
      Caption = 'Forma de pagamento:'
      Items.Strings = (
        'Boleto'
        'Transfer'#234'ncia'
        'Cart'#227'o')
      TabOrder = 9
      OnClick = rdgMeioPagamentoClick
    end
    object edtNomePessoa: TCurvyEdit
      Left = 10
      Top = 30
      Width = 177
      Height = 24
      TabOrder = 10
      TabStop = False
      Visible = False
      Version = '1.1.1.9'
      Controls = <>
    end
    object edtNomePessoaCartao: TCurvyEdit
      Left = 224
      Top = 171
      Width = 177
      Height = 24
      TabOrder = 11
      TabStop = False
      Visible = False
      Version = '1.1.1.9'
      Controls = <>
    end
  end
end
