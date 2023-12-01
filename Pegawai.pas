unit Pegawai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm4 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    dbgrd1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    cbb1: TComboBox;
    Button6: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    cbb2: TComboBox;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure awal;
    procedure editbersih;
    procedure editenable;
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
  Form4: TForm4;
  id : string;

implementation

{$R *.dfm}



procedure TForm4.awal;
begin
editbersih;

Edit1.Enabled:= false;
cbb1.Enabled:= false;
Edit2.Enabled:= false;
Edit3.Enabled:= false;
cbb1.Enabled:= false;

button1.Enabled:= True;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= False;
end;

procedure TForm4.editbersih;
begin
Edit1.Clear;
cbb1.text:= '';
Edit2.Clear;
Edit3.Clear;
cbb2.Text:='';
end;

procedure TForm4.editenable;
begin
Edit1.Enabled:= True;
cbb1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
cbb2.Enabled:=True;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm4.dbgrd1CellClick(Column: TColumn);
begin
editenable;
Button1.Enabled:= True;
Button2.Enabled:= False;
Button3.Enabled:= True;
Button4.Enabled:= True;
Button5.Enabled:= True;
Button6.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;
cbb1.Text:= zqry1.FieldList[2].AsString;
Edit2.Text:= zqry1.FieldList[3].AsString;
Edit3.Text:= zqry1.FieldList[4].AsString;
cbb2.Text:= zqry1.FieldList[5].AsString;
end;

procedure TForm4.Button1Click(Sender: TObject);//button Baru
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

procedure TForm4.Button2Click(Sender: TObject);//button Tambah
begin
if (Edit1.Text= '')or (cbb1.Text ='')or(Edit2.Text= '') or(Edit3.Text= '') or(cbb2.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nama',Edit1.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into pegawai values (null,"'+Edit1.Text+'","'+cbb1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+cbb2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pegawai');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm4.Button3Click(Sender: TObject);//button Edit
begin
if (Edit1.Text= '')or (cbb1.Text ='')or (Edit2.Text= '') or (Edit3.Text= '')or (cbb2.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (cbb1.Text = zqry1.Fields[2].AsString) and (Edit2.Text = zqry1.Fields[3].AsString) and (Edit3.Text = zqry1.Fields[4].AsString) and (cbb2.Text = zqry1.Fields[5].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
awal;
end else
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update pegawai set nama= "'+Edit1.Text+'",jabatan="'+cbb1.Text+'",no_hp="'+edit2.Text+'",alamat="'+edit3.Text+'",jk="'+cbb2.Text+'" where id="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pegawai');
zqry1.Open;
awal;
end;
end;

procedure TForm4.Button4Click(Sender: TObject);//Button Hapus
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dbgrd1.DataSource.DataSet.FieldByName('id').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from pegawai where id="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pegawai');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
awal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
awal;
end;
end;

procedure TForm4.Button5Click(Sender: TObject);//Button Batal
begin
awal;
end;

end.
