unit Register;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    Button2: TButton;
    Label4: TLabel;
    cbb1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure awal;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Login;

{$R *.dfm}

procedure TForm10.awal;
begin
Edit1.Clear;
Edit2.Clear;
cbb1.Text:='';
end;

procedure TForm10.Button1Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(cbb1.Text= '') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('username',Edit1.Text,[])) and (zqry1.Locate('password',Edit2.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
awal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into user values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+cbb1.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from user');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
awal;

end;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
close;
Form1.show;
end;

end.
