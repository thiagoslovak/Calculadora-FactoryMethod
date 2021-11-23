object FCalculadora: TFCalculadora
  Left = 470
  Top = 135
  Width = 374
  Height = 232
  Caption = 'Calculadora'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btn00: TBitBtn
    Left = 8
    Top = 160
    Width = 75
    Height = 25
    Caption = '0'
    TabOrder = 0
    OnClick = btn00Click
  end
  object btn01: TBitBtn
    Left = 8
    Top = 120
    Width = 75
    Height = 25
    Caption = '1'
    TabOrder = 1
    OnClick = btn01Click
  end
  object btn02: TBitBtn
    Left = 96
    Top = 120
    Width = 75
    Height = 25
    Caption = '2'
    TabOrder = 2
    OnClick = btn02Click
  end
  object btn03: TBitBtn
    Left = 184
    Top = 120
    Width = 75
    Height = 25
    Caption = '3'
    TabOrder = 3
    OnClick = btn03Click
  end
  object btn04: TBitBtn
    Left = 8
    Top = 80
    Width = 75
    Height = 25
    Caption = '4'
    TabOrder = 4
    OnClick = btn04Click
  end
  object btn05: TBitBtn
    Left = 96
    Top = 80
    Width = 75
    Height = 25
    Caption = '5'
    TabOrder = 5
    OnClick = btn05Click
  end
  object btn06: TBitBtn
    Left = 184
    Top = 80
    Width = 75
    Height = 25
    Caption = '6'
    TabOrder = 6
    OnClick = btn06Click
  end
  object btn07: TBitBtn
    Left = 8
    Top = 40
    Width = 75
    Height = 25
    Caption = '7'
    TabOrder = 7
    OnClick = btn07Click
  end
  object btn08: TBitBtn
    Left = 96
    Top = 40
    Width = 75
    Height = 25
    Caption = '8'
    TabOrder = 8
    OnClick = btn08Click
  end
  object btn09: TBitBtn
    Left = 184
    Top = 40
    Width = 75
    Height = 25
    Caption = '9'
    TabOrder = 9
    OnClick = btn09Click
  end
  object EdtVisor: TEdit
    Left = 8
    Top = 8
    Width = 339
    Height = 21
    TabOrder = 10
  end
  object btnClear: TBitBtn
    Left = 96
    Top = 160
    Width = 75
    Height = 25
    Caption = 'C'
    TabOrder = 11
    OnClick = btnClearClick
  end
  object btnIgual: TBitBtn
    Left = 184
    Top = 160
    Width = 75
    Height = 25
    Caption = '='
    TabOrder = 12
    OnClick = btnIgualClick
  end
  object btnMenos: TBitBtn
    Left = 272
    Top = 120
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 13
    OnClick = btnMenosClick
  end
  object btnMultiplicacao: TBitBtn
    Left = 272
    Top = 80
    Width = 75
    Height = 25
    Caption = 'x'
    TabOrder = 14
    OnClick = btnMultiplicacaoClick
  end
  object btnDivisao: TBitBtn
    Left = 272
    Top = 43
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 15
    OnClick = btnDivisaoClick
  end
  object btnMais: TBitBtn
    Left = 272
    Top = 160
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 16
    OnClick = btnMaisClick
  end
end
