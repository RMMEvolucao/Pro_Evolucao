unit uFrmConsultaCest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormConsultaCest = class(TForm)
    DSCestConsulta: TDataSource;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Edconsulta: TEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Button1: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaCest: TFormConsultaCest;

implementation

{$R *.dfm}

uses UDmCadastro;

procedure TFormConsultaCest.BitBtn1Click(Sender: TObject);
begin
FormConsultaCest.Close;
end;

procedure TFormConsultaCest.Button1Click(Sender: TObject);
begin
if (Edconsulta.Text <> '') then {Descricao Cest %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

//   DMcadastro.CDSCest.Close;
//   DMcadastro.SQLCest.CommandText := '';
//   DMcadastro.SQLCest.CommandText := 'select * from DB_CEST where DB_CEST.DS_CEST containing  :pConsulta  ';
//   DMcadastro.SQLCest.ParamByName('pconsulta').AsString := EdConsulta.Text;
//   DMcadastro.CDSCest.Open;
 end;
end;

procedure TFormConsultaCest.DBGrid1DblClick(Sender: TObject);
begin
//    DMcadastro.CDSNBM.FieldByName('CD_CEST').AsInteger := DSCestConsulta.DataSet.FieldByName('CD_CEST').AsInteger;
end;

procedure TFormConsultaCest.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//DMCadastro.CDSCest.Close;
end;

procedure TFormConsultaCest.FormCreate(Sender: TObject);
begin
 //DMCadastro.CDSCest.Open;
end;

end.
