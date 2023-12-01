object Form5: TForm5
  Left = 278
  Top = 186
  Width = 1026
  Height = 480
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 24
    Width = 185
    Height = 23
    Caption = 'HALAMAN CUSTOMER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 80
    Width = 19
    Height = 16
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 112
    Width = 34
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 144
    Width = 86
    Height = 16
    Caption = 'JENIS KELAMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 80
    Top = 176
    Width = 36
    Height = 16
    Caption = 'NO HP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 80
    Top = 208
    Width = 48
    Height = 16
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 80
    Top = 240
    Width = 35
    Height = 16
    Caption = 'EMAIL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object dbgrd1: TDBGrid
    Left = 320
    Top = 64
    Width = 481
    Height = 169
    DataSource = ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nik'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jenis kelamin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'No HP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 88
    Top = 288
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 288
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 280
    Top = 288
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
  end
  object Button4: TButton
    Left = 376
    Top = 288
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
  end
  object Button5: TButton
    Left = 472
    Top = 288
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
  end
  object cbb1: TComboBox
    Left = 176
    Top = 144
    Width = 121
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'Manager'
      'Supervisor'
      'Staff')
  end
  object Button6: TButton
    Left = 568
    Top = 288
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 8
  end
  object Edit2: TEdit
    Left = 176
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit3: TEdit
    Left = 176
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit4: TEdit
    Left = 176
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit5: TEdit
    Left = 176
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 12
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
    Top = 328
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from customer'
      ''
      '')
    Params = <>
    Left = 144
    Top = 328
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 184
    Top = 328
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 240
    Top = 328
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
    Top = 328
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
