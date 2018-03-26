unit UfrmTransChqBxparaDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinLiquidSky, Vcl.StdCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar,sqlexpr;

type
  TFormTransBXparaDV = class(TForm)
    GroupBox1: TGroupBox;
    LBCliente: TLabel;
    LbBancoCheque: TLabel;
    LbValor: TLabel;
    LBVencimento: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditObs: TEdit;
    CB_Alinea: TComboBox;
    Cb_vendedor: TComboBox;
    EditDT_DVL: TcxDateEdit;
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
  procedure BuscarVendedor;
  end;

var
  FormTransBXparaDV: TFormTransBXparaDV;

implementation

{$R *.dfm}

uses UDmCadastro, System.DateUtils,UFrmPrincipal;

{ TFormTransBXparaDV }

procedure TFormTransBXparaDV.BtnCancelarClick(Sender: TObject);
begin
close;
end;

procedure TFormTransBXparaDV.btnTransferirClick(Sender: TObject);
var q : tsqlquery;

begin
 if (CB_Alinea.Text <>'' ) and
    (DateTimeToUnix(EditDT_DVL.Date)>0) and
    (Cb_vendedor.Text <>'' ) then
 begin
   DMcadastro.CDSChqPdt.Edit;
   try
   q :=  Tsqlquery.Create(nil);
   q.SQLConnection := DMcadastro.SQLConnection1;
   q.SQL.Clear;
   q.SQL.Add(' select db_chqpdt.dt_dvl_1,db_chqpdt.dt_dvl_2,db_chqpdt.cd_ali_1,db_chqpdt.cd_ali_2  from db_chqpdt where db_chqpdt.id =:pCod ');
   q.ParamByName('pCod').AsInteger := DMcadastro.CDSChqPdtID.AsInteger;
   q.Open;

    if (DateTimeToUnix(q.FieldByName('dt_dvl_1').AsDateTime) >0) and (q.FieldByName('cd_ali_1').AsString <> '') then
      begin
      DMcadastro.CDSChqPdtDT_DVL_2.AsDateTime    := DMcadastro.CDSChqPdtDT_DVL_1.AsDateTime;
      DMcadastro.CDSChqPdtCD_ALI_2.AsString      := DMcadastro.CDSChqPdtCD_ALI_1.AsString;
      DMcadastro.CDSChqPdtDT_DVL_1.AsDateTime    := EditDT_DVL.Date;
      DMcadastro.CDSChqPdtCD_ALI_1.AsString      := CB_Alinea.Text;
      end else
       begin
       DMcadastro.CDSChqPdtDT_DVL_1.AsDateTime   := EditDT_DVL.Date;
       DMcadastro.CDSChqPdtCD_ALI_1.AsString     := CB_Alinea.Text;
       end;

       DMcadastro.CDSChqPdtID_VENDEDOR.AsInteger := strtoint(Copy(Cb_vendedor.Text,1,3));

       if EditObs.Text <> '' then
          DMcadastro.CDSChqPdtDS_OBS_AUX.AsString := EditObs.Text;

       DMcadastro.CDSChqPdtST_CHQ.AsString        := 'DV';

   finally
      FreeAndNil(q);
      DMcadastro.CDSChqPdt.ApplyUpdates(0);
      DMcadastro.CDSChqPdt.Refresh;
      close;
   end;
 end else
   begin
    ShowMessage('Favor verificar se os campos Alinea/Data Devolução/Vendedor'+#13+
                'então preenchidos corretamente !');
    abort;
   end;
end;

procedure TFormTransBXparaDV.BuscarVendedor;
var q : tsqlquery;

begin
 Cb_vendedor.Clear;
 q :=  tsqlquery.Create(nil);
 q.SQLConnection := DMcadastro.SQLConnection1;
 q.SQL.Clear;
 q.SQL.Add('select db_vendedor.id,db_vendedor.nm_ven from db_vendedor WHERE  db_vendedor.id_empresa =:pEmp');
 q.ParamByName('pEmp').AsInteger := empresa;
 q.Open;

 try
 while not q.Eof do
  begin
  Cb_vendedor.Items.Add(format('%.3d', [q.FieldByName('id').AsInteger])+' ' + q.FieldByName('NM_VEN').AsString);
  q.Next;
  end;

 finally
  FreeAndNil(q);
 end;
end;

procedure TFormTransBXparaDV.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
   key := #0;
   PostMessage(handle, WM_KEYDOWN, VK_TAB, 1);
 end;
end;

procedure TFormTransBXparaDV.FormShow(Sender: TObject);
begin
 LBCliente.Caption     := DMcadastro.CDSChqPdtNM_CLI.AsString;
 LbBancoCheque.Caption := LbBancoCheque.Caption+ ' '+DMcadastro.CDSChqPdtNO_BCO.AsString +' / '+ DMcadastro.CDSChqPdtNO_CHQ.AsString;
 LbValor.Caption       := LbValor.Caption + ' '+ FormatFloat('#,0.00',  DMcadastro.CDSChqPdtVR_CHQ.AsFloat);
 LBVencimento.Caption  := LBVencimento.Caption+ ' ' + DMcadastro.CDSChqPdtDT_VCT.AsString;
 EditDT_DVL.Date       := date;
 BuscarVendedor;
end;

end.
