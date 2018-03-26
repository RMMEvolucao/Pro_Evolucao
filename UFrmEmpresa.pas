unit UFrmEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2013White, dxSkinVisualStudio2013Light, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.DBCtrls, cxTextEdit, Vcl.StdCtrls,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, DBAccess, Uni, ACBrBase,
  ACBrSocket, ACBrCEP, Vcl.Mask, MemDS,sqlexpr, Datasnap.DBClient, ACBrValidador,
  Data.FMTBcd, dxSkinGlassOceans, IdThreadComponent,Data.DBXCommon , IdBaseComponent,
  dxSkinWhiteprint, UFrameCep, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, Vcl.Menus, cxButtons, frxClass, frxDBSet,
  Datasnap.Provider, StrUtils, frxExportPDF, frxExportXLS, frxDMPExport;

type
  TFormCadEmpresa = class(TFormCadPadrao)
    PageControl2: TPageControl;
    TabDadosCadastro: TTabSheet;
    TabFatEstoque: TTabSheet;
    GroupBox3: TGroupBox;
    Label34: TLabel;
    Label36: TLabel;
    DBeditNO_NTF: TcxDBTextEdit;
    DbeditSerieNFE: TcxDBTextEdit;
    GroupBox4: TGroupBox;
    Label38: TLabel;
    Label39: TLabel;
    DbeditDtEstoqueInicial: TcxDBTextEdit;
    DbeditUltimoInventario: TcxDBTextEdit;
    TabMarkup: TTabSheet;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label40: TLabel;
    cxDBTextEdit48: TcxDBTextEdit;
    DbeditAL_ICM_MKP: TcxDBTextEdit;
    DbeditAL_PIS_MKC: TcxDBTextEdit;
    DbeditAL_COF_MKC: TcxDBTextEdit;
    DbeditPC_DPA_MKP: TcxDBTextEdit;
    dbeditPC_DPF_MKP: TcxDBTextEdit;
    dbeditPC_DPE_MKP: TcxDBTextEdit;
    dbeditPC_CMS_MKP: TcxDBTextEdit;
    dbeditPC_MLC_MKP: TcxDBTextEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBeditNM_EMP: TcxDBTextEdit;
    DBeditDT_CAD: TcxDBDateEdit;
    DBeditNM_FAN: TcxDBTextEdit;
    DBeditNO_CNP_CPF: TcxDBTextEdit;
    ACBrCEP1: TACBrCEP;
    Label50: TLabel;
    DbIDempresa: TcxDBTextEdit;
    CBRegimeTributario: TComboBox;
    TabContador: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    DbEditNomeContador: TcxDBTextEdit;
    DbEditCPFContador: TcxDBTextEdit;
    DbeditEmailContador: TcxDBTextEdit;
    DbeditCrcContador: TcxDBTextEdit;
    DbeditCNPJContador: TcxDBTextEdit;
    Label49: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    DbeditNO_FON_CTD: TcxDBTextEdit;
    DbEditNO_EDR_CTD: TcxDBTextEdit;
    Label67: TLabel;
    DbeditDS_CPL_CTD: TcxDBTextEdit;
    DbeditNO_FAX_CTD: TcxDBTextEdit;
    Label68: TLabel;
    Label69: TLabel;
    DbeditNO_CEL_CTD: TcxDBTextEdit;
    Label70: TLabel;
    CDSCEPMult: TClientDataSet;
    CDSCEPMultID_CEP: TIntegerField;
    CDSCEPMultUF_CID: TStringField;
    CDSCEPMultendereco: TStringField;
    CDSCEPMultbairro: TStringField;
    CDSCEPMultcidade: TStringField;
    DBgridCep: TDBGrid;
    PanelCEP: TPanel;
    Label71: TLabel;
    GroupBox7: TGroupBox;
    Label16: TLabel;
    DBeditNO_FON: TcxDBTextEdit;
    Label17: TLabel;
    DBeditNO_FAX: TcxDBTextEdit;
    Label18: TLabel;
    DBeditNO_CEL: TcxDBTextEdit;
    GroupBox8: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DBeditNO_EDR: TcxDBTextEdit;
    Label14: TLabel;
    DbEditDS_CPL: TcxDBTextEdit;
    Label15: TLabel;
    Label12: TLabel;
    DBeditNO_INS_EST: TcxDBTextEdit;
    ACBrValidador1: TACBrValidador;
    TabPisCofins: TTabSheet;
    Label28: TLabel;
    DbEditAlPis: TcxDBTextEdit;
    Label27: TLabel;
    DbeditAL_COF: TcxDBTextEdit;
    Label29: TLabel;
    dbeditVR_ALG: TcxDBTextEdit;
    Label30: TLabel;
    DbeditCD_FCN: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label31: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    TabSped: TTabSheet;
    Label32: TLabel;
    CBNatureza: TComboBox;
    Label33: TLabel;
    cbAtividade: TComboBox;
    Label73: TLabel;
    cbSituacao: TComboBox;
    dbEditCD_VER_PCF: TcxDBTextEdit;
    Label74: TLabel;
    Label75: TLabel;
    cbCreditoPis: TComboBox;
    TabECF: TTabSheet;
    Label76: TLabel;
    Label77: TLabel;
    dbeditCD_MOD_ECF: TcxDBTextEdit;
    Label78: TLabel;
    dbeditNO_SER_ECF: TcxDBTextEdit;
    Label79: TLabel;
    DbeditNO_CXA_ECF: TcxDBTextEdit;
    CbCD_MOD_FIS: TDBComboBox;
    Label80: TLabel;
    CBEscituracao: TComboBox;
    DbeditUF: TcxDBTextEdit;
    DbEditCidade: TcxDBTextEdit;
    DbEditEndereco: TcxDBTextEdit;
    DBeditBairro: TcxDBTextEdit;
    DbeditUFCon: TcxDBTextEdit;
    DbeditCidadeCon: TcxDBTextEdit;
    DbeditEnderecoCon: TcxDBTextEdit;
    DbeditBairroCon: TcxDBTextEdit;
    GroupBox2: TGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    DbEditNM_CTT: TcxDBTextEdit;
    DbeditE_MAIL_CTT: TcxDBTextEdit;
    ACBrCEP2: TACBrCEP;
    DScontador: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    Btn_CEP: TSpeedButton;
    Btn_CEP_Contador: TSpeedButton;
    tabPrmVenda: TTabSheet;
    GroupBox9: TGroupBox;
    Label19: TLabel;
    DbeditVR_PED_MAX: TcxDBTextEdit;
    GroupBox10: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox11: TGroupBox;
    Label8: TLabel;
    EdConVen: TEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Btn_Add_Ven: TcxButton;
    Btn_rem_ven: TcxButton;
    DsVenEmp: TDataSource;
    SP_GEN_VEN: TSQLStoredProc;
    DSVENDEDOR: TDataSource;
    FR_Empresa_Laser: TfrxReport;
    frxDBEmpresa: TfrxDBDataset;
    frxDBDataset_VEN_EMPRESA: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    SQLVenEmp: TSQLDataSet;
    SQLVenEmpID: TIntegerField;
    SQLVenEmpID_COD_VEN: TIntegerField;
    SQLVenEmpID_EMPRESA: TIntegerField;
    SQLVenEmpNM_VEN: TStringField;
    DSPVenEmp: TDataSetProvider;
    CDSVenEmp: TClientDataSet;
    CDSVenEmpID: TIntegerField;
    CDSVenEmpID_COD_VEN: TIntegerField;
    CDSVenEmpID_EMPRESA: TIntegerField;
    CDSVenEmpNM_VEN: TStringField;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    FR_Empresa_Matricial: TfrxReport;
    DBLookupComboBox1: TDBLookupComboBox;
    DSPaises: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label20: TLabel;
    DB_CB_CLI_ATL: TDBComboBox;
    Label21: TLabel;
    DBComboBox1: TDBComboBox;
    procedure FormShow(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcGravarExecute(Sender: TObject);
    procedure DBgridCepCellClick(Column: TColumn);
    procedure DBgridCepKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBgridCepDblClick(Sender: TObject);
    procedure DBGridCepContadorCellClick(Column: TColumn);
    procedure DBGridCepContadorDblClick(Sender: TObject);
    procedure DBGridCepContadorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBeditNO_INS_ESTExit(Sender: TObject);
    procedure CBNaturezaSelect(Sender: TObject);
    procedure cbAtividadeSelect(Sender: TObject);
    procedure cbSituacaoSelect(Sender: TObject);
    procedure cbCreditoPisSelect(Sender: TObject);
    procedure CBEscituracaoSelect(Sender: TObject);

    procedure CepCadastro(sender: TObject);
    procedure CepContador(sender: TObject);

    procedure mostrarcep(Sender: TObject);

    procedure alimentaSped(Sender: Tobject);



    procedure TabCadastroShow(Sender: TObject);
    procedure AcCancelarExecute(Sender: TObject);
    procedure EdCepContadorExit(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure Btn_CEPClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_Add_VenClick(Sender: TObject);
    procedure EdConVenExit(Sender: TObject);
    procedure tabPrmVendaShow(Sender: TObject);
    procedure Btn_rem_venClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure FR_Empresa_LaserGetValue(const VarName: string; var Value: Variant);
    procedure FR_Empresa_LaserPreview(Sender: TObject);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure FR_Empresa_MatricialGetValue(const VarName: string;
      var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private

    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormCadEmpresa: TFormCadEmpresa;
  Q : TSQLQuery;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmCep, UFrmPrincipal;

procedure TFormCadEmpresa.ACBrCEP1BuscaEfetuada(Sender: TObject);
var I: integer;
begin
  inherited;
//     for I := 0 to ACBrCEP1.Enderecos.Count -1 do
//      begin
//       DMcadastro.UniQEmpresaNM_RUA.AsString := ACBrCEP1.Enderecos[I].Logradouro;
//       DMcadastro.UniQEmpresaNM_BAI.AsString := ACBrCEP1.Enderecos[I].Bairro;
//       DMcadastro.UniQEmpresa.FieldByName('NM_CID').AsString := ACBrCEP1.Enderecos[I].Municipio;
//       DMcadastro.UniQEmpresaUF_CID.AsString := ACBrCEP1.Enderecos[I].UF;
//
//      end;
end;

procedure TFormCadEmpresa.AcCancelarExecute(Sender: TObject);
begin
//  if IdThreadAlimenta.Active = false then
  inherited;
  DMcadastro.CDSEmpresa.Refresh;
end;

procedure TFormCadEmpresa.AcEditarExecute(Sender: TObject);
  var IDregistro : integer;
begin
//  q :=  TSQLQuery.Create(nil);
//  q.SQLConnection := DMcadastro.SQLConnection1;
//  q.SQL.Clear;
//  q.SQL.Add('select * from db_empresa where id =:pID with lock');
//  q.ParamByName('pID').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
//  try
//  q.Open;
//  IDregistro := DSpadrao.DataSet.FieldByName('id').AsInteger;
//  DSpadrao.DataSet.Close;
//  DSpadrao.DataSet.open;
//  DSpadrao.DataSet.Locate('ID',IDregistro,[]);
//
//  except
//  ShowMessage('Registro esta sendo Atualizado por outro Usuário !!!');
//  DSpadrao.DataSet.Close;
//  DSpadrao.DataSet.open;
//  abort;
//  end;
  inherited;
  //DSpadrao.DataSet.Open;

end;

procedure TFormCadEmpresa.AcGravarExecute(Sender: TObject);
var TD: TTransactionDesc;
begin
//  if CBRegimeTributario.Text <> '' then
//    begin
//     DMcadastro.CDSEmpresa.FieldByName('CD_REG_TBT').AsInteger := strtoint(CBRegimeTributario.Text[1]);
//    end else
//     begin
//     ShowMessage('Campo Regime Tributários em Branco !!!! ');
//     abort;
//     end;


//  if  Verifica_Campos_Em_Branco  then
//   begin
//    TD.TransactionID := Random(65635);//Q.FieldByName('id').AsInteger;
//    TD.IsolationLevel :=  xilREADCOMMITTED;//xilREPEATABLEREAD;
//    q.SQLConnection.StartTransaction(TD);
//    q.SQLConnection.Commit(TD);
//    q.Close;
//    q.Free;


  inherited;
//   DMcadastro.CDSEmpresa.Refresh;
 end;
//end;

procedure TFormCadEmpresa.AcIncluirExecute(Sender: TObject);
begin
  inherited;
Dspadrao.DataSet.FieldByName('DT_CAD').AsDateTime := now;
CBRegimeTributario.ItemIndex := -1;
//EditCep.Clear;
end;


procedure TFormCadEmpresa.alimentaSped(Sender: Tobject);
begin
   if DMcadastro.CDSEmpresaID_NAT_PJ.AsString <>'' then
    begin
    CBNatureza.ItemIndex := DMcadastro.CDSEmpresaID_NAT_PJ.AsInteger; // natureza
    end else
    CBNatureza.ItemIndex := -1;


  if DMcadastro.CDSEmpresaID_ATV.AsString <> ''then
   begin
   if DMcadastro.CDSEmpresaID_ATV.AsString = '9'then // atividade
    cbAtividade.ItemIndex := 5
      else
       cbAtividade.ItemIndex :=DMcadastro.CDSEmpresaID_ATV.AsInteger;
   end else
   cbAtividade.ItemIndex := -1;


   if DMcadastro.CDSEmpresaID_ESC.AsString <>''  then
     begin
      if DMcadastro.CDSEmpresaID_ESC.AsInteger = 1 then //escrituracao
      CBEscituracao.ItemIndex := 0 ;
      if DMcadastro.CDSEmpresaID_ESC.AsInteger = 2 then //escrituracao
      CBEscituracao.ItemIndex := 1 ;
     end else
      CBEscituracao.ItemIndex := -1 ;


    if DMcadastro.CDSEmpresaID_SIT_ESP.AsString <>'' then
     begin
     cbSituacao.ItemIndex   := DMcadastro.CDSEmpresaID_SIT_ESP.AsInteger; // situacao especial
     end else
     cbSituacao.ItemIndex := -1;



    if DMcadastro.CDSEmpresaCD_BAS_CRD.AsString <> '' then
     begin
     if DMcadastro.CDSEmpresaCD_BAS_CRD.AsInteger >0 then
     cbCreditoPis.ItemIndex := DMcadastro.CDSEmpresaCD_BAS_CRD.AsInteger -1;
     end else
     cbCreditoPis.ItemIndex := -1;
end;

procedure TFormCadEmpresa.BtConsultarClick(Sender: TObject);
begin
  inherited;
if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then
  begin
  DSpadrao.DataSet.Close;
  DMcadastro.SQLEmpresa.CommandText := '';
  DMcadastro.SQLEmpresa.CommandText := 'select db_empresa.*, db_cep.nm_cid, db_cep.nm_bai, '+
                                       'db_cep.nm_rua, db_cep.no_cep, db_cep.id as ID_CEP, '+
                                       'db_cep.uf_cid, CEPContador.nm_cid as NM_CID_CON,   '+
                                       'CEPContador.nm_bai as NM_BAI_CON, CEPContador.nm_rua as NM_RUA_CON, '+
                                       'CEPContador.no_cep as NO_CEP_CON, CEPContador.id as ID_CEP_CONT, '+
                                       'CEPContador.uf_cid as UF_cid_CONT from db_empresa ' +
                                       'inner join db_cep on db_cep.id = db_empresa.id_cep ' +
                                       'inner join db_cep as CEPContador on CEPContador.id = db_empresa.id_cep_contador '+
                                       'where db_empresa.id =:pEmpresa';
  DMcadastro.SQLEmpresa.ParamByName('pEmpresa').AsInteger := strtoint(Edconsulta.Text);
  DSpadrao.DataSet.Open;
  end;

end;

procedure TFormCadEmpresa.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;

   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);

end;

procedure TFormCadEmpresa.Btn_Add_VenClick(Sender: TObject);
var Vid: integer;
begin
    DsVenEmp.DataSet.First;
    if EdConVen.Text = ''
    then exit;

   if DsVenEmp.DataSet.Locate('ID_COD_VEN', StrToInt(EdConVen.Text),[])
    then begin
         ShowMessage('Vendedor já foi adicionado, não pode ser adicionado novamente!');
         DSVENDEDOR.DataSet.Close;
         EdConVen.Clear;
         EdConVen.SetFocus;

         exit;
         end;
   if not DSVENDEDOR.DataSet.Locate('id',StrToInt(EdConVen.Text),[])
    then
        exit;


   if DsVenEmp.DataSet.State in[dsBrowse]
    then begin
           WITH SP_GEN_VEN do
            begin
             Prepared := true;
             ExecProc;
             Prepared := false;
             Vid := ParamByName('ID').AsInteger;
             close;
            end;

         DsVenEmp.DataSet.Insert;
         DsVenEmp.DataSet.FieldByName('ID').AsInteger := Vid;
         DsVenEmp.DataSet.FieldByName('ID_COD_VEN').AsInteger := strtoint(EdConVen.Text);
         DsVenEmp.DataSet.FieldByName('ID_EMPRESA').AsInteger := DSpadrao.DataSet.FieldByName('id').AsInteger;
         TClientDataSet(DsVenEmp.DataSet).ApplyUpdates(0);
         DsVenEmp.DataSet.Refresh;
         DSVENDEDOR.Enabled := false;
         EdConVen.Clear;
         end else begin
                  ShowMessage('Favor Gravar antes de adicionar outro registro!');
                  Abort;
                  end;

  inherited;
end;

procedure TFormCadEmpresa.Btn_CEPClick(Sender: TObject);
begin
  inherited;
 try
 Application.CreateForm(TFormCep, FormCep);
 FormCep.ShowModal;
 finally
 FormCep.Free;
 end;
end;

procedure TFormCadEmpresa.Btn_rem_venClick(Sender: TObject);
begin
  inherited;
      if not DsVenEmp.DataSet.IsEmpty
      then
        if MessageDlg('Deseja mesmo deletar o registro ??', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
               DsVenEmp.DataSet.Delete;
               if DsVenEmp.DataSet is TClientDataSet then
               TClientDataSet(DsVenEmp.DataSet).ApplyUpdates(0);
               end else begin
                        ShowMessage('Não existe registro para deletar!');
                        Abort;
                         end;

end;

procedure TFormCadEmpresa.cbAtividadeSelect(Sender: TObject);
begin
  inherited;
   case cbAtividade.ItemIndex of
 0: DMcadastro.CDSEmpresaID_ATV.AsString := '0';
 1: DMcadastro.CDSEmpresaID_ATV.AsString := '1';
 2: DMcadastro.CDSEmpresaID_ATV.AsString := '2';
 3: DMcadastro.CDSEmpresaID_ATV.AsString := '3';
 4: DMcadastro.CDSEmpresaID_ATV.AsString := '4';
 5: DMcadastro.CDSEmpresaID_ATV.AsString := '9';
 end;


end;

procedure TFormCadEmpresa.cbCreditoPisSelect(Sender: TObject);
begin
  inherited;
  case cbCreditoPis.ItemIndex of
    0: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '01';
    1: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '02';
    2: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '03';
    3: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '04';
    4: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '05';
    5: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '06';
    6: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '07';
    7: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '08';
    8: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '09';
    9: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '10';
   10: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '11';
   11: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '12';
   12: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '13';
   13: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '14';
   14: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '15';
   15: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '16';
   16: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '17';
   17: DMcadastro.CDSEmpresaCD_BAS_CRD.AsString := '18';

  end;

end;

procedure TFormCadEmpresa.CBEscituracaoSelect(Sender: TObject);
begin
  inherited;
  case CBEscituracao.ItemIndex of
  0: DMcadastro.CDSEmpresaID_ESC.AsString := '1';
  1: DMcadastro.CDSEmpresaID_ESC.AsString := '2';
  end;


end;

procedure TFormCadEmpresa.CBNaturezaSelect(Sender: TObject);
begin
  inherited;

 case CBNatureza.ItemIndex of
 0: DMcadastro.CDSEmpresaID_NAT_PJ.AsString := '00';
 1: DMcadastro.CDSEmpresaID_NAT_PJ.AsString := '01';
 2: DMcadastro.CDSEmpresaID_NAT_PJ.AsString := '02';
 3: DMcadastro.CDSEmpresaID_NAT_PJ.AsString := '03';
 4: DMcadastro.CDSEmpresaID_NAT_PJ.AsString := '04';
 5: DMcadastro.CDSEmpresaID_NAT_PJ.AsString := '05';
 end;


end;

procedure TFormCadEmpresa.cbSituacaoSelect(Sender: TObject);
begin
  inherited;
    case cbSituacao.ItemIndex of
 0: DMcadastro.CDSEmpresaID_SIT_ESP.AsString := '0';
 1: DMcadastro.CDSEmpresaID_SIT_ESP.AsString := '1';
 2: DMcadastro.CDSEmpresaID_SIT_ESP.AsString := '2';
 3: DMcadastro.CDSEmpresaID_SIT_ESP.AsString := '3';
 4: DMcadastro.CDSEmpresaID_SIT_ESP.AsString := '4';

end;
end;

procedure TFormCadEmpresa.CepCadastro(sender: TObject);
var query : TSQLQuery;
begin
    end;
procedure TFormCadEmpresa.CepContador(sender: TObject);
var query: Tsqlquery;
begin

end;



procedure TFormCadEmpresa.DBeditNO_INS_ESTExit(Sender: TObject);
begin
  inherited;
   if (DBeditNO_INS_EST.Text <> '') and (DSpadrao.DataSet.FieldByName('ID').AsInteger>0)  then
    begin
     ACBrValidador1.TipoDocto := docInscEst;
     ACBrValidador1.Documento := DBeditNO_INS_EST.Text;
     ACBrValidador1.Complemento := DSpadrao.DataSet.FieldByName('UF_CID').AsString;

      if not ACBrValidador1.Validar then
       begin
       showmessage ('Inscrição Estadual Inválida !!');
       DBeditNO_INS_EST.SetFocus;
       abort;
       end;
    end else
       begin
        ShowMessage('Favor adcionar colocar o CEP antes de adcionar a Inscrição Estadual');
       end;




end;

procedure TFormCadEmpresa.DBgridCepCellClick(Column: TColumn);
begin
  inherited;
//   Dspadrao.DataSet.FieldByName('ID_CEP').AsInteger := DscCEP.DataSet.FieldByName('ID_CEP').AsInteger;
end;

procedure TFormCadEmpresa.DBGridCepContadorCellClick(Column: TColumn);
begin
  inherited;
  // Dspadrao.DataSet.FieldByName('ID_CEP_contador').AsInteger := DSCEPContador.DataSet.FieldByName('ID_CEP').AsInteger;
end;

procedure TFormCadEmpresa.DBGridCepContadorDblClick(Sender: TObject);
begin
  inherited;
//   Dspadrao.DataSet.FieldByName('ID_CEP_contador').AsInteger := DSCEPContador.DataSet.FieldByName('ID_CEP').AsInteger;


end;

procedure TFormCadEmpresa.DBGridCepContadorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if (key = VK_UP) or (Key = VK_DOWN) or (key = VK_RIGHT) or (key = VK_LEFT) then

   begin
//    Dspadrao.DataSet.FieldByName('ID_CEP_Contador').AsInteger := DSCEPContador.DataSet.FieldByName('ID_CEP').AsInteger;
   end;

  if Key = VK_RETURN then
   begin
  //   Dspadrao.DataSet.FieldByName('ID_CEP_contador').AsInteger := DSCEPContador.DataSet.FieldByName('ID_CEP').AsInteger;


   end;
end;

procedure TFormCadEmpresa.DBgridCepDblClick(Sender: TObject);
begin
  inherited;
//     Dspadrao.DataSet.FieldByName('ID_CEP').AsInteger := DSCEPContador.DataSet.FieldByName('ID_CEP').AsInteger;
 //    PanelCEP.Visible := false;
 //    PanelCEP.Enabled := false;
 //    PanelCEP.SendToBack;
end;

procedure TFormCadEmpresa.DBgridCepKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = VK_UP) or (Key = VK_DOWN) or (key = VK_RIGHT) or (key = VK_LEFT) then
    begin
   //  Dspadrao.DataSet.FieldByName('ID_CEP').AsInteger := DscCEP.DataSet.FieldByName('ID_CEP').AsInteger;
    end;

  if Key = VK_RETURN then
   begin
//     Dspadrao.DataSet.FieldByName('ID_CEP').AsInteger := DscCEP.DataSet.FieldByName('ID_CEP').AsInteger;
     PanelCEP.Visible := false;
     PanelCEP.Enabled := false;
     PanelCEP.SendToBack;
   end;
end;

procedure TFormCadEmpresa.EdCepContadorExit(Sender: TObject);
begin
  inherited;
  if Application.MessageBox('Deseja Abrir consulta para mudança de CEP?','Aviso',mb_iconquestion +MB_DEFBUTTON2 +mb_yesno) = idYes then
   CepContador(sender)
  else
   mostrarcep(sender);
end;

procedure TFormCadEmpresa.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if cbConsulta.ItemIndex = 0 then
   begin
     if not(Key in ['0' .. '9', #8, #13]) then
       Key := #0;
   end;
 end;

 procedure TFormCadEmpresa.EdConVenExit(Sender: TObject);
begin
  inherited;
  DSVENDEDOR.DataSet.Open;
  DSVENDEDOR.Enabled := true;
  if EdConVen.Text <> ''
   then
    begin
     if not DSVENDEDOR.DataSet.Locate('ID',EdConVen.Text,[])
      then begin
             DSVENDEDOR.Enabled := false;
             DSVENDEDOR.DataSet.Close;
             ShowMessage('Vendedor não foi localizado!');
             EdConVen.Clear;
             EdConVen.SetFocus;
           end;

   end else begin
             DSVENDEDOR.DataSet.close;
             DSVENDEDOR.Enabled := false;
            end;

end;

procedure TFormCadEmpresa.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FR_Empresa_Laser.PrepareReport;
  frxXLSExport1.DefaultPath   := CAMINHOxls;
  frxXLSExport1.FileName     := 'rCadEmpresa_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FR_Empresa_Laser.Export(frxXLSExport1);

end;

procedure TFormCadEmpresa.ExportarPDF1Click(Sender: TObject);
var
CaminhoRel : string;
begin
  inherited;
  CaminhoRel := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FR_Empresa_Laser.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoRel;
  frxPDFExport1.FileName := 'rCadEmpresa_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FR_Empresa_Laser.Export(frxPDFExport1);
end;

procedure TFormCadEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 dsPaises.DataSet.Close;
end;

procedure TFormCadEmpresa.FormShow(Sender: TObject);
begin
  inherited;
//DMcadastro.UniQCEP.Open;

  PanelCEP.Align   := alClient;
  PanelCEP.Visible := false;
  PanelCEP.Enabled := false;
  dsPaises.DataSet.Open;

 PageControl2.ActivePage := TabDadosCadastro;

end;

procedure TFormCadEmpresa.FR_Empresa_LaserGetValue(const VarName: string;
  var Value: Variant);
  var
  Regime, VNaturezaPessoaJuridica, VAtividadePreponderante, VEscrituracaoNfeECF,
  VIndicadorSituacaoEspecial, VCodBaseCreditoPisCofins : String;
begin
  inherited;

  case (dmCadastro.cdsempresa.fieldbyname('CD_REG_TBT').AsInteger) of
     1 : Regime := '1 - Simples Nacional';
     2 : Regime := '2 - Simples Nacional - Execesso de Sublimite de Receita Bruta';
     3 : Regime := '3 - Regime Normal';
  end;

  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('ID_NAT_PJ').AsString), ['00', '01', '02', '03', '04', '05']) of
     00 : VNaturezaPessoaJuridica := '00 - Pessoa jurídica em geral (não participante de SCP como sócia ostensiva)';
     01 : VNaturezaPessoaJuridica := '01 - Sociedade cooperativa (não participante de SCP como sócia ostensiva)';
     02 : VNaturezaPessoaJuridica := '02 - Entidade sujeita no PIS/Pasep exclusivamente com base na Folha de Salários';
     03 : VNaturezaPessoaJuridica := '03 - Pessoa jurídica em geral participante de SCP como sócia ostensiva';
     04 : VNaturezaPessoaJuridica := '04 - Sociedade cooperativa participante de SCP como sócia ostensiva';
     05 : VNaturezaPessoaJuridica := '05 - Sociedade em Conta de Participação - SCP';
  end;

  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('ID_ATV').AsString), ['0', '1', '2', '3', '4', '9']) of
     0 : VAtividadePreponderante := '0 -  Industrial ou Equiparado a Industrial';
     1 : VAtividadePreponderante := '1 -  Prestador de Serviços';
     2 : VAtividadePreponderante := '2 -  Atividade de Comércio';
     3 : VAtividadePreponderante := '3 -  Atividade de Financeira';
     4 : VAtividadePreponderante := '4 -  Atividade Imobiliária';
     9 : VAtividadePreponderante := '9 -  Outros';
  end;

  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('ID_ESC').AsString), ['1', '2']) of
     0 : VEscrituracaoNfeECF := '1 - Apuração com base nos registros de consolidação das operações por Nf-e(C180 e C190) e por ECF(C490)';
     1 : VEscrituracaoNfeECF := '2 - Apuração com base nos registros individualizado de Nf-e(C100 e C170) e por ECF(C400)Indicador de situação especial';
  end;

  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('ID_SIT_ESP').AsString), ['0', '1', '2', '3', '4']) of
     0 : VIndicadorSituacaoEspecial := '0 - Abertura';
     1 : VIndicadorSituacaoEspecial := '1 - Cisão';
     2 : VIndicadorSituacaoEspecial := '2 - Fusão';
     3 : VIndicadorSituacaoEspecial := '3 - Incorporação';
     4 : VIndicadorSituacaoEspecial := '4 - Encerramento';
  end;

  // Definindo valores Código Base de Crédito Pis/Cofins (CD_BAS_CRD) ---------- Strings atribui valores começado com zero
  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('CD_BAS_CRD').AsString), ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18']) of
     00 : VCodBaseCreditoPisCofins := '01 - Aquisição de Bens para Revenda';
     01 : VCodBaseCreditoPisCofins := '02 - Aquisição de Bens utilizados como Insumo';
     02 : VCodBaseCreditoPisCofins := '03 - Aquisição de serviços utilizados como insumo';
     03 : VCodBaseCreditoPisCofins := '04 - Energia elétrica/térmica, inclusive a vapor';
     04 : VCodBaseCreditoPisCofins := '05 - Aluguéis de prédios';
     05 : VCodBaseCreditoPisCofins := '06 - Aluguéis de máquinas e equipamentos';
     06 : VCodBaseCreditoPisCofins := '07 - Armazenagem de mercadoria e frete na operação de venda';
     07 : VCodBaseCreditoPisCofins := '08 - Contraprestações de arrendamento mercantil';
     08 : VCodBaseCreditoPisCofins := '09 - (Credito S/Encargos de depreciação)Máquinas/equipamentos/outros bens incorporados ao ativo imobilizado';
     09 : VCodBaseCreditoPisCofins := '10 - (Credito c/base Vr.aquisição)Máquinas/equipamentos/outros bens incorporados ao ativo imobilizado';
     10 : VCodBaseCreditoPisCofins := '11 - Amortização e Depreciação de edificações e benfeitorias em imóveis';
     11 : VCodBaseCreditoPisCofins := '12 - Devolução de Vendas Sujeitas à Incidência Não-Cumulativa';
     12 : VCodBaseCreditoPisCofins := '13 - Outras Operações com Direito a Credito';
     13 : VCodBaseCreditoPisCofins := '14 - Atividade de Transporte de Cargas - Subcontratação';
     14 : VCodBaseCreditoPisCofins := '15 - Atv.Imobiliária-Custo Incorrido de Unidade Imobiliária';
     15 : VCodBaseCreditoPisCofins := '16 - Atv.Imobilária-Custo orçado de unidade não concluída';
     16 : VCodBaseCreditoPisCofins := '17 - Atv.de Prestação de Serviços de Limpeza, Conservação e Manutenção - vale-transporte, vale-refeição ou vale-alimentação, fardamento ou uniforme';
     17 : VCodBaseCreditoPisCofins := '18 - Estoque de abertura de bens';
  end;

  // atribuindo valores as váriaveis do fastreport
  if VARNAME = 'regimeTributario' then value          := Regime;
  if VARNAME = 'NaturezaPessoaJuridica' then value    := VNaturezaPessoaJuridica;
  if VARNAME = 'AtividadePreponderante' then value    := VAtividadePreponderante;
  if VARNAME = 'EscrituracaoNfeECF' then value        := VEscrituracaoNfeECF;
  if VARNAME = 'IndicadorSituacaoEspecial' then value := VIndicadorSituacaoEspecial;
  if VARNAME = 'CodBaseCreditoPisCofins' then value   := VCodBaseCreditoPisCofins;
  if VARNAME = 'rUsuario' then value                  := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCadEmpresa.FR_Empresa_LaserPreview(Sender: TObject);
