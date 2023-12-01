program PrivateJet;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  Menu in 'Menu.pas' {Form2},
  User in 'User.pas' {Form3},
  Pegawai in 'Pegawai.pas' {Form4},
  Customer in 'Customer.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
