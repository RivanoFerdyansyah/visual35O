object Form2: TForm2
  Left = 739
  Top = 67
  Width = 448
  Height = 418
  Caption = 'Menu Utama'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 120
    Top = 32
    Width = 198
    Height = 39
    Caption = 'MENU UTAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 128
    Top = 96
    Width = 75
    Height = 25
    Caption = 'USER'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 248
    Top = 96
    Width = 75
    Height = 25
    Caption = 'PEGAWAI'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 128
    Top = 144
    Width = 75
    Height = 25
    Caption = 'CUSTOMER'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 248
    Top = 144
    Width = 75
    Height = 25
    Caption = 'HANGGAR'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 128
    Top = 192
    Width = 75
    Height = 25
    Caption = 'PESAWAT'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 248
    Top = 192
    Width = 75
    Height = 25
    Caption = 'SEWA'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 128
    Top = 240
    Width = 75
    Height = 25
    Caption = 'TRANSAKSI'
    TabOrder = 6
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 248
    Top = 240
    Width = 75
    Height = 25
    Caption = 'LOG OUT'
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 192
    Top = 288
    Width = 75
    Height = 25
    Caption = 'EXIT'
    TabOrder = 8
    OnClick = Button9Click
  end
end
