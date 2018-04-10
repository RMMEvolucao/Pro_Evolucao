unit UFrmTransportadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxHyperLinkEdit, ACBrBase, ACBrValidador, frxClass, frxDBSet, Vcl.Menus,
  frxExportPDF, dxGDIPlusClasses, cxImage, cxGroupBox, cxButtons, frxExportXLS,
  frxDMPExport, Vcl.ToolWin;

type
  TFormTransportadora = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText_ID: TDBText;
    cxDBDateEdit_DT_CAD: TcxDBDateEdit;
    DBCombo_ST_TRN: TDBComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit_NM_TRN: TDBEdit;
    DBEdit_NM_TRN_FAN: TDBEdit;
    DBEdit_NM_CTT_RSP: TDBEdit;
    DBEdit_NO_CNP_CPF: TDBEdit;
    Label9: TLabel;
    DBEdit_ID_CEP: TDBEdit;
    DBEdit_NM_CID: TDBEdit;
    DBEdit_NM_RUA: TDBEdit;
    DBEdit_NM_BAI: TDBEdit;
    DBEdit_UF_CID: TDBEdit;
    DBEdit_NO_PLC_VEI: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit_NO_EDR: TDBEdit;
    DBEdit_DS_CPL: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit_NO_FON: TDBEdit;
    Label18: TLabel;
    DBEdit_NO_FAX: TDBEdit;
    Label19: TLabel;
    DBEdit_NO_CEL: TDBEdit;
    dsCep: TDataSource;
    Label20: TLabel;
    Label21: TLabel;
    cxDBHomePage: TcxDBHyperLinkEdit;
    Label22: TLabel;
    DBEdit_E_MAIL: TDBEdit;
    ACBrValidador1: TACBrValidador;
    btn_cons_cep: TSpeedButton;
    EdCodbanco: TEdit;
    Dbedit_NM_LOC_COB: TDBEdit;
    Dscobranca: TDataSource;
    Label23: TLabel;
    Dbedit_CD_AGC: TDBEdit;
    Label24: TLabel;
    DBEdit_NO_CTA_COR: TDBEdit;
    Label7: TLabel;
    DBEdit_NO_INS_EST: TDBEdit;
    FR_Transportadora: TfrxReport;
    frxDBTransportadora: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    FR_TransportadoraM: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure AcIncluirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcEditarExecute(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure DBEdit_NO_PLC_VEIExit(Sender: TObject);
    procedure DBEdit_NO_CNP_CPFExit(Sender: TObject);
    procedure DBEdit_NO_CNP_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure btn_cons_cepClick(Sender: TObject);
    procedure EdCodbancoExit(Sender: TObject);
    procedure DBEditNO_CTA_CORExit(Sender: TObject);
    procedure DBEditNO_CTA_COREnter(Sender: TObject);
    procedure DBEditNO_CTA_CORKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEdit_NO_CTA_CORExit(Sender: TObject);
    procedure DBEdit_NO_INS_ESTExit(Sender: TObject);
    procedure DBMemo_DS_OBSKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_NO_CTA_COREnter(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure FR_TransportadoraGetValue(const VarName: string;
      var Value: Variant);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure FR_TransportadoraMGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
  private
    procedure codbanco;
    procedure contacorrente(sender: tobject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransportadora: TFormTransportadora;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmCep, UFrmPrincipal;

procedure TFormTransportadora.AcEditarExecute(Sender: TObject);
begin
  inherited;
  Dscobranca.Enabled := true;
  FormTransportadora.DBCombo_ST_TRN.SetFocus;
  codbanco;
  if DSpadrao.DataSet.FieldByName('NO_CTA_COR').AsString <> ''  then
  contacorrente(sender);
end;

procedure TFormTransportadora.AcIncluirExecute(Sender: TObject);
begin
  inherited;
  Dscobranca.Enabled := false;
  FormTransportadora.DBCombo_ST_TRN.SetFocus;
  DMcadastro.CDSTransportadoraDT_CAD.AsDateTime := Date;
  DMcadastro.CDSTransportadoraST_TRN.AsString := 'ATIVO';
  codbanco;
end;

procedure TFormTransportadora.BtConsultarClick(Sender: TObject);
begin
  inherited;

  if (cbConsulta.ItemIndex = 0) and (Edconsulta.text <> '')
  then { consulta por Código Categoria %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  }
  begin

    DMcadastro.CDSTransportadora.Close;
    DMcadastro.SQLTransportadora.CommandText := '';
    DMcadastro.SQLTransportadora.CommandText := 'select db_Transportadora.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_Transportadora inner join db_cep on db_cep.id = db_Transportadora.id_cep '
                                               +'where DB_Transportadora.ID  =:PConsulta ';
    DMcadastro.SQLTransportadora.ParamByName('pconsulta').AsInteger := strtoint(Edconsulta.text);
    DMcadastro.CDSTransportadora.open;
  end;

  if (cbConsulta.ItemIndex = 1) and (Edconsulta.text <> '')
  then { consulta por Código Categoria %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% }
  begin

    DMcadastro.CDSTransportadora.Close;
    DMcadastro.SQLTransportadora.CommandText := '';
    DMcadastro.SQLTransportadora.CommandText := 'select db_Transportadora.*, '
                                               +'db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua,db_cep.no_cep, '
                                               +'db_cep.uf_cid from '
                                               +'db_Transportadora inner join db_cep on db_cep.id = db_Transportadora.id_cep '
                                               +'where DB_Transportadora.nm_trn  containing :PConsulta';
    DMcadastro.SQLTransportadora.ParamByName('pconsulta').AsString := Edconsulta.text;
    DMcadastro.CDSTransportadora.open;
  end;
end;

procedure TFormTransportadora.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
  vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormTransportadora.btn_cons_cepClick(Sender: TObject);
begin
  inherited;
  try
  Application.CreateForm(TFormCep,FormCep);
  formCep.showmodal;
  finally
  formCep.Free;
  end;
end;

procedure TFormTransportadora.DBEditNO_CTA_COREnter(Sender: TObject);
begin
  inherited;
   DMcadastro.CDSVendedor.FieldByName('NO_CTA_COR').EditMask := '';
end;

procedure TFormTransportadora.DBEditNO_CTA_CORExit(Sender: TObject);
begin
  inherited;
contacorrente(sender);
end;

procedure TFormTransportadora.DBEditNO_CTA_CORKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if not (key in ['0'..'9',#8,#13]) then
     key := #0;
end;

procedure TFormTransportadora.DBEdit_NO_CNP_CPFExit(Sender: TObject);
begin
  inherited;
if Length(DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString) = 11 then
  BEGIN
    ACBrValidador1.Documento := DBEdit_NO_CNP_CPF.text;
    ACBrValidador1.TipoDocto := docCPF;

    if NOT ACBrValidador1.Validar then
    begin
      showmessage('CPF Inválido, informe um número válido !!');
      DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end
    else begin
      DMcadastro.CDSTransportadora.FieldByName('NO_CNP_CPF').EditMask :=
        '###.###.###-##;0';

    end;
  end
  else

  if Length(DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString) = 14 then
  BEGIN
    ACBrValidador1.Documento := DBEdit_NO_CNP_CPF.text;
    ACBrValidador1.TipoDocto := docCNPJ;

    if NOT ACBrValidador1.Validar then
    begin
      showmessage('CNPJ Inválido, informe um número válido !!');
      DBEdit_NO_CNP_CPF.SetFocus;
      abort;
    end
    else begin
      DMcadastro.CDSTransportadora.FieldByName('NO_CNP_CPF').EditMask :=
        '##.###.###/####-##;0';
      
    end;
  end else
  if (DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString <> '') or
     (length(DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString) <> 14) or
     (length(DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString) <> 11) then
       begin
        ShowMessage('Número de CNPJ / CPF Inválido!');
        DBEdit_NO_CNP_CPF.SetFocus  ;
       end;

end;

procedure TFormTransportadora.DBEdit_NO_CNP_CPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', #8, #13]) then
    Key := #0;
end;

procedure TFormTransportadora.DBEdit_NO_CTA_COREnter(Sender: TObject);
begin
  inherited;
DMcadastro.CDSTransportadora.FieldByName('NO_CTA_COR').EditMask := '';
end;

procedure TFormTransportadora.DBEdit_NO_CTA_CORExit(Sender: TObject);
begin
  inherited;
contacorrente(sender);
end;

procedure TFormTransportadora.DBEdit_NO_INS_ESTExit(Sender: TObject);
begin
  inherited;
 if (DBEdit_NO_INS_EST.text <> '') and (DSPadrao.DataSet.FieldByName('UF_CID').AsString <> '') then
  begin
    ACBrValidador1.TipoDocto := docInscEst;
    ACBrValidador1.Documento := DBEdit_NO_INS_EST.text;
    ACBrValidador1.Complemento := DSPadrao.DataSet.FieldByName('UF_CID').AsString;

    if not ACBrValidador1.Validar then
    begin
      beep;
        MessageDlg('Numero Inscrição Estadual Inválido!', mtInformation, [mbOk], 0);
        DBEdit_NO_INS_EST.SetFocus;
        abort;
    end;
  end
  else
  begin
    showmessage
      ('Favor informar o CEP antes de adcionar a Inscrição Estadual');
  end;
end;

procedure TFormTransportadora.DBEdit_NO_PLC_VEIExit(Sender: TObject);
begin
  inherited;
if DBEdit_UF_CID.Text  = '' then
      begin
       btn_cons_cep.Click;

     end;
end;

procedure TFormTransportadora.DBMemo_DS_OBSKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
Key := AnsiUpperCase( Key )[1];
end;

procedure TFormTransportadora.EdCodbancoExit(Sender: TObject);
begin
  inherited;
 Dscobranca.Enabled := true;
  if EdCodbanco.Text <> '' then
  begin
    if not Dscobranca.DataSet.Locate('CD_LOC_COB',EdCodbanco.Text,[]) then
        begin
        ShowMessage('Código de banco não encontrado!');
        Dscobranca.Enabled := false;
        EdCodbanco.SetFocus;
        end
        else
        dspadrao.DataSet.FieldByName('id_banco').AsInteger := DMcadastro.CDSLocalCobrancaID.AsInteger;
        dsPadrao.DataSet.FieldByName('NM_BCO').AsString    := dmCadastro.CDSLocalCobrancaNM_LOC_COB.asString; // gravando banco

  end;

end;

procedure TFormTransportadora.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if cbConsulta.ItemIndex = 0 then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormTransportadora.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FR_Transportadora.PrepareReport;
  frxXLSExport1.DefaultPath   := CAMINHOxls;
  frxXLSExport1.FileName     := 'rTransportadora_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FR_Transportadora.Export(frxXLSExport1);
end;

procedure TFormTransportadora.ExportarPDF1Click(Sender: TObject);
var caminhoRep : string;
begin
  inherited;
  CaminhoRep := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FR_Transportadora.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoRep;
  frxPDFExport1.FileName := 'rTransportadora_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FR_Transportadora.Export(frxPDFExport1);
end;

procedure TFormTransportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
dmCadastro.CDSTransportadora.Close;
dmcadastro.CDSLocalCobranca.Close;
dmCadastro.CDSCEP.Close;
end;

procedure TFormTransportadora.FormCreate(Sender: TObject);
begin
  inherited;
dmCadastro.CDSTransportadora.Open;
dmcadastro.CDSLocalCobranca.Open;
dmCadastro.CDSCEP.Open;
end;


procedure TFormTransportadora.FormShow(Sender: TObject);
begin
  inherited;
  Dscobranca.DataSet.Open;
end;

procedure TFormTransportadora.FR_TransportadoraMGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormTransportadora.FR_TransportadoraGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormTransportadora.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
FR_Transportadora.ShowReport;
end;

procedure TFormTransportadora.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_TransportadoraM.ShowReport;
end;

procedure TFormTransportadora.codbanco;
begin
 if Dscobranca.DataSet.Locate('id', DSpadrao.DataSet.FieldByName('id_banco').AsInteger,[]) then
    begin
//if DSpadrao.DataSet.FieldByName('id_banco').AsInteger >=1 then
     EdCodbanco.Text := Dscobranca.DataSet.FieldByName('CD_LOC_COB').AsString
    end
     else begin
     EdCodbanco.Clear;
     DMcadastro.CDSTransportadora.FieldByName('NO_CTA_COR').EditMask := '';
     end;
end;


procedure TFormTransportadora.contacorrente(sender: tobject);
var quant ,I: integer;
begin
  inherited;
  quant :=  Length(DMcadastro.CDSTransportadora.FieldByName('NO_CTA_COR').asstring);
  DMcadastro.CDSTransportadora.FieldByName('NO_CTA_COR').EditMask := '';
   for I := 0 to quant do
     begin
     if I = quant-1 then
     DMcadastro.CDSTransportadora.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSTransportadora.FieldByName('NO_CTA_COR').EditMask + '-#;0'
     else
     DMcadastro.CDSTransportadora.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSTransportadora.FieldByName('NO_CTA_COR').EditMask + '#';
     end;
end;

end.
