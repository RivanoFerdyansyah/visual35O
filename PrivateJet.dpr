program PrivateJet;

uses
  Forms,
  Login in 'Login.pas' {Form1},
  Menu in 'Menu.pas' {Form2},
  User in 'User.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
