unit Hanggar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    dbgrd1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    cbb1: TComboBox;
    Button6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Edit2: TEdit;
    cbb2: TComboBox;
    zqry2: TZQuery;
    procedure FormShow(Sender: TObject);
    procedure awal;
    procedure editbersih;
    procedure editenable;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  id : string;

implementation

{$R *.dfm}

procedure TForm6.awal;
begin
editbersih;

cbb1.Enabled:= false;
Edit1.Enabled:= false;
Edit2.Enabled:= false;
cbb2.Enabled:= false;

button1.Enabled:= True;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= False;
end;

procedure TForm6.editbersih;
begin
cbb1.text:= '';
Edit1.Clear;
Edit2.Clear;
cbb2.text:= '';
end;

procedure TForm6.editenable;
begin
cbb1.Enabled:= True;
Edit1.Enabled:= True;
Edit2.Enabled:= True;
cbb2.Enabled:= True;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm6.dbgrd1CellClick(Column: TColumn);
begin
editenable;
Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= True;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= True;
id:=zqry1.Fields[0].AsString;
cbb1.Text:= zqry1.FieldList[1].AsString;
Edit1.Text:= zqry1.FieldList[2].AsString;
Edit2.Text:= zqry1.FieldList[3].AsString;
cbb2.Text:= zqry1.FieldList[4].AsString;
end;

procedure TForm6.Button1Click(Sender: TObject);//button Baru
begin
editbersih;

Button1.Enabled:= False;
Button2.Enabled:= True;
Button3.Enabled:= False;
Button4.Enabled:= False;
Button5.Enabled:= True;
Button6.Enabled:= True;

editenable;
end;

procedure TForm6.Button2Click(Sender: TObject);//Button Tambah
begin
if (cbb1.Text= '')or (Edit1.Text ='')or(Edit2.Text= '') or(cbb2.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('pegawai_id',cbb1.Text,[])) and (zqry1.Locate('nama_hanggar',Edit1.Text,[])) and (zqry1.Locate('parkir_hanggar',Edit2.Text,[])) and (zqry1.Locate('kondisi_pesawat',cbb2.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into hanggar values (null,"'+cbb1.Text+'","'+edit1.Text+'","'+edit2.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hanggar');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  cbb1.items.add(zqry2.fieldbyname('id').asstring);
  zqry2.Next;
end;
end;

procedure TForm6.Button3Click(Sender: TObject);//Button Edit
begin
if (cbb1.Text= '')or (Edit1.Text ='')or(Edit2.Text= '') or(cbb2.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (cbb1.Text = zqry1.Fields[1].AsString) and (edit1.Text = zqry1.Fields[2].AsString) and (edit2.Text = zqry1.Fields[3].AsString) and (cbb2.Text = zqry1.Fields[4].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update hanggar set pegawai_id= "'+cbb1.Text+'",nama_hanggar="'+edit2.Text+'",parkir_hanggar="'+edit2.Text+'",kondisi_pesawat="'+cbb2.Text+'" where id="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hanggar');
zqry1.Open;
awal;
end;
end;

procedure TForm6.Button4Click(Sender: TObject);//Button Hapus
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from hanggar where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from hanggar');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm6.Button5Click(Sender: TObject);//Button Batal
begin
awal;
end;

end.
