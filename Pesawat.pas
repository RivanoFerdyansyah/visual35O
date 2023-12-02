unit Pesawat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, frxClass, frxDBSet, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, Grids,
  DBGrids;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    dbgrd1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    cbb1: TComboBox;
    Button6: TButton;
    cbb2: TComboBox;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    zqry2: TZQuery;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    cbb3: TComboBox;
    Edit2: TEdit;
    cbb4: TComboBox;
    Edit3: TEdit;
    zqry3: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure awal;
    procedure editbersih;
    procedure editenable;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  id : string ;

implementation

{$R *.dfm}

procedure TForm7.awal;
begin
editbersih;

cbb1.Enabled:= false;
cbb2.Enabled:= false;
Edit1.Enabled:= false;
cbb3.Enabled:= false;
Edit2.Enabled:= false;
cbb4.Enabled:= false;
Edit3.Enabled:= false;

button1.Enabled:= True;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= False;
end;

procedure TForm7.editbersih;
begin
cbb1.text:= '';
cbb2.text:= '';
Edit1.Clear;
cbb3.text:= '';
Edit2.Clear;
cbb4.text:= '';
Edit3.Clear;
end;

procedure TForm7.editenable;
begin
cbb1.Enabled:= True;
cbb2.Enabled:= True;
Edit1.Enabled:= True;
cbb3.Enabled:= True;
Edit2.Enabled:= True;
cbb4.Enabled:= True;
Edit3.Enabled:= True;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm7.FormCreate(Sender: TObject);
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
end;

procedure TForm7.Button1Click(Sender: TObject);//Button Baru
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

procedure TForm7.Button2Click(Sender: TObject); //Button Tambah
begin
if (cbb1.Text= '')or (cbb2.Text ='')or(Edit1.Text= '') or(cbb3.Text= '') or(Edit2.Text= '')or(cbb4.Text= '') or(Edit3.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('pegawai_id',cbb1.Text,[])) and (zqry1.Locate('hanggar_id',cbb2.Text,[])) and (zqry1.Locate('nama_pesawat',Edit1.Text,[])) and (zqry1.Locate('jenis_pesawat',cbb3.Text,[])) and (zqry1.Locate('kode_pesawat',Edit2.Text,[])) and (zqry1.Locate('status_pesawat',cbb4.Text,[])) and (zqry1.Locate('harga_sewa',Edit3.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into pesawat values (null,"'+cbb1.Text+'","'+cbb2.Text+'","'+edit1.Text+'","'+cbb3.Text+'","'+edit2.Text+'","'+cbb4.Text+'","'+edit3.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pesawat');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm7.Button3Click(Sender: TObject);//button Edit
begin
if (cbb1.Text= '')or (cbb2.Text ='')or(Edit1.Text= '') or(cbb3.Text= '') or(Edit2.Text= '')or(cbb4.Text= '') or(Edit3.Text= '') then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (cbb1.Text = zqry1.Fields[1].AsString) and (cbb2.Text = zqry1.Fields[2].AsString) and (edit1.Text = zqry1.Fields[3].AsString) and (cbb3.Text = zqry1.Fields[4].AsString) and (edit2.Text = zqry1.Fields[5].AsString) and (cbb4.Text = zqry1.Fields[6].AsString) and (edit3.Text = zqry1.Fields[7].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update pesawat set pegawai_id= "'+cbb1.Text+'",hanggar_id="'+cbb2.Text+'",nama_pesawat="'+edit1.Text+'",jenis_pesawat="'+cbb3.Text+'",kode_pesawat="'+edit2.Text+'",status_pesawat="'+cbb4.Text+'",harga_sewa="'+edit3.Text+'" where id="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pesawat');
zqry1.Open;
awal;
end;
end;

procedure TForm7.dbgrd1CellClick(Column: TColumn);
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
Edit1.Text:= zqry1.FieldList[3].AsString;
cbb3.Text:= zqry1.FieldList[4].AsString;
Edit2.Text:= zqry1.FieldList[5].AsString;
cbb4.Text:= zqry1.FieldList[6].AsString;
Edit3.Text:= zqry1.FieldList[7].AsString;
end;

procedure TForm7.Button4Click(Sender: TObject);//Button Hapus
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from pesawat where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pesawat');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
awal;
end;

procedure TForm7.Button6Click(Sender: TObject);
begin
frxReport1.ShowReport();
end;

end.