begin
  inherited;
  dmCadastro.CDSVenEmp.Close;
  dmCadastro.SQLVenEmp.ParamByName('pEmp').AsInteger := dmCadastro.CDSEmpresaID.AsInteger;
  dmCadastro.CDSVenEmp.Open;


end;

procedure TFormCadEmpresa.FR_Empresa_MatricialGetValue(const VarName: string;
  var Value: Variant);
  var
  RegimeTributario, NaturezaPessoaJuridica, AtividadePreponderante, EscrituracaoNfeECF, IndicadorSituacaoEspecial, CodBaseCreditoPisCofins : String;

  begin
  inherited;
     case (dmCadastro.cdsempresa.fieldbyname('CD_REG_TBT').AsInteger) of
     1 : RegimeTributario := '1 - Simples Nacional';
     2 : RegimeTributario := '2 - Simples Nacional - Execesso de Sublimite de Receita Bruta';
     3 : RegimeTributario := '3 - Regime Normal';
  end;

  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('ID_NAT_PJ').AsString), ['00', '01', '02', '03', '04', '05']) of
    00 : NaturezaPessoaJuridica := '00 - Pessoa jurídica em geral (não participante de SCP como sócia ostensiva)';
    01 : NaturezaPessoaJuridica := '01 - Sociedade cooperativa (não participante de SCP como sócia ostensiva)';
    02 : NaturezaPessoaJuridica := '02 - Entidade sujeita no PIS/Pasep exclusivamente com base na Folha de Salários';
    03 : NaturezaPessoaJuridica := '03 - Pessoa jurídica em geral participante de SCP como sócia ostensiva';
    04 : NaturezaPessoaJuridica := '04 - Sociedade cooperativa participante de SCP como sócia ostensiva';
    05 : NaturezaPessoaJuridica := '05 - Sociedade em Conta de Participação - SCP';
  end;

  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('ID_ATV').AsString), ['0', '1', '2', '3', '4', '9']) of
    0 : AtividadePreponderante := '0 -  Industrial ou Equiparado a Industrial';
    1 : AtividadePreponderante := '1 -  Prestador de Serviços';
    2 : AtividadePreponderante := '2 -  Atividade de Comércio';
    3 : AtividadePreponderante := '3 -  Atividade de Financeira';
    4 : AtividadePreponderante := '4 -  Atividade Imobiliária';
    9 : AtividadePreponderante := '9 -  Outros';
  end;

  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('ID_ESC').AsString), ['1', '2']) of
     0 : EscrituracaoNfeECF := '1 - Apuração com base nos registros de consolidação das operações por Nf-e(C180 e C190) e por ECF(C490)';
     1 : EscrituracaoNfeECF := '2 - Apuração com base nos registros individualizado de Nf-e(C100 e C170) e por ECF(C400)Indicador de situação especial';
  end;

  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('ID_SIT_ESP').AsString), ['0', '1', '2', '3', '4']) of
     0 : IndicadorSituacaoEspecial := '0 - Abertura';
     1 : IndicadorSituacaoEspecial := '1 - Cisão';
     2 : IndicadorSituacaoEspecial := '2 - Fusão';
     3 : IndicadorSituacaoEspecial := '3 - Incorporação';
     4 : IndicadorSituacaoEspecial := '4 - Encerramento';
  end;

  // Definindo valores Código Base de Crédito Pis/Cofins (CD_BAS_CRD) ---------- Strings atribui valores começado com zero
  case AnsiIndexStr(UpperCase(dmCadastro.CDSEmpresa.FieldByName('CD_BAS_CRD').AsString), ['01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18']) of
     00 : CodBaseCreditoPisCofins := '01 - Aquisição de Bens para Revenda';
     01 : CodBaseCreditoPisCofins := '02 - Aquisição de Bens utilizados como Insumo';
     02 : CodBaseCreditoPisCofins := '03 - Aquisição de serviços utilizados como insumo';
     03 : CodBaseCreditoPisCofins := '04 - Energia elétrica/térmica, inclusive a vapor';
     04 : CodBaseCreditoPisCofins := '05 - Aluguéis de prédios';
     05 : CodBaseCreditoPisCofins := '06 - Aluguéis de máquinas e equipamentos';
     06 : CodBaseCreditoPisCofins := '07 - Armazenagem de mercadoria e frete na operação de venda';
     07 : CodBaseCreditoPisCofins := '08 - Contraprestações de arrendamento mercantil';
     08 : CodBaseCreditoPisCofins := '09 - (Credito S/Encargos de depreciação)Máquinas/equipamentos/outros bens incorporados ao ativo imobilizado';
     09 : CodBaseCreditoPisCofins := '10 - (Credito c/base Vr.aquisição)Máquinas/equipamentos/outros bens incorporados ao ativo imobilizado';
     10 : CodBaseCreditoPisCofins := '11 - Amortização e Depreciação de edificações e benfeitorias em imóveis';
     11 : CodBaseCreditoPisCofins := '12 - Devolução de Vendas Sujeitas à Incidência Não-Cumulativa';
     12 : CodBaseCreditoPisCofins := '13 - Outras Operações com Direito a Credito';
     13 : CodBaseCreditoPisCofins := '14 - Atividade de Transporte de Cargas - Subcontratação';
     14 : CodBaseCreditoPisCofins := '15 - Atv.Imobiliária-Custo Incorrido de Unidade Imobiliária';
     15 : CodBaseCreditoPisCofins := '16 - Atv.Imobilária-Custo orçado de unidade não concluída';
     16 : CodBaseCreditoPisCofins := '17 - Atv.de Prestação de Serviços de Limpeza, Conservação e Manutenção - vale-transporte, vale-refeição ou vale-alimentação, fardamento ou uniforme';
     17 : CodBaseCreditoPisCofins := '18 - Estoque de abertura de bens';
  end;


  if VARNAME = 'MRegimeTributario' then value          := RegimeTributario;
  if VARNAME = 'MNaturezaPessoaJuridica' then value    := NaturezaPessoaJuridica;
  if VARNAME = 'MAtividadePreponderante' then value    := AtividadePreponderante;
  if VARNAME = 'MEscrituracaoNfeECF' then value        := EscrituracaoNfeECF;
  if VARNAME = 'MIndicadorSituacaoEspecial' then value := IndicadorSituacaoEspecial;
  if VARNAME = 'MCodBaseCreditoPisCofins' then value   := CodBaseCreditoPisCofins;
  if VARNAME = 'MUsuario' then value                   := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCadEmpresa.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
  FR_Empresa_Laser.ShowReport;
