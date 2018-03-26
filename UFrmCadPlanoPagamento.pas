unit UFrmCadPlanoPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls;

type
  TFormCadPlanoPagamento = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit_ID: TDBEdit;
    DBEdit_NM_PLN_PGT: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Edit1a3: TEdit;
    Edit4a6: TEdit;
    Edit7a9: TEdit;
    Edit10a12: TEdit;
    Edit13a15: TEdit;
    Edit16a18: TEdit;
    Edit22a24: TEdit;
    Edit28a30: TEdit;
    Edit25a27: TEdit;
    Edit19a21: TEdit;
    Edit31a33: TEdit;
    Edit49a51: TEdit;
    Edit34a36: TEdit;
    Edit37a39: TEdit;
    Edit40a42: TEdit;
    Edit43a45: TEdit;
    Edit46a48: TEdit;
    Edit52a54: TEdit;
    Edit58a60: TEdit;
    Edit55a57: TEdit;
    Edit61a63: TEdit;
    Edit64a66: TEdit;
    Edit67a69: TEdit;
    Edit70a72: TEdit;
    Edit73a75: TEdit;
    Edit76a78: TEdit;
    Edit79a81: TEdit;
    Edit82a84: TEdit;
    Edit85a87: TEdit;
    Edit88a90: TEdit;
   procedure verificaTeclado(Sender: TObject; var Key: Char);
    procedure TabCadastroShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure formatNumb(var valor : string);
    procedure Edit1a3Exit(Sender: TObject);
    procedure FormEdits(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadPlanoPagamento: TFormCadPlanoPagamento;

implementation

{$R *.dfm}

uses UDmCadastro;


{ TFormCadPlanoPagamento }



procedure TFormCadPlanoPagamento.Edit1a3Exit(Sender: TObject);
begin
  inherited;
//   Edit1a3.Text := Format('%.3d',[strtoint(Edit1a3.Text)]);
end;

procedure TFormCadPlanoPagamento.formatNumb(var valor : string);
begin
   Format('%.3d',[strtoint(valor)]);
end;

procedure TFormCadPlanoPagamento.FormEdits(Sender: TObject);
begin
  inherited;
 if TEdit(sender).Text <> '' then
    TEdit(sender).Text := Format('%.3d',[strtoint(Tedit(sender).Text)]);
end;

procedure TFormCadPlanoPagamento.TabCadastroShow(Sender: TObject);
begin
  inherited;
 FormCadPlanoPagamento.Width  :=  651;
 FormCadPlanoPagamento.Height :=  300;
 FormCadPlanoPagamento.Top    :=  (Screen.DesktopHeight - FormCadPlanoPagamento.Height) DIV 2;
 FormCadPlanoPagamento.Left   :=  (Screen.DesktopWidth  - FormCadPlanoPagamento.Width)  DIV 2;
end;

procedure TFormCadPlanoPagamento.TabConsultaShow(Sender: TObject);
begin
  inherited;
 FormCadPlanoPagamento.Width  :=  round(Screen.Width  - 30);
 FormCadPlanoPagamento.Height :=  round(Screen.Height - 70);
 FormCadPlanoPagamento.Top    :=  (Screen.DesktopHeight - FormCadPlanoPagamento.Height) DIV 2;
 FormCadPlanoPagamento.Left   :=  (Screen.DesktopWidth  - FormCadPlanoPagamento.Width)  DIV 2;
end;

procedure TFormCadPlanoPagamento.verificaTeclado(Sender: TObject;
  var Key: Char);
begin
   if not( key in['0'..'9',#13,#8]) then
     key:=#0;
end;

end.
