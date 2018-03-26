unit UFrmTransPPparaDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinLiquidSky, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls,System.dateUtils,sqlExpr;

type
  TFormTransPPparaDV = class(TForm)
    GroupBox1: TGroupBox;
    LBCliente: TLabel;
    LbBancoCheque: TLabel;
    LbValor: TLabel;
    LBVencimento: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditObs: TEdit;
    btnTransferir: TButton;
    BtnCancelar: TButton;
    EditDT_DVL: TcxDateEdit;
    procedure btnTransferirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    procedure Transferir;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransPPparaDV: TFormTransPPparaDV;

implementation

{$R *.dfm}

uses UDmCadastro;

procedure TFormTransPPparaDV.BtnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormTransPPparaDV.btnTransferirClick(Sender: TObject);

begin
  Transferir;
end;

procedure TFormTransPPparaDV.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 begin
   key := #0;
   PostMessage(handle, WM_KEYDOWN, VK_TAB, 1);
 end;
end;

procedure TFormTransPPparaDV.FormShow(Sender: TObject);
begin
 LBCliente.Caption     := DMcadastro.CDSChqPdtNM_CLI.AsString;
 LbBancoCheque.Caption := LbBancoCheque.Caption+ ' '+DMcadastro.CDSChqPdtNO_BCO.AsString +' / '+ DMcadastro.CDSChqPdtNO_CHQ.AsString;
 LbValor.Caption       := LbValor.Caption + ' '+ FormatFloat('#,0.00',  DMcadastro.CDSChqPdtVR_CHQ.AsFloat);
 LBVencimento.Caption  := LBVencimento.Caption+ ' ' + DMcadastro.CDSChqPdtDT_VCT.AsString;
 EditDT_DVL.Date       := date;
end;

procedure TFormTransPPparaDV.Transferir;
var
  q: TSQLQuery;
begin
  if DateTimeToUnix(EditDT_DVL.Date) > 0 then
  begin
    DMcadastro.CDSChqPdt.Edit;
    try

      q := Tsqlquery.Create(nil);
      q.SQLConnection := DMcadastro.SQLConnection1;
      q.SQL.Clear;
      q.SQL.Add('select db_chqpdt.dt_dvl_1,db_chqpdt.dt_dvl_2  from db_chqpdt where db_chqpdt.id =:pCod ');
      q.ParamByName('pCod').AsInteger := DMcadastro.CDSChqPdtID.AsInteger;
      q.Open;

      if DateTimeToUnix(q.FieldByName('dt_dvl_1').AsDateTime) > 0 then
      begin
        DMcadastro.CDSChqPdtDT_DVL_2.AsDateTime := EditDT_DVL.Date;
      end
      else
      begin
        DMcadastro.CDSChqPdtDT_DVL_1.AsDateTime := EditDT_DVL.Date;
      end;

      if EditObs.Text <> '' then
         DMcadastro.CDSChqPdtDS_OBS_AUX.AsString := EditObs.Text;
         DMcadastro.CDSChqPdtST_CHQ.AsString := 'PP';
      finally
         DMcadastro.CDSChqPdt.ApplyUpdates(0);
         DMcadastro.CDSChqPdt.Refresh;
         close;
    end;
  end
  else
  begin
    ShowMessage('Favor verificar se os campo |Data Devolução|' + ''#13'' + 'então preenchidos corretamente !');
    abort;
  end;
end;

end.
