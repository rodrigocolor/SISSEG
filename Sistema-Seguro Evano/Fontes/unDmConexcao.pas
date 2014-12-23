unit unDmConexcao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Datasnap.Provider, Data.SqlExpr, Datasnap.DBClient;

type
  TDmconexcao = class(TDataModule)
    SQLConnection1: TSQLConnection;
    ClientDataSet1: TClientDataSet;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1ID: TIntegerField;
    ClientDataSet1NOME_SEGURADO: TStringField;
    ClientDataSet1TIPO_APOLICE: TStringField;
    ClientDataSet1DTA_CONTRATO: TDateField;
    ClientDataSet1DTA_VENCIMENTO: TDateField;
    ClientDataSet1APOLICE: TStringField;
    ClientDataSet2: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    ClientDataSet2NOME_SEGURADO: TStringField;
    ClientDataSet2TIPO_APOLICE: TStringField;
    ClientDataSet2DTA_CONTRATO: TDateField;
    ClientDataSet2DTA_VENCIMENTO: TDateField;
    ClientDataSet2APOLICE: TStringField;
    SQLDataSet2: TSQLDataSet;
    ClientDataSet2TELEFONE: TStringField;
    SQLDataSet1ID: TIntegerField;
    SQLDataSet1NOME_SEGURADO: TStringField;
    SQLDataSet1TELEFONE: TStringField;
    SQLDataSet1TIPO_APOLICE: TStringField;
    SQLDataSet1DTA_CONTRATO: TDateField;
    SQLDataSet1DTA_VENCIMENTO: TDateField;
    SQLDataSet1APOLICE: TStringField;
    ClientDataSet1TELEFONE: TStringField;
    procedure ClientDataSet1NewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dmconexcao: TDmconexcao;

implementation

uses
  System.IniFiles;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmconexcao.ClientDataSet1NewRecord(DataSet: TDataSet);
var
 Qry: TSQLQuery;
 begin
 Qry := TSQLQuery.Create(nil);
 try
 Qry.SQLConnection := SQLConnection1;
 Qry.SQL.Add('SELECT GEN_ID(GEN_NEW_TABLE_ID, 1) FROM RDB$DATABASE');
 Qry.Open;
 ClientDataSet1ID.AsInteger:= Qry.Fields[0].AsInteger;
 finally
 FreeAndNil(Qry);
 end;
 end;
procedure TDmconexcao.DataModuleCreate(Sender: TObject);
var
  ArquivoINI: TIniFile;
  CaminhoBD: string;
begin
  ArquivoINI := TIniFile.Create('..\db\DBSet.lib');
  try

  ArquivoINI.WriteString('Configuracoes', 'CaminhoBD', ExtractFilePath('..\db\DBSet.lib')+'SEGURO.FDB');
    CaminhoBD := ArquivoINI.ReadString('Configuracoes', 'CaminhoBD', EmptyStr);
      SQLConnection1.Params.Values['Database']:=CaminhoBD;
  finally
    ArquivoINI.Free;
  end;
end;
end.
