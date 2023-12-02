unit Transaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbgrd1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    cbb1: TComboBox;
    Button6: TButton;
    Edit1: TEdit;
    cbb2: TComboBox;
    cbb3: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    zqry2: TZQuery;
    zqry3: TZQuery;
    zqry4: TZQuery;
    Label10: TLabel;
    zqry5: TZQuery;
    Label11: TLabel;
    cbb4: TComboBox;
    cbb5: TComboBox;
    cbb6: TComboBox;
    cbb7: TComboBox;
    cbb8: TComboBox;
    Edit2: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure awal;
    procedure editbersih;
    procedure editenable;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  id : string;

implementation

{$R *.dfm}

procedure TForm9.awal;
begin
editbersih;

cbb1.Enabled:= false;
cbb2.Enabled:= false;
cbb3.Enabled:= false;
cbb4.Enabled:= false;
edit1.Enabled:= false;
cbb5.Enabled:= false;
cbb6.Enabled:= false;
cbb7.Enabled:= false;
edit2.Enabled:= false;
cbb8.Enabled:= false;

button1.Enabled:= True;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= False;
end;

procedure TForm9.editbersih;
begin
cbb1.text:= '';
cbb2.text:= '';
cbb3.text:= '';
cbb4.text:= '';
Edit1.Clear;
cbb5.text:= '';
cbb6.text:= '';
cbb7.text:= '';
Edit2.Clear;
cbb8.text:= '';
end;

procedure TForm9.editenable;
begin
cbb1.Enabled:= True;
cbb2.Enabled:= True;
cbb3.Enabled:= True;
cbb4.Enabled:= True;
edit1.Enabled:= True;
cbb5.Enabled:= True;
cbb6.Enabled:= True;
cbb7.Enabled:= True;
Edit2.Enabled:= True;
cbb8.Enabled:= True;
end;

procedure TForm9.FormCreate(Sender: TObject);
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
zqry5.First;
while not zqry5.Eof do
begin
  cbb4.items.add(zqry5.fieldbyname('id').asstring);
  zqry5.Next;
end;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm9.dbgrd1CellClick(Column: TColumn);
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
cbb4.Text:= zqry1.FieldList[4].AsString;
edit1.Text:= zqry1.FieldList[5].AsString;
cbb5.Text:= zqry1.FieldList[6].AsString;
cbb6.Text:= zqry1.FieldList[7].AsString;
cbb7.Text:= zqry1.FieldList[8].AsString;
Edit2.Text:= zqry1.FieldList[9].AsString;
cbb8.Text:= zqry1.FieldList[10].AsString;
end;

procedure TForm9.Button1Click(Sender: TObject);
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

procedure TForm9.Button2Click(Sender: TObject);//button Tambah
begin
if (cbb1.Text= '')or (cbb2.Text ='')or(cbb3.Text= '') or(cbb4.Text= '') or(Edit1.Text= '') or(cbb5.Text= '') or(cbb6.Text= '')or (cbb7.Text= '')or(edit2.Text= '') or(cbb8.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('pesawat_id',cbb1.Text,[])) and (zqry1.Locate('sewa_id',cbb2.Text,[])) and (zqry1.Locate('customer_id',cbb3.Text,[])) and (zqry1.Locate('pegawai_id',cbb4.Text,[])) and (zqry1.Locate('tanggal_sewa',Edit1.Text,[])) and (zqry1.Locate('jenis_pesawat',cbb5.Text,[])) and (zqry1.Locate('perjalanan',cbb6.Text,[])) and (zqry1.Locate('jenis_penerbangan',cbb7.Text,[])) and (zqry1.Locate('total_pembayaran',Edit2.Text,[])) and (zqry1.Locate('pembayaran',cbb8.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into transaksi values (null,"'+cbb1.Text+'","'+cbb2.Text+'","'+cbb3.Text+'","'+cbb4.Text+'","'+edit1.Text+'","'+cbb5.Text+'","'+cbb6.Text+'","'+cbb7.Text+'","'+edit2.Text+'","'+cbb8.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm9.Button3Click(Sender: TObject);//button Edit
begin
if (cbb1.Text= '')or (cbb2.Text ='')or(cbb3.Text= '') or(cbb4.Text= '') or(Edit1.Text= '') or(cbb5.Text= '') or(cbb6.Text= '')or (cbb7.Text= '')or(edit2.Text= '') or(cbb8.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (zqry1.Locate('pesawat_id',cbb1.Text,[])) and (zqry1.Locate('sewa_id',cbb2.Text,[])) and (zqry1.Locate('customer_id',cbb3.Text,[])) and (zqry1.Locate('pegawai_id',cbb4.Text,[])) and (zqry1.Locate('tanggal_sewa',Edit1.Text,[])) and (zqry1.Locate('jenis_pesawat',cbb5.Text,[])) and (zqry1.Locate('perjalanan',cbb6.Text,[])) and (zqry1.Locate('jenis_penerbangan',cbb7.Text,[])) and (zqry1.Locate('total_pembayaran',Edit2.Text,[])) and (zqry1.Locate('pembayaran',cbb8.Text,[])) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update transaksi set pesawat_id= "'+cbb1.Text+'",sewa_id="'+cbb2.Text+'",customer_id="'+cbb3.Text+'",pegawai_id="'+cbb4.Text+'",tanggal_sewa="'+edit2.Text+'",jenis_pesawat="'+cbb5.Text+'",perjalanan="'+cbb6.Text+'",jenis_penerbangan="'+cbb7.Text+'",total_pembayaran="'+edit2.Text+'",pembarayan="'+cbb8.Text+'" where id="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi');
zqry1.Open;
awal;
end;
end;
end;


procedure TForm9.Button5Click(Sender: TObject);//button Batal
begin
awal;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from transaksi where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from transaksi');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm9.Button6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