end;

procedure TFormCadEmpresa.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_Empresa_Matricial.ShowReport();
end;

procedure TFormCadEmpresa.MaskEdit1Exit(Sender: TObject);
begin
  inherited;
//DMcadastro.CDSCEP.close;
//DMcadastro.SQLCEP.CommandText := '';
//DMcadastro.SQLCEP.CommandText  := 'select * from db_cep where no_cep = :pCEP';
//DMcadastro.SQLCEP.ParamByName('pcep').AsString := MaskEdit1.Text;
//DMcadastro.CDSCEP.Open;

end;

procedure TFormCadEmpresa.mostrarcep(Sender: TObject);
var query,querycon : tsqlquery;
begin
//  query := tsqlquery.Create(nil);  //#####QUERY CPF CADASTRO EMPRESA
//  query.SQLConnection := DMcadastro.SQLConnection1;
//  query.SQL.Clear;
//  query.SQL.Add('select * from db_cep where id = :pcep');
//  query.ParamByName('pcep').AsInteger := DMcadastro.CDSEmpresaID_CEP.AsInteger;
//  query.open;
//  CDSCEP.Close;
//  CDSCEP.CreateDataSet;
//  CDSCEP.Open;
//
//  while not query.Eof do
//         begin
//           CDSCEP.insert;
//           CDSCEPID_CEP.AsInteger := query.FieldByName('ID').AsInteger;    // cep
//           CDSCEPUF_CID.AsString  := query.FieldByName('UF_CID').AsString; // UF
//           CDSCEPbairro.AsString  := query.FieldByName('NM_BAI').AsString; // Bairro
//           CDSCEPcidade.AsString  := query.FieldByName('NM_CID').AsString; // Cidade
//           CDSCEPend.AsString     := query.FieldByName('NM_RUA').AsString; // Rua, ou End..
//           CDSCEP.Post;
//           EditCep.Text           := query.FieldByName('NO_CEP').AsString;
//           query.Next
//         end;
//
//  query.Destroy;
//
//
//  querycon := tsqlquery.Create(nil);  //#####QUERY CPE CADASTRO CONTADOR
//  querycon.SQLConnection := DMcadastro.SQLConnection1;
//  querycon.SQL.Clear;
//  querycon.SQL.Add('select * from db_cep where id = :pcep');
//  querycon.ParamByName('pcep').AsInteger := DMcadastro.CDSEmpresaID_CEP_CONTADOR.AsInteger;
//  querycon.open;
//  CDSCEPContador.Close;
//  CDSCEPContador.CreateDataSet;
//  CDSCEPContador.Open;
//
//  while not querycon.Eof do
//         begin
//           CDSCEPContador.Append;
//           CDSCEPContador.FieldByName('ID_CEP').AsInteger  := querycon.FieldByName('ID').AsInteger;    // cep
//           CDSCEPContador.FieldByName('UF_CID').AsString   := querycon.FieldByName('UF_CID').AsString; // UF
//           CDSCEPContador.FieldByName('bairro').AsString   := querycon.FieldByName('NM_BAI').AsString; // Bairro
//           CDSCEPContador.FieldByName('cidade').AsString   := querycon.FieldByName('NM_CID').AsString; // Cidade
//           CDSCEPContador.FieldByName('endereco').AsString := querycon.FieldByName('NM_RUA').AsString; // Rua, ou End..
//           CDSCEPContador.Post;
//           EdCepContador.Text := query.FieldByName('NO_CEP').AsString;
//           query.Next;
//         end;
//        querycon.Destroy;
end;

procedure TFormCadEmpresa.TabCadastroShow(Sender: TObject);
begin
  inherited;
 PageControl2.ActivePage :=  TabDadosCadastro;
  if DMcadastro.CDSEmpresa.State in [dsEdit] then
  begin
   mostrarcep(sender);
   alimentaSped(sender);
   CBRegimeTributario.ItemIndex := DMcadastro.CDSEmpresaCD_REG_TBT.AsInteger -1;
  end;


end;

procedure TFormCadEmpresa.tabPrmVendaShow(Sender: TObject);
begin
  inherited;
    DsVenEmp.DataSet.close;
    DMcadastro.SQLVenEmp.ParamByName('pEMP').AsInteger := DSpadrao.DataSet.FieldByName('id').AsInteger;
    DsVenEmp.DataSet.Open;
end;

end.
