unit UfrmTransChqPDparaBX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinLiquidSky, cxTextEdit, cxMaskEdit, cxDropDownEdit,System.DateUtils,
  cxCalendar, Vcl.StdCtrls;

type
  TFormTransPDparaBX = class(TForm)
    GroupBox1: TGroupBox;
    LBCliente: TLabel;
    LbBancoCheque: TLabel;
    LbValor: TLabel;
    LBVencimento: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditObs: TEdit;
    EditDT_DPS: TcxDateEdit;
    BtnCancelar: TButton;
    btnTransferir: TButton;
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
  FormTransPDparaBX: TFormTransPDparaBX;

implementation

{$R *.dfm}

uses UDmCadastro;

procedure TFormTransPDparaBX.BtnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormTransPDparaBX.btnTransferirClick(Sender: TObject);
begin
 if DateTimeToUnix(EditDT_DPS.Date) >0 then
   begin
    try
     DMcadastro.CDSChqPdt.Edit;
     DMcadastro.CDSChqPdtST_CHQ.AsString := 'BX';
     DMcadastro.CDSChqPdtDT_DPS.AsDateTime := EditDT_DPS.Date;

     if  EditObs.Text <> '' then
         DMcadastro.CDSChqPdtDS_OBS_AUX.AsString := EditObs.Text;
    finally
     DMcadastro.CDSChqPdt.ApplyUpdates(0);
     close;
     DMcadastro.CDSChqPdt.Refresh;
    end;
   end else
     begin
      ShowMessage('Favor preenche o campo Data depósito !!');
      abort;
     end;
end;

procedure TFormTransPDparaBX.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 begin
   key := #0;
   PostMessage(handle, WM_KEYDOWN, VK_TAB, 1);
 end;
end;

procedure TFormTransPDparaBX.FormShow(Sender: TObject);
begin
LBCliente.Caption     := DMcadastro.CDSChqPdtNM_CLI.AsString;
LbBancoCheque.Caption := LbBancoCheque.Caption+ ' '+DMcadastro.CDSChqPdtNO_BCO.AsString +' / '+ DMcadastro.CDSChqPdtNO_CHQ.AsString;
LbValor.Caption       := LbValor.Caption + ' '+ FormatFloat('#,0.00',  DMcadastro.CDSChqPdtVR_CHQ.AsFloat);
LBVencimento.Caption  := LBVencimento.Caption+ ' ' + DMcadastro.CDSChqPdtDT_VCT.AsString;

EditDT_DPS.Date := date;
end;

end.
