unit Sewa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbgrd1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    cbb1: TComboBox;
    Button6: TButton;
    Edit1: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    zqry2: TZQuery;
    zqry3: TZQuery;
    Label9: TLabel;
    cbb2: TComboBox;
    cbb3: TComboBox;
    Edit2: TEdit;
    Edit3: TEdit;
    cbb4: TComboBox;
    cbb5: TComboBox;
    zqry4: TZQuery;
    Label10: TLabel;
    Edit4: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure awal;
    procedure editbersih;
    procedure editenable;
    procedure FormShow(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  id : string;

implementation

{$R *.dfm}

procedure TForm8.awal;
begin
editbersih;

cbb1.Enabled:= false;
cbb2.Enabled:= false;
cbb3.Enabled:= false;
edit1.Enabled:= false;
Edit2.Enabled:= false;
Edit3.Enabled:= false;
Edit4.Enabled:= false;
cbb4.Enabled:= false;
cbb5.Enabled:= false;

button1.Enabled:= True;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= False;
end;

procedure TForm8.editbersih;
begin
cbb1.text:= '';
cbb2.text:= '';
cbb3.text:= '';
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
cbb4.text:= '';
cbb5.text:= '';
end;

procedure TForm8.editenable;
begin
cbb1.Enabled:= True;
cbb2.Enabled:= True;
cbb3.Enabled:= True;
edit1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
cbb4.Enabled:= True;
cbb5.Enabled:= True;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  cbb1.items.add(zqry2.fieldbyname('id').asstring);
  zqry2.Next;
end;
zqry3.First;
while not zqry3.Eof do
begin
  cbb2.items.add(zqry3.fieldbyname('id').asstring);
  zqry3.Next;
end;
zqry4.First;
while not zqry4.Eof do
begin
  cbb3.items.add(zqry4.fieldbyname('id').asstring);
  zqry4.Next;
end;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
awal;
end;



procedure TForm8.dbgrd1CellClick(Column: TColumn);
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
cbb2.Text:= zqry1.FieldList[2].AsString;
cbb3.Text:= zqry1.FieldList[3].AsString;
edit1.Text:= zqry1.FieldList[4].AsString;
Edit2.Text:= zqry1.FieldList[5].AsString;
edit3.Text:= zqry1.FieldList[6].AsString;
edit4.Text:= zqry1.FieldList[7].AsString;
cbb4.Text:= zqry1.FieldList[8].AsString;
cbb5.Text:= zqry1.FieldList[9].AsString;
end;

procedure TForm8.Button1Click(Sender: TObject);//button Baru
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

procedure TForm8.Button2Click(Sender: TObject); //button Tambah
begin
if (cbb1.Text= '')or (cbb2.Text ='')or(cbb3.Text= '') or(edit1.Text= '') or(Edit2.Text= '') or(edit3.Text= '') or(edit4.Text= '')or (cbb4.Text= '')or(cbb5.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('pesawat_id',cbb1.Text,[])) and (zqry1.Locate('customer_id',cbb2.Text,[])) and (zqry1.Locate('pegawai_id',cbb3.Text,[])) and (zqry1.Locate('rute',Edit1.Text,[])) and (zqry1.Locate('tanggal_sewa',Edit2.Text,[])) and (zqry1.Locate('waktu',Edit3.Text,[])) and (zqry1.Locate('harga_sewa',Edit4.Text,[])) and (zqry1.Locate('jenis_sewa',cbb4.Text,[])) and (zqry1.Locate('status',cbb5.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into sewa values (null,"'+cbb1.Text+'","'+cbb2.Text+'","'+cbb3.Text+'","'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+cbb4.Text+'","'+cbb5.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from sewa');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm8.Button3Click(Sender: TObject);//button Edit
begin
if (cbb1.Text= '')or (cbb2.Text ='')or (cbb3.Text= '') or(edit1.Text= '') or(Edit2.Text= '') or(edit3.Text= '') or(edit4.Text= '')or (cbb4.Text= '')or (cbb5.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (cbb1.Text = zqry1.Fields[1].AsString) and (cbb2.Text = zqry1.Fields[2].AsString) and (cbb3.Text = zqry1.Fields[3].AsString) and (edit1.Text = zqry1.Fields[4].AsString) and (edit2.Text = zqry1.Fields[5].AsString) and (edit3.Text = zqry1.Fields[6].AsString) and (edit4.Text = zqry1.Fields[7].AsString) and (cbb4.Text = zqry1.Fields[8].AsString) and (cbb5.Text = zqry1.Fields[9].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update sewa set pesawat_id= "'+cbb1.Text+'",customer_id="'+cbb2.Text+'",pegawai_id="'+cbb3.Text+'",rute="'+edit1.Text+'",tanggal_sewa="'+edit2.Text+'",waktu="'+edit3.Text+'",harga_sewa="'+edit4.Text+'",jenis_penerbangan="'+cbb4.Text+'",status="'+cbb5.Text+'" where id="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from sewa');
zqry1.Open;
awal;
end;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from sewa where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from sewa');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
awal;
end;

end.
