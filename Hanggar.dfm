object Form6: TForm6
  Left = 189
  Top = 190
  Width = 928
  Height = 480
  Caption = 'Hanggar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 175
    Height = 23
    Caption = 'HALAMAN HANGGAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 80
    Width = 70
    Height = 16
    Caption = 'PEGAWAI ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 56
    Top = 112
    Width = 94
    Height = 16
    Caption = 'NAMA HANGGAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 56
    Top = 144
    Width = 102
    Height = 16
    Caption = 'PARKIR HANGGAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 56
    Top = 176
    Width = 110
    Height = 16
    Caption = 'KONDISI PESAWAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 176
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object dbgrd1: TDBGrid
    Left = 320
    Top = 64
    Width = 425
    Height = 169
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object Button1: TButton
    Left = 88
    Top = 248
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 248
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 248
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 376
    Top = 248
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 472
    Top = 248
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = Button5Click
  end
  object cbb1: TComboBox
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object Button6: TButton
    Left = 568
    Top = 248
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 8
  end
  object Edit2: TEdit
    Left = 176
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object cbb2: TComboBox
    Left = 176
    Top = 176
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      'Perbaikan'
      'Layak Terbang')
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'Visual3'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'E:\Kuliah\Visual 3 5O\privatejet\libmysql.dll'
    Left = 104
    Top = 288
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from hanggar'
      ''
      '')
    Params = <>
    Left = 144
    Top = 288
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 184
    Top = 288
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 240
    Top = 288
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45261.788399004630000000
    ReportOptions.LastChange = 45261.788399004630000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 304
    Top = 288
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pegawai')
    Params = <>
    Left = 144
    Top = 344
  end
end