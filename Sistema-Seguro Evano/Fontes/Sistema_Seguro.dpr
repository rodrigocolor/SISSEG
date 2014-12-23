program Sistema_Seguro;

{$R 'Win7UAC.res' 'Win7UAC.rc'}

uses
  Vcl.Forms,
  unFormMenu in 'unFormMenu.pas' {unFormMenuP},
  Vcl.Themes,
  Vcl.Styles,
  unAtivacao in 'unAtivacao.pas',
  unFormAtivacao in 'unFormAtivacao.pas' {Form1},
  unFormCadastro in 'unFormCadastro.pas' {FormCadastro},
  unDmConexcao in 'unDmConexcao.pas' {Dmconexcao: TDataModule},
  unFormRelatorioB in 'unFormRelatorioB.pas' {FormRelB};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Sistema para Controle de Seguros';
  Application.CreateForm(TDmconexcao, Dmconexcao);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormRelB, FormRelB);
  Application.Run;
end.
