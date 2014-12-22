program Sistema_Seguro;

uses
  Vcl.Forms,
  unFormMenu in 'unFormMenu.pas' {unFormMenuP},
  Vcl.Themes,
  Vcl.Styles,
  unAtivacao in 'unAtivacao.pas',
  unFormAtivacao in 'unFormAtivacao.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema para Controle de Seguros';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
