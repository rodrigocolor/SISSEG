unit unFormCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TFormCadastro = class(TForm)
    Label1: TLabel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    dtpContrato: TDateTimePicker;
    dtpVencimento: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    EditNome: TEdit;
    EditApolice: TEdit;
    EditTelefone: TEdit;
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastro: TFormCadastro;

implementation

{$R *.dfm}

uses unDmConexcao;

procedure TFormCadastro.BitBtn1Click(Sender: TObject);
begin
  with Dmconexcao do
  begin
    ClientDataSet1.open;
    ClientDataSet1NOME_SEGURADO.AsString:=Trim(EditNome.Text);
    ClientDataSet1APOLICE.AsString:=Trim(EditApolice.Text);
    ClientDataSet1TELEFONE.AsString:=Trim(EditTelefone.Text);
    ClientDataSet1DTA_CONTRATO.AsDateTime:=dtpContrato.Date;
    ClientDataSet1DTA_VENCIMENTO.AsDateTime:=dtpVencimento.Date;
    ClientDataSet1.Post;
    ClientDataSet1.ApplyUpdates(0);
  end;
end;

procedure TFormCadastro.FormCreate(Sender: TObject);
begin
Dmconexcao.ClientDataSet1.Open;
  Dmconexcao.ClientDataSet1.Insert;
end;

procedure TFormCadastro.RadioGroup1Click(Sender: TObject);
  begin
    case RadioGroup1.ItemIndex of
      0:
        Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'P';
      1:
        Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'E';
      2:
        Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'VP';
      3:
        Dmconexcao.ClientDataSet1TIPO_APOLICE.AsString := 'VE';
    end;
  end;

end.
