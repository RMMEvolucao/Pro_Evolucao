unit UFrmNBM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls;

type
  TFormNBM = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText_ID: TDBText;
    DBEdit_CD_NBM: TDBEdit;
    DBEdit_NM_NBM: TDBEdit;
    DBEdit_AL_MVA: TDBEdit;
    DBEdit_AL_NAC: TDBEdit;
    DBEdit_AL_IMP: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    DBEdit_CD_CEST: TDBEdit;
    DBMemo_DS_CEST: TDBMemo;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNBM: TFormNBM;

implementation

{$R *.dfm}

uses UDmCadastro, uFrmConsultaCest, UFrmCest;

procedure TFormNBM.SpeedButton5Click(Sender: TObject);
begin
  inherited;
try
Application.CreateForm(TFormCest,FormCest);
FormCest.ShowModal;
finally
FormCest.Free;
end;
end;

end.
