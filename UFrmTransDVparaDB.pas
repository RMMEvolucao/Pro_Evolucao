unit UFrmTransDVparaDB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinLiquidSky, Vcl.StdCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TFormTransDVparaDB = class(TForm)
    GroupBox1: TGroupBox;
    LBCliente: TLabel;
    LbBancoCheque: TLabel;
    LbValor: TLabel;
    LBVencimento: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditObs: TEdit;
    EditDT_RCB: TcxDateEdit;
    BtnCancelar: TButton;
    btnTransferir: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnTransferirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransDVparaDB: TFormTransDVparaDB;

implementation

{$R *.dfm}

uses UDmCadastro, system.dateUtils;

procedure TFormTransDVparaDB.BtnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormTransDVparaDB.btnTransferirClick(Sender: TObject);
begin
  if DateTimeToUnix(EditDT_RCB.Date) >0   then
  begin
     try
     DMcadastro.CDSChqPdt.Edit;
     DMcadastro.CDSChqPdtDT_RCB.AsDateTime := EditDT_RCB.Date;
     if EditObs.Text <> '' then
     DMcadastro.CDSChqPdtDS_OBS_AUX.AsString := EditObs.Text;
     DMcadastro.CDSChqPdtST_CHQ.AsString := 'DB';
     finally
     DMcadastro.CDSChqPdt.ApplyUpdates(0);
     DMcadastro.CDSChqPdt.Refresh;
     close;
     end;

  end else
     begin
     ShowMessage('Data de recebimento nao pode ficar em branco !!');
     abort;
     end;
  end;



procedure TFormTransDVparaDB.FormShow(Sender: TObject);
begin
 LBCliente.Caption     := DMcadastro.CDSChqPdtNM_CLI.AsString;
 LbBancoCheque.Caption := LbBancoCheque.Caption+ ' '+DMcadastro.CDSChqPdtNO_BCO.AsString +' / '+ DMcadastro.CDSChqPdtNO_CHQ.AsString;
 LbValor.Caption       := LbValor.Caption + ' '+ FormatFloat('#,0.00',  DMcadastro.CDSChqPdtVR_CHQ.AsFloat);
 LBVencimento.Caption  := LBVencimento.Caption+ ' ' + DMcadastro.CDSChqPdtDT_VCT.AsString;
 EditDT_RCB.Date       := date;
end;

end.
