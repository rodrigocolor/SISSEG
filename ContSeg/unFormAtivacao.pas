unit unFormAtivacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, unAtivacao, inifiles,
  unFormMenu;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Decry;
    procedure Cry;
  private
    procedure Abremain;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  main: TunFormMenuP;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
var
  cr: Tcrypto;
  I, x: Integer;
  a1, a2: string;
  ini: TIniFile;
begin
  ini := TIniFile.Create('..\conf.lib');
  try
    cr := Tcrypto.Create;
    a1 := cr.encode(Edit1.text);
    for I := 1 to 3 do
    begin
      a1 := cr.encode(a1);
    end;
    a2 := cr.decode(Edit2.text);
    for I := 1 to 2 do
    begin
      a2 := cr.decode(a2);
    end;
    if (a1 = a2) then
    begin
      ShowMessage('Sistema ativado!');
      ini.WriteString('Ativacao', 'A1', cr.decode(a1));
      ini.WriteString('Ativacao', 'A2', cr.decode(a2));
      ini.WriteBool('Ativacao', 'status', true);
      Abremain;
    end
    else
    begin
      ShowMessage('Erro na ativação! Favor contatar o Adminstrador.');
      ini.WriteBool('Ativacao', 'Status', false);
      ini.WriteString('Ativacao', 'A1', cr.decode(a1));
      ini.WriteString('Ativacao', 'A2', cr.decode(a2));
    end;
  finally
    FreeAndNil(cr);
  end;
end;

procedure TForm1.Cry;
var
  xxx: Tcrypto;
begin
  xxx := Tcrypto.Create;
  try
    xxx.EnDecryptFile('..\conf.lib', '..\conf.ecy', 1024);

  finally
    xxx.Free;
  end;
  DeleteFile('..\conf.lib');
end;

procedure TForm1.Decry;
var
  xxx: Tcrypto;
begin
  xxx := Tcrypto.Create;
  try
    xxx.EnDecryptFile('..\conf.ecy', '..\conf.lib', 1024);
  finally
    xxx.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ini: TIniFile;
begin
  if not FileExists('..\conf.lib') then
  begin
    ini := TIniFile.Create('..\conf.lib');
    ini.WriteString('VersionWin', 'Xx32.dll', Win32CSDVersion);
    Cry;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  cr: Tcrypto;
  I: Integer;
  ini: TIniFile;
  a: boolean;
  ss: string;
begin
  cr := Tcrypto.Create;
  Decry;
  ini := TIniFile.Create('..\conf.lib');
  a := ini.ReadBool('Ativacao', 'Status', false);
  if a then
  begin
    try
      Abremain;
    finally
      FreeAndNil(cr);
    end;
  end;
  try
    cr := Tcrypto.Create;
    ss := cr.SerialNum(ExtractFileDrive(Application.ExeName));
    Label1.caption := ss;
    ss := cr.encode(ss);
    for I := 1 to 6 do
    begin
      ss := cr.encode(ss);
    end;
    Edit1.text := ss;
  finally
    FreeAndNil(cr);
  end;
end;

procedure TForm1.Abremain;
begin
  try
    Cry;
    main := TunFormMenuP.Create(nil);
    main.showmodal;
  except
    on E: Exception do
      ShowMessage('Erro ao abrir Sistema: 0x2294 = ' + E.ToString);
  end;
end;

end.
