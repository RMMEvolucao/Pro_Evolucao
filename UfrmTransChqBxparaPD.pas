unit UfrmTransChqBxparaPD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinLiquidSky, cxTextEdit,System.DateUtils,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFormTransBXparaPD = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    btnTransferir: TButton;
    BtnCancelar: TButton;
    LBCliente: TLabel;
    LbBancoCheque: TLabel;
    LbValor: TLabel;
    LBVencimento: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    EditObs: TEdit;
    EditDT_VEN: TcxDateEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnTransferirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransBXparaPD: TFormTransBXparaPD;

implementation

{$R *.dfm}

uses UDmCadastro;

procedure TFormTransBXparaPD.BtnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormTransBXparaPD.btnTransferirClick(Sender: TObject);
var vct, An1,An2,An3 : TDate;
    obs: string;
begin
  if DateTimeToUnix(EditDT_VEN.Date)>0 then
  begin

   if  DateTimeToUnix(DMcadastro.CDSChqPdtDT_VCT_2.AsDateTime)>0 then
        An3 := DMcadastro.CDSChqPdtDT_VCT_2.AsDateTime;

   if  DateTimeToUnix(DMcadastro.CDSChqPdtDT_VCT_1.AsDateTime)>0 then
        An2 := DMcadastro.CDSChqPdtDT_VCT_1.AsDateTime;

   if  DateTimeToUnix(DMcadastro.CDSChqPdtDT_VCT.AsDateTime)>0 then
        An1 := DMcadastro.CDSChqPdtDT_VCT.AsDateTime;
        vct := EditDT_VEN.Date;
  end;

  if EditObs.Text <> '' then
    obs := EditObs.Text;

 DMcadastro.CDSChqPdt.Edit;
  try
   with DMcadastro do
   begin
    CDSChqPdtST_CHQ.AsString     := 'PD';

    if  DateTimeToUnix(an3)>0 then
    CDSChqPdtDT_VCT_3.AsDateTime := an3;
    if DateTimeToUnix(an2)>0 then
    CDSChqPdtDT_VCT_2.AsDateTime := an2;
    if DateTimeToUnix(an1)>0 then
    CDSChqPdtDT_VCT_1.AsDateTime := an1;
    if DateTimeToUnix(vct)>0 then
    CDSChqPdtDT_VCT.AsDateTime   := vct ;
    if obs <> '' then
    CDSChqPdtDS_OBS_AUX.AsString := obs;
    end;

  finally
    DMcadastro.CDSChqPdt.ApplyUpdates(0);
    close;
    DMcadastro.CDSChqPdt.Refresh;
  end;

end;

procedure TFormTransBXparaPD.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
   key := #0;
   PostMessage(handle, WM_KEYDOWN, VK_TAB, 1);
 end;
end;

procedure TFormTransBXparaPD.FormShow(Sender: TObject);
var data :string;
begin
LBCliente.Caption     := DMcadastro.CDSChqPdtNM_CLI.AsString;
LbBancoCheque.Caption := LbBancoCheque.Caption + ' ' + DMcadastro.CDSChqPdtNO_BCO.AsString +' / '+ DMcadastro.CDSChqPdtNO_CHQ.AsString;
LbValor.Caption       := LbValor.Caption       + ' ' + FormatFloat('#,0.00',  DMcadastro.CDSChqPdtVR_CHQ.AsFloat);
LBVencimento.Caption  := LBVencimento.Caption  + ' ' + DMcadastro.CDSChqPdtDT_VCT.AsString;
EditDT_VEN.Date       := date;
end;


end.
