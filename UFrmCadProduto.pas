unit UFrmCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Menus, Vcl.ToolWin;

type
  TFormCadProduto = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit_ID: TDBEdit;
    DBEdit_DT_CAD: TDBEdit;
    CB_ST_PDT: TDBComboBox;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit_NM_PDT: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    CB_SN_CPL: TDBComboBox;
    Label5: TLabel;
    DBEdit_VR_LAG: TDBEdit;
    DBEdit_VR_ALT: TDBEdit;
    DBEdit_VR_ESP: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    LK_FAM_PDT: TDBLookupComboBox;
    LK_GRU_PDT: TDBLookupComboBox;
    LK_UNI_PDT: TDBLookupComboBox;
    LK_UNI_CMP: TDBLookupComboBox;
    Label10: TLabel;
    DBEdit_DT_RMC: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit_PS_PDT: TDBEdit;
    DBEdit_VR_FAT_CVS: TDBEdit;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit_QT_SLD_ATU: TDBEdit;
    DBEdit_QT_SLD_PED: TDBEdit;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit_QT_SLD_MIN: TDBEdit;
    Label20: TLabel;
    DBEdit_QT_SLD_MAX: TDBEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    DBEdit18: TDBEdit;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBEdit_PR_ULT_CMP: TDBEdit;
    DBEdit_VR_ULT_CUS: TDBEdit;
    DBEdit_VR_CUS_MED: TDBEdit;
    DBEdit_DT_ULT_CMP: TDBEdit;
    Label24: TLabel;
    DBEdit_PC_LUC: TDBEdit;
    Label25: TLabel;
    Button1: TButton;
    Button2: TButton;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit_PR_PRZ_VRJ: TDBEdit;
    DBEdit_PR_PRZ_ATA: TDBEdit;
    Label28: TLabel;
    DBEdit_PC_CMS_VRJ: TDBEdit;
    Label29: TLabel;
    DBEdit_PC_CMS_ATA: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit37: TDBEdit;
    GroupBox13: TGroupBox;
    Label40: TLabel;
    DBEdit_CD_NCM: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit_PC_RDC: TDBEdit;
    Label44: TLabel;
    DBEdit_AL_ICM_VND: TDBEdit;
    GroupBox14: TGroupBox;
    CB_TP_ITE: TDBComboBox;
    CB_CD_GEN_ITE: TDBComboBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit_AL_IPI: TDBEdit;
    CB_CD_CST_IPS: TDBComboBox;
    GroupBox15: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit_PC_RDC_CMP: TDBEdit;
    Label51: TLabel;
    DBEdit_AL_ICM_M12: TDBEdit;
    Label52: TLabel;
    DBEdit_AL_ICM_ICR: TDBEdit;
    Label53: TLabel;
    Label54: TLabel;
    CB_CD_CST_IPE: TDBComboBox;
    DBEdit_AL_IPI_CMP: TDBEdit;
    DBGrid2: TDBGrid;
    Btn_incluir: TButton;
    Btn_Deletar: TButton;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    CB_TP_EPF_PDT: TDBComboBox;
    CB_ST_RVD: TDBComboBox;
    DBEdit_CD_MAT_PRI: TDBEdit;
    DBEdit_AL_MVA_RVD: TDBEdit;
    Label58: TLabel;
    GroupBox16: TGroupBox;
    Label59: TLabel;
    DBEdit_CD_OBS_DUF: TDBEdit;
    GroupBox17: TGroupBox;
    Label60: TLabel;
    DBEdit_CD_OBS_FUF: TDBEdit;
    DBMemo3: TDBMemo;
    CB_SN_FAT_CVS: TDBComboBox;
    CB_SN_CTL_ETQ: TDBComboBox;
    CB_SN_TAB_PRC: TDBComboBox;
    CB_SN_IND: TDBComboBox;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    DsFamPro: TDataSource;
    DsGruPro: TDataSource;
    DsUniPro: TDataSource;
    DsUniCMP: TDataSource;
    GroupBox18: TGroupBox;
    Label64: TLabel;
    GroupBox19: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label65: TLabel;
    DBEdit6: TDBEdit;
    DBEdit_CD_PDT: TDBEdit;
    CB_CST_CPM: TComboBox;
    CB_CD_CST: TComboBox;
    CB_CD_CST_CMP1: TComboBox;
    CB_CD_CST_CMP2: TComboBox;
    Edit_MAT_PRI: TEdit;
    Memo_CD_OBS_DUF: TMemo;
    Memo_CD_OBS_FUF: TMemo;
    Panel_PDTTBT: TPanel;
    Btn_Gravar: TButton;
    Btn_cancelar: TButton;
    DBEdit_AL_ICM: TDBEdit;
    DBEdit_AL_FECOP: TDBEdit;
    CB_UF_ORG: TDBComboBox;
    DSPDTTBT: TDataSource;
    SP_GEN_PDT: TSQLStoredProc;
    PopupMenu1: TPopupMenu;
    RelaodeProdutos1: TMenuItem;
    RelaodeSaldoatual1: TMenuItem;
    RelatriodosProdutoscomtrminodeSTnaMV1: TMenuItem;
    RelaodeprodutosporSituaofiscal1: TMenuItem;
    RelaodeprodutosporTIPIReiceitaFederal1: TMenuItem;
    RelaadeprodutosporNBMSituaofiscal1: TMenuItem;
    RelaodeprodutosporNBMparaverificaodoCEST1: TMenuItem;
    EtiquetadeProdutos1: TMenuItem;
    EtiquetadeProdutosVolumes1: TMenuItem;
    ProdutosproduzidocomrespectivaMatriaPrima1: TMenuItem;
    Contagemparainvetrio1: TMenuItem;
    N1: TMenuItem;
    Estatsticas1: TMenuItem;
    Estoque1: TMenuItem;
    Livrosfiscais1: TMenuItem;
    curvaABCprodutos1: TMenuItem;
    Produtosvendidosnumperodo1: TMenuItem;
    fichadeSadadeInsumos1: TMenuItem;
    FichadeRemententedeInsumos1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit_PR_ULT_CMPEnter(Sender: TObject);
    procedure DBEdit_VR_ULT_CUSEnter(Sender: TObject);
    procedure DBEdit_VR_CUS_MEDEnter(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    function  Verifica_CD_PDT : boolean;
    procedure DBEdit_CD_PDTExit(Sender: TObject);
    procedure Alimenta_CST;
    procedure Alimenta_CST_CMP;
    procedure CB_CST_CPMExit(Sender: TObject);
    procedure gravarCST;
    procedure gravarCST_CMP;
    procedure Edit_venda_CST;
    procedure Edit_venda_CST_CMP;
    procedure AcEditarExecute(Sender: TObject);
    procedure DBEdit_CD_MAT_PRIExit(Sender: TObject);
    procedure DBEdit_CD_MAT_PRIKeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet8Show(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure DescObsNTFDUF;
    procedure DescObsNTFFUF;
    procedure DBEdit_CD_OBS_DUFExit(Sender: TObject);
    procedure DBEdit_CD_OBS_FUFExit(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure HabilitaPDTTBT;
    procedure Btn_incluirClick(Sender: TObject);
    procedure Btn_DeletarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_cancelarClick(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure Consulta_MAT_PRI;
    procedure abrirCDSPDTTBT;
    procedure btnImprimirClick(Sender: TObject);

  private

    { Private declarations }
  public
    { Public declarations }
    function Verifica_PDTTBT:Boolean;
  end;

var
  FormCadProduto: TFormCadProduto;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;



procedure TFormCadProduto.AcEditarExecute(Sender: TObject);
begin
  inherited;
  Alimenta_CST;
  Alimenta_CST_CMP;
  Edit_venda_CST;
  Edit_venda_CST_CMP;
  abrirCDSPDTTBT;
end;

procedure TFormCadProduto.abrirCDSPDTTBT;
begin
  DMcadastro.CDSPDTTBT.Close;
  DMcadastro.CDSPDTTBT.CommandText := '';
  DMcadastro.CDSPDTTBT.CommandText := 'select * from db_pdttbt where db_pdttbt.id_pdt =:pIDPDT';
  DMcadastro.CDSPDTTBT.ParamByName('pIDPDT').AsInteger := DMcadastro.CDSProdutID.AsInteger;
  DMcadastro.CDSPDTTBT.Open;
end;



procedure TFormCadProduto.AcIncluirExecute(Sender: TObject);
begin
  inherited;
  Alimenta_CST;
  Alimenta_CST_CMP;

  try
   DMcadastro.CDSEmpresa.Open;
   if  DMcadastro.CDSEmpresaSN_DIG_PDT.AsString = 'SIM' then // verifica se o parametro da empresa esta configurado para digitar o cod do produto manualmente.
       begin
       FormCadProduto.DBEdit_CD_PDT.Enabled :=  true;
       DMcadastro.CDSProdutCD_PDT.Clear;
       end;

   if  DMcadastro.CDSEmpresaSN_DIG_PDT.AsString = 'NÃO' then // verifica se o parametro da empresa esta configurado para preencher automaticamente o cod do produto.
       begin
       FormCadProduto.DBEdit_CD_PDT.Enabled :=  False;
       DMcadastro.CDSProdutCD_PDT.AsInteger :=  DMcadastro.CDSProdutID.AsInteger;
       end;
   finally
    DMcadastro.CDSEmpresa.close;
 end;
end;

procedure TFormCadProduto.Alimenta_CST;
begin
    DMcadastro.CDSEmpresa.Open;
 if DMcadastro.CDSEmpresaCD_REG_TBT.AsString = '3' then
   begin
   FormCadProduto.CB_CST_CPM.Clear;
   FormCadProduto.CB_CST_CPM.Items.Add('00 - Tributada integralmente');
   FormCadProduto.CB_CST_CPM.Items.Add('10 - Tributada e com cobrança do ICMS por substituição tributária');
   FormCadProduto.CB_CST_CPM.Items.Add('20 - Com redução de base de cálculo');
   FormCadProduto.CB_CST_CPM.Items.Add('30 - Isenta ou não tributada e com cobrança do ICMS por substituição tributária');
   FormCadProduto.CB_CST_CPM.Items.Add('40 - Isenta');
   FormCadProduto.CB_CST_CPM.Items.Add('41 - Não tributada');
   FormCadProduto.CB_CST_CPM.Items.Add('50 - Suspensão');
   FormCadProduto.CB_CST_CPM.Items.Add('51 - Diferimento');
   FormCadProduto.CB_CST_CPM.Items.Add('60 - ICMS cobrado anteriormente por substituição tributária');
   FormCadProduto.CB_CST_CPM.Items.Add('70 - Com redução de base de cálculo e cobrança do ICMS por substituição tributária');
   FormCadProduto.CB_CST_CPM.Items.Add('90 - Outras');
   FormCadProduto.CB_CST_CPM.ItemIndex := -1;
   end else
    begin
     FormCadProduto.CB_CST_CPM.Clear;
     FormCadProduto.CB_CST_CPM.Items.Add('101 Tributada pelo S.Nacional c/permissão de crédito.');
     FormCadProduto.CB_CST_CPM.Items.Add('102 Tributada pelo S.Nacional s/permissão de crédito.');
     FormCadProduto.CB_CST_CPM.Items.Add('103 Isenção Icms no S.Nacional p/faixa de receita bruta.');
     FormCadProduto.CB_CST_CPM.Items.Add('201 Tributada pelo S.Nacional c/permissão de Créd.e c/cob.Icms por ST.');
     FormCadProduto.CB_CST_CPM.Items.Add('202 Tributada pelo S.Nacional s/permissão de Créd.e c/cob.Icms por ST.');
     FormCadProduto.CB_CST_CPM.Items.Add('203 Isenção Icms no S.Nacional p/fx.receita bruta e c/cob.Icms por ST.');
     FormCadProduto.CB_CST_CPM.Items.Add('300 Imune.');
     FormCadProduto.CB_CST_CPM.Items.Add('400 Não tributada pelo S.Nacional.');
     FormCadProduto.CB_CST_CPM.Items.Add('500 Icms cobrado anteriormente por ST(substituído) ou por antecipação.');
     FormCadProduto.CB_CST_CPM.Items.Add('900 OUTROS.');
     FormCadProduto.CB_CST_CPM.ItemIndex := -1;
    end;
end;

procedure TFormCadProduto.Alimenta_CST_CMP;
begin
     DMcadastro.CDSEmpresa.Open;
 if DMcadastro.CDSEmpresaCD_REG_TBT.AsString = '3' then
   begin
   FormCadProduto.CB_CD_CST_CMP2.Clear;
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('00 - Tributada integralmente');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('10 - Tributada e com cobrança do ICMS por substituição tributária');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('20 - Com redução de base de cálculo');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('30 - Isenta ou não tributada e com cobrança do ICMS por substituição tributária');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('40 - Isenta');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('41 - Não tributada');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('50 - Suspensão');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('51 - Diferimento');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('60 - ICMS cobrado anteriormente por substituição tributária');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('70 - Com redução de base de cálculo e cobrança do ICMS por substituição tributária');
   FormCadProduto.CB_CD_CST_CMP2.Items.Add('90 - Outras');
   formCadProduto.CB_CD_CST_CMP2.ItemIndex := -1;
   formCadProduto.CB_CD_CST.ItemIndex :=-1;
   formCadProduto.CB_CD_CST_CMP1.ItemIndex := -1;
   end else
    begin
     FormCadProduto.CB_CD_CST_CMP2.Clear;
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('101 Tributada pelo S.Nacional c/permissão de crédito.');
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('102 Tributada pelo S.Nacional s/permissão de crédito.');
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('103 Isenção Icms no S.Nacional p/faixa de receita bruta.');
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('201 Tributada pelo S.Nacional c/permissão de Créd.e c/cob.Icms por ST.');
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('202 Tributada pelo S.Nacional s/permissão de Créd.e c/cob.Icms por ST.');
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('203 Isenção Icms no S.Nacional p/fx.receita bruta e c/cob.Icms por ST.');
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('300 Imune.');
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('400 Não tributada pelo S.Nacional.');
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('500 Icms cobrado anteriormente por ST(substituído) ou por antecipação.');
     FormCadProduto.CB_CD_CST_CMP2.Items.Add('900 OUTROS.');
     formCadProduto.CB_CD_CST_CMP2.ItemIndex := -1;
     formCadProduto.CB_CD_CST.ItemIndex :=-1;
     formCadProduto.CB_CD_CST_CMP1.ItemIndex := -1;
    end;
end;



procedure TFormCadProduto.btnImprimirClick(Sender: TObject);
  var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormCadProduto.Btn_cancelarClick(Sender: TObject);
begin
  inherited;
  DMcadastro.CDSPDTTBT.CancelUpdates;
  HabilitaPDTTBT;
end;

procedure TFormCadProduto.Btn_DeletarClick(Sender: TObject);
begin
  inherited;
 if DMcadastro.CDSPDTTBT.IsEmpty =  false then
    begin
    if Application.MessageBox('Tem certeza que deseja deletar o registro ??', 'Confirmação', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDYES then
       DMcadastro.CDSPDTTBT.Delete;
    end;

end;

procedure TFormCadProduto.Btn_GravarClick(Sender: TObject);
begin
  inherited;
  //DMcadastro.CDSPDTTBTCD_USU.AsString := FormPrincipal.usu
  DMcadastro.CDSPDTTBT.ApplyUpdates(0);
  HabilitaPDTTBT;
end;

procedure TFormCadProduto.Btn_incluirClick(Sender: TObject);
begin
  inherited;
DSPDTTBT.DataSet.Insert;
HabilitaPDTTBT;
end;

procedure TFormCadProduto.CB_CST_CPMExit(Sender: TObject);
var cst : string;
begin
  inherited;

end;


procedure TFormCadProduto.Consulta_MAT_PRI;
 var Q : TSQLQUERY;
begin
    if DBEdit_CD_MAT_PRI.Text <> '' then
    begin
    q := TSQLQuery.Create(nil);
    q.SQLConnection := DMcadastro.SQLConnection1;
    q.SQL.Clear;
    q.sql.Add('select * from db_produt where db_produt.id =:pCOD');
    q.ParamByName('pCod').AsInteger :=  strtoint(DBEdit_CD_MAT_PRI.Text);
    q.Open;
        if q.IsEmpty = false then
         begin
           Edit_MAT_PRI.Text := q.FieldByName('NM_PDT').AsString;
         end else
         begin
           DBEdit_CD_MAT_PRI.Clear;
           DMcadastro.CDSProdutCD_MAT_PRI.AsString := '';
           ShowMessage('Produto não encontrado !!!');
         end;
    end else
    Edit_MAT_PRI.Text := '';
end;

procedure TFormCadProduto.DBEdit_CD_MAT_PRIExit(Sender: TObject);

begin
  inherited;
  Consulta_MAT_PRI;
end;

procedure TFormCadProduto.DBEdit_CD_MAT_PRIKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not( key in['0'..'9',#13,#8]) then
    key:=#0;
end;

procedure TFormCadProduto.DBEdit_CD_OBS_DUFExit(Sender: TObject);
begin
  inherited;
DescObsNTFDUF;
end;

procedure TFormCadProduto.DBEdit_CD_OBS_FUFExit(Sender: TObject);
begin
  inherited;
  DescObsNTFFUF;
end;

procedure TFormCadProduto.DBEdit_CD_PDTExit(Sender: TObject);
begin
  inherited;
  if Verifica_CD_PDT = false then
    begin
     DBEdit_CD_PDT.Clear;
     ShowMessage('Já Existe produto com esse código / código em branco');
     abort;
    end;


end;

procedure TFormCadProduto.DBEdit_PR_ULT_CMPEnter(Sender: TObject);
begin
  inherited;
  DBEdit_PR_ULT_CMP.Text := TiraPonto(DBEdit_PR_ULT_CMP.Text);

end;

procedure TFormCadProduto.DBEdit_VR_CUS_MEDEnter(Sender: TObject);
begin
  inherited;
 DBEdit_VR_CUS_MED.Text :=  TiraPonto(DBEdit_VR_CUS_MED.Text);
end;

procedure TFormCadProduto.DBEdit_VR_ULT_CUSEnter(Sender: TObject);
begin
  inherited;
DBEdit_VR_ULT_CUS.Text :=  TiraPonto(DBEdit_VR_ULT_CUS.Text);
end;

procedure TFormCadProduto.DescObsNTFDUF;
var q : TSQLQuery;
begin
    Memo_CD_OBS_DUF.Clear;
 if DMcadastro.CDSProdutCD_OBS_DUF.AsString <> '' then
    begin
     try
     q :=  TSQLQuery.Create(nil);
     q.SQLConnection := DMcadastro.SQLConnection1;
     q.SQL.Clear;
     q.SQL.Add('select * from db_obsntf where id =:pCod');
     q.ParamByName('pcod').AsInteger := strtoint(DBEdit_CD_OBS_DUF.Text);
     q.Open;

     if q.IsEmpty =  false then
       begin
        Memo_CD_OBS_DUF.Text := q.FieldByName('ds_obs').AsString;
       end else
           begin
           Memo_CD_OBS_DUF.Clear;
           DMcadastro.CDSProdutCD_OBS_DUF.Clear;
           ShowMessage('Código de Observação não encontrado !!!');
           end;
     finally
      q.Free;
     end;
    end;


end;

procedure TFormCadProduto.DescObsNTFFUF;
var q : TSQLQuery;
begin
    Memo_CD_OBS_FUF.Clear;
 if DMcadastro.CDSProdutCD_OBS_FUF.AsString <> '' then
    begin
     try
     q :=  TSQLQuery.Create(nil);
     q.SQLConnection := DMcadastro.SQLConnection1;
     q.SQL.Clear;
     q.SQL.Add('select * from db_obsntf where id =:pCod');
     q.ParamByName('pcod').AsInteger := strtoint(DBEdit_CD_OBS_FUF.Text);
     q.Open;

     if q.IsEmpty =  false then
       begin
        Memo_CD_OBS_FUF.Text := q.FieldByName('ds_obs').AsString;
       end else
           begin
           Memo_CD_OBS_FUF.Clear;
           DMcadastro.CDSProdutCD_OBS_FUF.Clear;
           ShowMessage('Código de Observação não encontrado !!!');
           end;
     finally
      q.Free;
     end;
    end;
end;


procedure TFormCadProduto.Edit_venda_CST;
var S1,S2 : string;
    I,index : integer;
begin
    try
     DMcadastro.CDSEmpresa.Open;
     if DMcadastro.CDSEmpresaCD_REG_TBT.AsString <> '3' then
       begin
       s1 := copy(DMcadastro.CDSProdutCD_CST_CMP.AsString,1,1);
       s2 := copy(DMcadastro.CDSProdutCD_CST_CMP.AsString,2,4);

       for I := 0 to CB_CD_CST_CMP1.Items.Count do // varrendo o combobox CB_CD_CST_CMP1 !!!
           begin
           CB_CD_CST_CMP1.ItemIndex := I;
           if copy(CB_CD_CST_CMP1.Text,1,1) = s1 then
               begin
                index := CB_CD_CST_CMP1.ItemIndex;
               end;
           end;
       CB_CD_CST_CMP1.ItemIndex := index;



       for I := 0 to CB_CD_CST_CMP2.Items.Count do // varrendo o combobox CB_CST_CPM !!!
           begin
           CB_CD_CST_CMP2.ItemIndex := I;
           if copy(CB_CD_CST_CMP2.Text,2,4) = s2 then
               begin
                index := CB_CD_CST_CMP2.ItemIndex;
               end;
           end;
       CB_CD_CST_CMP2.ItemIndex := index;

       end else begin
       s1 := copy(DMcadastro.CDSProdutCD_CST_CMP.AsString,1,1);
       s2 := copy(DMcadastro.CDSProdutCD_CST_CMP.AsString,2,3);

       for I := 0 to CB_CD_CST_CMP1.Items.Count do // varrendo o combobox CB_CD_CST_CMP1 !!!
           begin
           CB_CD_CST_CMP1.ItemIndex := I;
           if copy(CB_CD_CST_CMP1.Text,1,1) = s1 then
               begin
                index := CB_CD_CST_CMP1.ItemIndex;
               end;
           end;
       CB_CD_CST_CMP1.ItemIndex := index;

       for I := 0 to CB_CD_CST_CMP2.Items.Count do // varrendo o combobox CB_CD_CST_CMP2 !!!
           begin
           CB_CD_CST_CMP2.ItemIndex := I;
           if copy(CB_CD_CST_CMP2.Text,1,2) = s2 then
               begin
                index := CB_CD_CST_CMP2.ItemIndex;
               end;
           end;
       CB_CD_CST_CMP2.ItemIndex := index;

       end;
    finally
     DMcadastro.CDSEmpresa.close;
    end;
end;

procedure TFormCadProduto.Edit_venda_CST_CMP;
var S1,S2 : string;
    I,index : integer;
begin
    try
     DMcadastro.CDSEmpresa.Open;
     if DMcadastro.CDSEmpresaCD_REG_TBT.AsString <> '3' then
       begin
       s1 := copy(DMcadastro.CDSProdutCD_CST.AsString,1,1);
       s2 := copy(DMcadastro.CDSProdutCD_CST.AsString,2,4);

       for I := 0 to CB_CD_CST.Items.Count do // varrendo o combobox CB_CD_CST !!!
           begin
           CB_CD_CST.ItemIndex := I;
           if copy(CB_CD_CST.Text,1,1) = s1 then
               begin
                index := CB_CD_CST.ItemIndex;
               end;
           end;

       CB_CD_CST.ItemIndex := index;

       for I := 0 to CB_CST_CPM.Items.Count do // varrendo o combobox CB_CST_CPM !!!
           begin
           CB_CST_CPM.ItemIndex := I;
           if copy(CB_CST_CPM.Text,2,4) = s2 then
               begin
                index := CB_CST_CPM.ItemIndex;
               end;
           end;
       CB_CST_CPM.ItemIndex := index;

       end else begin
       s1 := copy(DMcadastro.CDSProdutCD_CST.AsString,1,1);
       s2 := copy(DMcadastro.CDSProdutCD_CST.AsString,2,3);

       for I := 0 to CB_CD_CST.Items.Count do // varrendo o combobox CB_CD_CST !!!
           begin
           CB_CD_CST.ItemIndex := I;
           if copy(CB_CD_CST.Text,1,1) = s1 then
               begin
                index := CB_CD_CST.ItemIndex;
               end;
           end;
       CB_CD_CST.ItemIndex := index;

       for I := 0 to CB_CST_CPM.Items.Count do // varrendo o combobox CB_CST_CPM !!!
           begin
           CB_CST_CPM.ItemIndex := I;
           if copy(CB_CST_CPM.Text,1,2) = s2 then
               begin
                index := CB_CST_CPM.ItemIndex;
               end;
           end;
       CB_CST_CPM.ItemIndex := index;

       end;
    finally
     DMcadastro.CDSEmpresa.close;
    end;
end;



procedure TFormCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
DsFamPro.DataSet.close;
DsGruPro.DataSet.close;
DsUniPro.DataSet.close;
DSPDTTBT.DataSet.Close;
end;

procedure TFormCadProduto.FormShow(Sender: TObject);
begin
  inherited;
DsFamPro.DataSet.Open;
DsGruPro.DataSet.Open;
DsUniPro.DataSet.Open;
end;

procedure TFormCadProduto.gravarCST;
begin
     try
     DMcadastro.CDSEmpresa.Open;
     if DMcadastro.CDSEmpresaCD_REG_TBT.AsString <> '3' then
       begin
       DMcadastro.CDSProdutCD_CST.AsString := Copy(CB_CD_CST.Text,1,1) + Copy(CB_CST_CPM.Text,1,3) ;
       end else begin
       DMcadastro.CDSProdutCD_CST.AsString := Copy(CB_CD_CST.Text,1,1) + Copy(CB_CST_CPM.Text,1,2) ;
       end;
    finally
     DMcadastro.CDSEmpresa.close;
    end;
end;

procedure TFormCadProduto.gravarCST_CMP;
begin
     try
     DMcadastro.CDSEmpresa.Open;
     if DMcadastro.CDSEmpresaCD_REG_TBT.AsString <> '3' then
       begin
       DMcadastro.CDSProdutCD_CST_CMP.AsString := Copy(CB_CD_CST_CMP1.Text,1,1) + Copy(CB_CD_CST_CMP2.Text,1,3) ;
       end else begin
       DMcadastro.CDSProdutCD_CST_CMP.AsString := Copy(CB_CD_CST_CMP1.Text,1,1) + Copy(CB_CD_CST_CMP2.Text,1,2) ;
       end;
    finally
     DMcadastro.CDSEmpresa.close;
    end;
end;

procedure TFormCadProduto.HabilitaPDTTBT;
begin
 if DSPDTTBT.DataSet.State in [dsInsert] then
    begin
     Panel_PDTTBT.Visible := true;
     Btn_incluir.Visible  := false;
     Btn_Deletar.Visible  := false;
    end;

 if DSPDTTBT.DataSet.State in [dsBrowse] then
    begin
    Panel_PDTTBT.Visible := false;
    Btn_incluir.Visible  := true;
    Btn_Deletar.Visible  := true;
    end;



end;

procedure TFormCadProduto.TabCadastroShow(Sender: TObject);
begin
  inherited;
   PageControl2.ActivePage := TabSheet1;
if DSpadrao.DataSet.State in[dsEdit] then
   begin
    TabSheet7.TabVisible := true;
   end else
    TabSheet7.TabVisible := false;
end;

procedure TFormCadProduto.TabSheet7Show(Sender: TObject);
begin
  inherited;
HabilitaPDTTBT;
end;

procedure TFormCadProduto.TabSheet8Show(Sender: TObject);
begin
  inherited;
Consulta_MAT_PRI;
end;

procedure TFormCadProduto.TabSheet9Show(Sender: TObject);
begin
  inherited;
  DescObsNTFDUF;
  DescObsNTFFUF;

end;

function TFormCadProduto.Verifica_CD_PDT: boolean;
var q : TSQLQuery;
begin
  if (DMcadastro.CDSProdutCD_PDT.AsInteger > 0) and (DMcadastro.CDSProdut.State in [dsInsert])  then
   begin
     try
     q := TSQLQuery.Create(nil);
     q.SQLConnection :=  DMcadastro.SQLConnection1;
     q.SQL.Add('select * from db_produt where db_produt.cd_pdt =:pPDT');
     q.ParamByName('pPDT').AsInteger := DMcadastro.CDSProdutCD_PDT.AsInteger;
     q.Open;

         if q.IsEmpty = true then
            begin
            result := true;
            end else
            result := false;
     finally
      q.Free;
     end;
   end else
   if DMcadastro.CDSProdut.State in [dsInsert] then
      result := false;

 end;

function TFormCadProduto.Verifica_PDTTBT: Boolean;
var
  I: Integer;
begin
  Result := True;
  for I := 0 to DSPDTTBT.DataSet.FieldCount - 1 do
    if DSPDTTBT.DataSet.Fields[I].Required then
      if (DSPDTTBT.DataSet.Fields[I].IsNull) or
        (DSPDTTBT.DataSet.Fields[I].AsString = '') then
      begin
        beep;
        MessageDlg('Preencha o campo "' + DSPDTTBT.DataSet.Fields[I]
          .DisplayLabel + '"', mtInformation, [mbOk], 0);
        Result := False;
        DSPDTTBT.DataSet.Fields[I].FocusControl;
        Break;
      end;
end;

end.
