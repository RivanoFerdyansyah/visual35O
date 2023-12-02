unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Login, User, Pegawai, Customer, Hanggar, Pesawat, Sewa, Transaksi;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
form3.showModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Form7.showmodal;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
form8.showmodal;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
form9.showmodal;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
close;
form1.Show;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
if MessageDlg('APAKAH INGIN MENUTUP APLIKASI INI ?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
Application.Terminate;
end else
begin
hide;
form2.Show;
end;
end;

end.
