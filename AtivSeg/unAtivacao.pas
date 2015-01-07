unit unAtivacao;

interface

uses
  System.IniFiles;

type
  TCrypto = class
  private
    { private declarations }
    VChave: Word;

  Const
    C1 = 33598;
    C2 = 24219;
    Chave = 16854;

  protected
    { protected declarations }
  public
    { public declarations }
    function Encode(dados: string): string;
    function Decode(dados: string): string;
    Function SerialNum(FDrive: String): String;
    procedure EnDecryptFile(INFName, OutFName: String; Chave: Word);
    function VerificaAtivacao: boolean;

  published
    { published declarations }

  end;

implementation

uses
  System.Types, Winapi.Windows, System.SysUtils, System.Classes, unFormAtivacao;

{ TCrypto }
function TCrypto.Decode(dados: string): string;
var
  I: Integer;
  Key: Word;
  Res: String;
begin
  Key := Chave;
  for I := 1 to length(dados) do
  begin
    Res := Res + Char(Byte(dados[I]) xor (Key shr 8));
    Key := (Byte(dados[I]) + Chave) * C1 + C2;
  end;
  Result := Res;
end;

function TCrypto.Encode(dados: string): string;
var
  I: Integer;
  Key: Word;
  Res: String;
begin
  Key := Chave;
  for I := 1 to length(dados) do
  begin
    Res := Res + Char(Byte(dados[I]) xor (Key shr 8));
    Key := (Byte(Res[I]) + Chave) * C1 + C2;
  end;
  Result := Res;
end;

procedure TCrypto.EnDecryptFile(INFName, OutFName: String; Chave: Word);
var
  InMS, OutMS: TMemoryStream;
  I: Integer;
  C: Byte;
begin
  InMS := TMemoryStream.Create;
  OutMS := TMemoryStream.Create;
  try
    InMS.LoadFromFile(INFName);
    InMS.Position := 0;
    for I := 0 to InMS.Size - 1 do
    begin
      InMS.Read(C, 1);
      C := (C xor not(ord(Chave shr I)));
      OutMS.Write(C, 1);
    end;
    OutMS.SaveToFile(OutFName);
  finally
    InMS.Free;
    OutMS.Free;
  end;
end;

function TCrypto.SerialNum(FDrive: String): String;
Var
  Serial: DWord;
  DirLen, Flags: DWord;
  DLabel: Array [0 .. 11] of Char;
  Lib: Cardinal;
  GUID1, GUID2: TGUID;
  Func: Function(GUID: PGUID): Longint; stdcall;
  x: string;
begin
  Try
    GetVolumeInformation(PChar(FDrive + ':\'), DLabel, 12, @Serial, DirLen,
      Flags, nil, 0);
    Result := IntToHex(Serial, 8);

    x := '';
    Lib := LoadLibrary('rpcrt4.dll');
    If not(Lib = 0) Then
      Try
        @Func := GetProcAddress(Lib, 'UuidCreateSequential');
        If Assigned(Func) Then
        Begin
          If (Func(@GUID1) = 0) and (Func(@GUID2) = 0) and
            (GUID1.D4[2] = GUID2.D4[2]) and (GUID1.D4[3] = GUID2.D4[3]) and
            (GUID1.D4[4] = GUID2.D4[4]) and (GUID1.D4[5] = GUID2.D4[5]) and
            (GUID1.D4[6] = GUID2.D4[6]) and (GUID1.D4[7] = GUID2.D4[7]) Then
          Begin
            x := IntToHex(GUID1.D4[2], 2) + '-' + IntToHex(GUID1.D4[3], 2) + '-'
              + IntToHex(GUID1.D4[4], 2) + '-' + IntToHex(GUID1.D4[5], 2) + '-'
              + IntToHex(GUID1.D4[6], 2) + '-' + IntToHex(GUID1.D4[7], 2);
            Result := 'Dsk ' + Result + ' mc: ' + x;
          End;
        End;
      Finally
        FreeLibrary(Lib);
      end;
  Except
    Result := '';
  end;
end;

function TCrypto.VerificaAtivacao: boolean;
var
  vB: boolean;
  v1, v2: string;
  Tini: Tinifile;
  cr: TCrypto;
begin
  cr := TCrypto.Create;
  try
    cr.EnDecryptFile('..\conf.ecy', '..\conf.lib', 1024);
    Tini := Tinifile.Create('..\conf.lib');
    cr.EnDecryptFile('..\conf.lib', '..\conf.ecy', 1024);
    vB := Tini.ReadBool('Ativacao', 'Status', false);
    v1 := Tini.ReadString('Ativacao', 'A1', cr.Decode(v1));
    v2 := Tini.ReadString('Ativacao', 'A2', cr.Encode(v2));
    if vB and (v1=v2) then
    Result:=True
    else
    Result:=False;
  finally
    cr.Free;
    DeleteFile('..\conf.lib');
  end;
end;

end.
