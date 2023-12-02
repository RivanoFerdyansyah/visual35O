program PrivateJet;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  Menu in 'Menu.pas' {Form2},
  User in 'User.pas' {Form3},
  Pegawai in 'Pegawai.pas' {Form4},
  Customer in 'Customer.pas' {Form5},
  Hanggar in 'Hanggar.pas' {Form6},
  Pesawat in 'Pesawat.pas' {Form7},
  Sewa in 'Sewa.pas' {Form8},
  Transaksi in 'Transaksi.pas' {Form9},
  Register in 'Register.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
