unit Customer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, StdCtrls, Grids, DBGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm5 = class(TForm)
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
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label7: TLabel;
    procedure FormShow(Sender: TObject);
    procedure awal;
    procedure editbersih;
    procedure editenable;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id : string;

implementation

{$R *.dfm}

procedure TForm5.awal;
begin
editbersih;

Edit1.Enabled:= false;
Edit2.Enabled:= false;
cbb1.Enabled:= false;
Edit3.Enabled:= false;
edit4.Enabled:= false;
edit5.Enabled:= false;
edit6.Enabled:= false;

button1.Enabled:= True;
button2.Enabled:= False;
button3.Enabled:= False;
button4.Enabled:= False;
button5.Enabled:= False;
button6.Enabled:= False;
end;

procedure TForm5.editbersih;
begin
Edit1.Clear;
Edit2.Clear;
cbb1.text:= '';
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
end;

procedure TForm5.editenable;
begin
Edit1.Enabled:= True;
Edit2.Enabled:= True;
cbb1.Enabled:= True;
Edit2.Enabled:= True;
Edit3.Enabled:= True;
Edit4.Enabled:= True;
Edit5.Enabled:= True;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
awal;
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
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
Edit2.Text:= zqry1.FieldList[3].AsString;
cbb1.Text:= zqry1.FieldList[2].AsString;
Edit3.Text:= zqry1.FieldList[3].AsString;
Edit4.Text:= zqry1.FieldList[4].AsString;
Edit5.Text:= zqry1.FieldList[5].AsString;
end;

procedure TForm5.Button1Click(Sender: TObject);
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

procedure TForm5.Button2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (edit2.Text ='')or(cbb1.Text= '') or(Edit3.Text= '') or(Edit4.Text= '') or(Edit5.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nik',Edit1.Text,[])) and (zqry1.Locate('nama',Edit2.Text,[]))(zqry1.Locate('email',Edit5.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into customer values (null,"'+Edit1.Text+'","'+edit2.Text+'","'+cbb1.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from customer');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

end.
