object Form8: TForm8
  Left = 341
  Top = 144
  Width = 928
  Height = 480
  Caption = 'Sewa'
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
    Width = 139
    Height = 23
    Caption = 'HALAMAN SEWA'
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
    Width = 74
    Height = 16
    Caption = 'PESAWAT ID'
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
    Width = 82
    Height = 16
    Caption = 'CUSTOMER ID'
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
  object Label5: TLabel
    Left = 56
    Top = 176
    Width = 31
    Height = 16
    Caption = 'RUTE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 56
    Top = 240
    Width = 43
    Height = 16
    Caption = 'WAKTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 56
    Top = 272
    Width = 79
    Height = 16
    Caption = 'HARGA SEWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 56
    Top = 304
    Width = 120
    Height = 16
    Caption = 'JENIS PENERBANGAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 56
    Top = 336
    Width = 48
    Height = 16
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 56
    Top = 208
    Width = 93
    Height = 16
    Caption = 'TANGGAL SEWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 379
    Top = 64
    Width = 425
    Height = 169
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object Button1: TButton
    Left = 88
    Top = 368
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 368
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 368
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 376
    Top = 368
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 472
    Top = 368
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 5
    OnClick = Button5Click
  end
  object cbb1: TComboBox
    Left = 192
    Top = 80
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 6
  end
  object Button6: TButton
    Left = 568
    Top = 368
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 7
  end
  object Edit1: TEdit
    Left = 192
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object cbb2: TComboBox
    Left = 192
    Top = 112
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 9
  end
  object cbb3: TComboBox
    Left = 192
    Top = 144
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 10
  end
  object Edit2: TEdit
    Left = 192
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit3: TEdit
    Left = 192
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object cbb4: TComboBox
    Left = 192
    Top = 304
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 13
  end
  object cbb5: TComboBox
    Left = 192
    Top = 336
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 14
  end
  object Edit4: TEdit
    Left = 192
    Top = 272
    Width = 121
    Height = 21
    TabOrder = 15
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
    Left = 384
    Top = 240
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from sewa'
      ''
      '')
    Params = <>
    Left = 424
    Top = 240
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 464
    Top = 240
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 520
    Top = 240
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
    Left = 584
    Top = 240
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pesawat')
    Params = <>
    Left = 640
    Top = 240
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from customer')
    Params = <>
    Left = 680
    Top = 240
  end
  object zqry4: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pegawai')
    Params = <>
    Left = 720
    Top = 240
  end
end
