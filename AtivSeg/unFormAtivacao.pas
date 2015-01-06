unit unFormAtivacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label5: TLabel;
    Button1: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);

    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses unAtivacao;

procedure TForm1.Button1Click(Sender: TObject);
var
  cr: Tcrypto;
  I: Integer;
  ss: string;
begin
  try
    cr := Tcrypto.create;
    if cr.Encode(Edit4.Text) = cr.encode(Edit3.Text) then
      Label8.Caption := 'True'
    else
      Label8.Caption := 'False';
    Label9.Caption := cr.Encode(Edit4.Text);
    Label10.Caption := cr.encode(Edit3.Text);
  finally
    FreeAndNil(cr);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  cr: Tcrypto;
  I: Integer;
  ss: string;
begin
  try
    cr := Tcrypto.create;
    ss := Edit1.Text;
    ss := cr.Encode(ss);
    for I := 1 to 6 do
    begin
      ss := cr.Encode(ss);
    end;
    Edit2.Text := ss;
  finally
    FreeAndNil(cr);
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  cr: Tcrypto;
begin
    cr := Tcrypto.create;
    cr.EnDecryptFile('..\conf.lib','..\conf.ecy', 1024);
    FreeAndNil(cr);
  end;

procedure TForm1.Button4Click(Sender: TObject);
var
  cr: Tcrypto;
begin
    cr := Tcrypto.create;
    cr.EnDecryptFile('..\conf.ecy', '..\conf.lib', 1024);
    FreeAndNil(cr);
  end;

  procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  var
    cr: Tcrypto;
    I: Integer;
  begin
    try
      cr := Tcrypto.create;
      Label1.Caption := cr.Decode(Edit1.Text);
      for I := 1 to 6 do

        Label1.Caption := cr.Decode(Label1.Caption);
    finally
      FreeAndNil(cr);
    end;
  end;

  procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
  var
    cr: Tcrypto;
    I: Integer;
  begin
    try
      cr := Tcrypto.create;
      Label1.Caption := cr.Decode(Edit1.Text);
      for I := 1 to 6 do

        Label1.Caption := cr.Decode(Label1.Caption);
    finally
      FreeAndNil(cr);
    end;
  end;

  procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  var
    cr: Tcrypto;
    I: Integer;
  begin
    try
      cr := Tcrypto.create;
      Label1.Caption := cr.Decode(Edit1.Text);
      for I := 1 to 6 do

        Label1.Caption := cr.Decode(Label1.Caption);
    finally
      FreeAndNil(cr);
    end;
  end;

end.
