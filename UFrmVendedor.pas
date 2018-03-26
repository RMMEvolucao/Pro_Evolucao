unit UFrmVendedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinGlassOceans, dxSkinOffice2013White,
  dxSkinWhiteprint, cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, Vcl.DBCtrls,
  dxSkinLiquidSky, dxSkinOffice2007Black, dxSkinOffice2013LightGray,
  dxSkinVisualStudio2013Light, cxDropDownEdit, cxCalendar, ACBrBase,
  ACBrValidador, frxClass, Vcl.AppEvnts,StrUtils,dbclient, frxDBSet, Vcl.Menus, cxButtons;

type
  TFormVendedor = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBText_ID: TcxDBTextEdit;
    CBTP_VEN: TDBComboBox;
    Label2: TLabel;
    DBedit_DT_CAD: TcxDBTextEdit;
    Label3: TLabel;
    DBComboBox2: TDBComboBox;
    Label4: TLabel;
    Dbedit_NM_VEN: TcxDBTextEdit;
    Label5: TLabel;
    DbEdit_NM_VEN_RAZ: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    DbEdit_PC_CMS: TcxDBTextEdit;
    CB_SN_CMS: TDBComboBox;
    Label8: TLabel;
    DBEdit_NO_CNP_CPF: TcxDBTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    PageControl2: TPageControl;
    TabCadastro2: TTabSheet;
    TabAcesso: TTabSheet;
    TabObs: TTabSheet;
    GroupBox4: TGroupBox;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    btn_cons_cep: TSpeedButton;
    Label12: TLabel;
    DBEdit_NM_RUA: TDBEdit;
    DBEdit_NO_EDR: TDBEdit;
    Label13: TLabel;
    DBEdit_NM_BAI: TDBEdit;
    Label14: TLabel;
    DBEdit_NM_CID: TDBEdit;
    DBEdit_UF_CID: TDBEdit;
    Label17: TLabel;
    Label15: TLabel;
    GroupBox5: TGroupBox;
    Label18: TLabel;
    Dbedit_NM_LOC_COB: TDBEdit;
    Label19: TLabel;
    Dbedit_CD_AGC: TDBEdit;
    Label20: TLabel;
    DBEdit_NO_CTA_COR: TDBEdit;
    GroupBox6: TGroupBox;
    Label21: TLabel;
    DBEdit_HOME_PAGE: TDBEdit;
    Label22: TLabel;
    DBEdit_E_MAIL: TDBEdit;
    DBMemo1: TDBMemo;
    Label23: TLabel;
    GridPanel1: TGridPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    CK_SN_CLI_EDITAR: TCheckBox;
    CK_SN_CLI_RELATORIOS: TCheckBox;
    CK_SN_PDT_EDITAR: TCheckBox;
    CK_SN_ORM_INCLUIR: TCheckBox;
    CK_SN_ORM_EXCLUIR: TCheckBox;
    CK_SN_ORM_RELATORIOS: TCheckBox;
    CK_SN_ORM_ULTILITARIOS: TCheckBox;
    CK_SN_PED_INCLUIR: TCheckBox;
    CK_SN_PED_EDITAR: TCheckBox;
    CK_SN_PED_EXCLUIR: TCheckBox;
    CK_SN_PED_RELATORIOS: TCheckBox;
    CK_SN_PED_ULTILITARIOS: TCheckBox;
    SN_DIV_FIN_EDITAR: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    SpeedButton5: TSpeedButton;
    CK_SN_CLI_INCLUIR: TCheckBox;
    CK_SN_ORM_EDITAR: TCheckBox;
    DBEditNO_INS_EST: TDBEdit;
    Label16: TLabel;
    Button6: TButton;
    Dbedit_DT_ANV: TcxDBDateEdit;
    ACBrValidador1: TACBrValidador;
    EdCodbanco: TEdit;
    Dscobranca: TDataSource;
    FrVendedor: TfrxReport;
    frxDBDatasetVendedor: TfrxDBDataset;
    Label29: TLabel;
    DBEdit_NO_FAX: TDBEdit;
    Label30: TLabel;
    DBEdit_NO_CEL: TDBEdit;
    ApplicationEvents1: TApplicationEvents;
    TabMetas: TTabSheet;
    gpMetas: TGroupBox;
    DBGrid2: TDBGrid;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit3: TDBEdit;
    Label33: TLabel;
    DsVendedorMetas: TDataSource;
    Btn_pesquisar: TcxButton;
    Btn_Incluir: TcxButton;
    Btn_excluir: TcxButton;
    btn_Editar: TcxButton;
    GBControle: TGroupBox;
    Btn_Gravar: TcxButton;
    Btn_cancelar: TcxButton;
    SP_GEN_Metas: TSQLStoredProc;
    DsMetas: TDataSource;
    CbTipo: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;


    procedure CK_SN_CLI_verificar(sender: TObject);
    procedure CK_SN_PDT_verificar(sender: tobject);
    procedure CK_SN_OCM_verificar(sender : TObject);
    procedure CK_SN_PED_verificar(sender : TObject);
    procedure SN_DIV_FIN_verificar(sender : TObject);
    procedure contacorrente(sender: tobject);




    procedure btn_cons_cepClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure EdCodbancoExit(Sender: TObject);
    procedure DBEdit_NO_CTA_CORExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit_NO_CTA_COREnter(Sender: TObject);
    procedure DBEdit_NO_CTA_CORKeyPress(Sender: TObject; var Key: Char);
    procedure codbanco;
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure EdCodbancoKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_pesquisarClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure CbTipoSelect(Sender: TObject);
    procedure btn_EditarClick(Sender: TObject);
    procedure Btn_excluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_cancelarClick(Sender: TObject);
    procedure CK_SN_CLI;
    procedure CK_SN_PDT;
    procedure CK_SN_OCM;
    procedure CK_SN_PED;
    procedure SN_DIV_FIN;
    procedure TabMetasShow(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure habilita_Btn;
    procedure DBGrid2CellClick(Column: TColumn);
    procedure BtConsultarClick(Sender: TObject);
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure cbConsultaSelect(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormVendedor: TFormVendedor;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmCep, UFrmMetaVen;

procedure TFormVendedor.AcEditarExecute(Sender: TObject);
begin
  inherited;
  CK_SN_CLI_verificar(sender);
  CK_SN_PDT_verificar(sender);
  CK_SN_OCM_verificar(sender);
  CK_SN_PED_verificar(sender);
  SN_DIV_FIN_verificar(sender);
  Dscobranca.Enabled := true;
  codbanco;
  if DSpadrao.DataSet.FieldByName('NO_CTA_COR').AsString <> ''  then
  contacorrente(sender);

end;

procedure TFormVendedor.AcIncluirExecute(Sender: TObject);
begin
  inherited;
   DSpadrao.DataSet.FieldByName('DT_CAD').AsDateTime := Date;
   Dscobranca.Enabled := false;
   CK_SN_CLI_verificar(sender);
   CK_SN_PDT_verificar(sender);
   CK_SN_OCM_verificar(sender);
   CK_SN_PED_verificar(sender);
   SN_DIV_FIN_verificar(sender);
   codbanco;

  end;

procedure TFormVendedor.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  inherited;
    if Pos('Invalid input', E.Message) > 0 then
     begin
        ShowMessage('Telefone invalido!');
        DBEdit_NO_FAX.SetFocus;
        abort;
     end;
  end;

procedure TFormVendedor.BtConsultarClick(Sender: TObject);
begin
  inherited;
  if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then
  begin
   DMcadastro.CDSVendedor.Close;
   DMcadastro.SQLVendedor.CommandText := 'select First 50 db_vendedor.*,db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua, '
                                        +'db_cep.no_cep,db_cep.uf_cid from db_vendedor '
                                        +'inner join db_cep on db_cep.id = db_vendedor.id_cep '
                                        +'where db_vendedor.id =:pIDVendedor';
  DMcadastro.SQLVendedor.ParamByName('pIDVendedor').AsInteger := strtoint(Edconsulta.Text);
  DMcadastro.CDSVendedor.Open;
  end;

  if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then
  begin
   DMcadastro.CDSVendedor.Close;
   DMcadastro.SQLVendedor.CommandText := 'select First 50 db_vendedor.*,db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua, '
                                        +'db_cep.no_cep,db_cep.uf_cid from db_vendedor '
                                        +'inner join db_cep on db_cep.id = db_vendedor.id_cep '
                                        +'where db_vendedor.nm_ven  containing :pNMVendedor';
  DMcadastro.SQLVendedor.ParamByName('pNMVendedor').AsString := Edconsulta.Text;
  DMcadastro.CDSVendedor.Open;
  end;

  if (cbConsulta.ItemIndex = 2) and (Edconsulta.Text <> '') then
  begin
   DMcadastro.CDSVendedor.Close;
   DMcadastro.SQLVendedor.CommandText := 'select First 50 db_vendedor.*,db_cep.nm_bai,db_cep.nm_cid,db_cep.nm_rua, '
                                        +'db_cep.no_cep,db_cep.uf_cid from db_vendedor '
                                        +'inner join db_cep on db_cep.id = db_vendedor.id_cep '
                                        +'where db_vendedor.no_cnp_cpf =:pCPF';
  DMcadastro.SQLVendedor.ParamByName('pCPF').AsString := Edconsulta.Text;
  DMcadastro.CDSVendedor.Open;
  end;



end;

procedure TFormVendedor.Btn_cancelarClick(Sender: TObject);
begin
  inherited;
  if DsVendedorMetas.DataSet.State in [dsEdit,dsInsert] then
  begin
  DsVendedorMetas.DataSet.Cancel;
  habilita_Btn;
  end;
end;

procedure TFormVendedor.btn_cons_cepClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(tformcep,formcep);
    FormCep.ShowModal;
  finally
    FormCep.Free;
  end;
  // nao esquecer de criar a procedure la no formCep
  // e criar um evento no doubleclick do dbgrid no form cep
end;

procedure TFormVendedor.btn_EditarClick(Sender: TObject);
begin
  inherited;
if DsVendedorMetas.DataSet.state in [dsBrowse] then
   begin
   DsVendedorMetas.DataSet.Edit;
   habilita_Btn;
   end;
end;

procedure TFormVendedor.Btn_excluirClick(Sender: TObject);
begin
  inherited;
  if (DsVendedorMetas.DataSet.state in [dsBrowse]) and (not DsVendedorMetas.DataSet.IsEmpty) then
      begin
      DsVendedorMetas.DataSet.Delete;
      habilita_Btn;
      end;
end;

procedure TFormVendedor.Btn_GravarClick(Sender: TObject);
begin
  inherited;
if DsVendedorMetas.DataSet.state in [dsEdit, dsInsert] then
  begin
  DsVendedorMetas.DataSet.Post;
  habilita_Btn;
  end;
end;

procedure TFormVendedor.Btn_IncluirClick(Sender: TObject);
 var Vid: integer;
begin
  inherited;
  DsVendedorMetas.DataSet.Open;
 if DsVendedorMetas.DataSet.State in[dsBrowse]
  then begin
         WITH SP_GEN_Metas do
          begin
           Prepared := true;
           ExecProc;
           Prepared := false;
           Vid := ParamByName('ID').AsInteger;
           close;
          end;
       DsVendedorMetas.DataSet.Insert;
       DsVendedorMetas.DataSet.FieldByName('ID').AsInteger := Vid;
       DsVendedorMetas.DataSet.FieldByName('ID_Vendedor').AsInteger :=  DSpadrao.DataSet.FieldByName('id').AsInteger;
       CbTipo.ItemIndex := -1;
       DsVendedorMetas.Enabled := true;
       habilita_Btn;
       end else
          begin
            ShowMessage('Favor confirmar ou Cancelar o registro');
            Abort;
          end;
end;

procedure TFormVendedor.Btn_pesquisarClick(Sender: TObject);
begin
  inherited;
  try
  Application.CreateForm(tFormMetaVenda, FormMetaVenda);
  FormMetaVenda.ShowModal;
  finally
  FormMetaVenda.free;
  DsMetas.DataSet.Open;
  end;

end;

procedure TFormVendedor.Button6Click(Sender: TObject);
begin
  inherited;
  ShowMessage(DSpadrao.DataSet.FieldByName('TP_VEN').AsString + ' ' + DSpadrao.DataSet.FieldByName('ST_VEN').AsString);

end;

procedure TFormVendedor.cbConsultaSelect(Sender: TObject);
begin
  inherited;
   Edconsulta.Clear;
end;

procedure TFormVendedor.CbTipoSelect(Sender: TObject);
begin
  inherited;
 DsVendedorMetas.DataSet.FieldByName('tipo').AsString := CbTipo.Text[1];
end;

procedure TFormVendedor.CK_SN_CLI;
var auxstring : string;
begin
    auxString := '';
  if CK_SN_CLI_INCLUIR.Checked then
     auxString := auxString+ 'S'
     else
     auxString := auxString+ 'N';
  if CK_SN_CLI_EDITAR.Checked then
     auxString := auxString+ 'S'
     else
     auxString := auxString+ 'N';
     auxString := auxString+ 'N';
  if CK_SN_CLI_RELATORIOS.Checked then
     auxString := auxString+ 'S'
     else
     auxString := auxString+ 'N';
     auxString := auxString+ 'N';

     DSpadrao.DataSet.FieldByName('SN_CLI').AsString := auxstring;
end;

procedure TFormVendedor.CK_SN_CLI_verificar(sender: TObject);
var verificar : string;
begin
   if DSpadrao.DataSet.State in [dsEdit,dsInsert] then
    begin
      verificar := DMCadastro.CDSvendedor.FieldByName('SN_CLI').AsString;
       if verificar = '' then
          verificar := 'NNNNNN';

     if verificar[1] = 'S' then
        CK_SN_CLI_INCLUIR.Checked := true
        else
        CK_SN_CLI_INCLUIR.Checked := false;

     if verificar[2] = 'S' then
        CK_SN_CLI_EDITAR.Checked := true
        else
        CK_SN_CLI_EDITAR.Checked := false;
     if verificar[4] = 'S' then
        CK_SN_CLI_RELATORIOS.Checked := true
        else
        CK_SN_CLI_RELATORIOS.Checked := false;
    end;
end;

procedure TFormVendedor.CK_SN_OCM;
var auxstring : string;
begin
   auxString := '';
   if CK_SN_ORM_INCLUIR.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';
    if CK_SN_ORM_EDITAR.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';
    if CK_SN_ORM_EXCLUIR.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';
    if CK_SN_ORM_RELATORIOS.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';
    if CK_SN_ORM_ULTILITARIOS.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';

    DSpadrao.DataSet.FieldByName('SN_OCM').AsString := auxstring;
end;

procedure TFormVendedor.CK_SN_OCM_verificar(sender: TObject);
var verificar : string;
begin
    if DSpadrao.DataSet.State in [dsEdit,dsInsert] then
     begin
      verificar := DMCadastro.CDSVendedor.FieldByName('SN_OCM').AsString;
      if verificar = '' then
         verificar := 'NNNNNN';

     if verificar[1] = 'S' then
        CK_SN_ORM_INCLUIR.Checked := true
        else
        CK_SN_ORM_INCLUIR.Checked := false;
     if verificar[2] = 'S' then
        CK_SN_ORM_EDITAR.Checked := true
        else
        CK_SN_ORM_EDITAR.Checked := false;
     if verificar[3] = 'S' then
        CK_SN_ORM_EXCLUIR.Checked := true
        else
        CK_SN_ORM_EXCLUIR.Checked := false;
     if verificar[4] = 'S' then
        CK_SN_ORM_RELATORIOS.Checked := true
        else
        CK_SN_ORM_RELATORIOS.Checked := false;
     if verificar[5] = 'S' then
        CK_SN_ORM_ULTILITARIOS.Checked := true
        else
        CK_SN_ORM_ULTILITARIOS.Checked := false;
        end;

end;

procedure TFormVendedor.CK_SN_PDT;
var auxstring : string;
begin
     auxString := '';
     auxString :=auxString  + 'N';
  if CK_SN_PDT_editar.Checked then
     auxString :=auxString  + 'S'
     else
     auxString :=auxString +'N';
     auxString :=auxString +'N';
     auxString :=auxString +'N';
     auxString :=auxString +'N';

     DSpadrao.DataSet.FieldByName('SN_PDT').AsString := auxstring;
end;

procedure TFormVendedor.CK_SN_PDT_verificar(sender: tobject);
var verificar : string;
begin
     if DSpadrao.DataSet.State in [dsEdit,dsInsert] then
    begin
      verificar := DMCadastro.cdsvendedor.FieldByName('SN_PDT').AsString;
      if verificar = '' then
         verificar := 'NNNNNN';

     if verificar[2] = 'S' then
        CK_SN_PDT_EDITAR.Checked := true
        else
        CK_SN_PDT_EDITAR.Checked := false;

        end;

end;

procedure TFormVendedor.CK_SN_PED;
var auxstring : string;
begin
      auxString := '';
   if CK_SN_PED_INCLUIR.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';
    if CK_SN_PED_EDITAR.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';
    if CK_SN_PED_EXCLUIR.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';
    if CK_SN_PED_RELATORIOS.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';
    if CK_SN_PED_ULTILITARIOS.Checked then
    auxString := auxstring+'S'
    else
    auxString :=auxString +'N';

    DSpadrao.DataSet.FieldByName('SN_PED').AsString := auxstring;
end;

procedure TFormVendedor.CK_SN_PED_verificar(sender: TObject);
var verificar : string;
begin
      if DSpadrao.DataSet.State in [dsEdit,dsInsert] then
     begin
      verificar := DMCadastro.CDSVendedor.FieldByName('SN_PED').AsString;
      if verificar = '' then
         verificar := 'NNNNNN';

     if verificar[1] = 'S' then
        CK_SN_PED_INCLUIR.Checked := true
        else
        CK_SN_PED_INCLUIR.Checked := false;
     if verificar[2] = 'S' then
        CK_SN_PED_EDITAR.Checked := true
        else
        CK_SN_PED_EDITAR.Checked := false;
     if verificar[3] = 'S' then
        CK_SN_PED_EXCLUIR.Checked := true
        else
        CK_SN_PED_EXCLUIR.Checked := false;
     if verificar[4] = 'S' then
        CK_SN_PED_RELATORIOS.Checked := true
        else
        CK_SN_PED_RELATORIOS.Checked := false;
     if verificar[5] = 'S' then
        CK_SN_PED_ULTILITARIOS.Checked := true
        else
        CK_SN_PED_ULTILITARIOS.Checked := false;
        end;
end;

procedure TFormVendedor.codbanco;
begin
 if Dscobranca.DataSet.Locate('id', DSpadrao.DataSet.FieldByName('id_banco').AsInteger,[]) then
    begin
     EdCodbanco.Text := Dscobranca.DataSet.FieldByName('CD_LOC_COB').AsString
    end
     else begin
     EdCodbanco.Clear;
     DMcadastro.CDSVendedor.FieldByName('NO_CTA_COR').EditMask := '';
     Dscobranca.Enabled := false;
     end;
end;

procedure TFormVendedor.contacorrente(sender: tobject);
var quant ,I: integer;
begin
  inherited;
  quant :=  Length(DMcadastro.CDSVendedor.FieldByName('NO_CTA_COR').asstring);
  DMcadastro.CDSVendedor.FieldByName('NO_CTA_COR').EditMask := '';
   for I := 0 to quant do
     begin
     if I = quant-1 then
     DMcadastro.CDSVendedor.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSVendedor.FieldByName('NO_CTA_COR').EditMask + '-#;0'
     else
     DMcadastro.CDSVendedor.FieldByName('NO_CTA_COR').EditMask := DMcadastro.CDSVendedor.FieldByName('NO_CTA_COR').EditMask + '#';
     end;
end;

procedure TFormVendedor.DBEdit_NO_CTA_COREnter(Sender: TObject);
begin
  inherited;
   DMcadastro.CDSVendedor.FieldByName('NO_CTA_COR').EditMask := '';
end;

procedure TFormVendedor.DBEdit_NO_CTA_CORExit(Sender: TObject);
var quant ,I: integer;
begin
  inherited;
contacorrente(sender);
end;

procedure TFormVendedor.DBEdit_NO_CTA_CORKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
if not (key in ['0'..'9',#8,#13]) then
     key := #0;
end;

procedure TFormVendedor.DBGrid2CellClick(Column: TColumn);
begin
  inherited;
  if DsVendedorMetas.DataSet.FieldByName('Tipo').AsString = 'K' then
  begin
    CbTipo.ItemIndex := 0;
  end;

  if DsVendedorMetas.DataSet.FieldByName('Tipo').AsString = 'R' then
  begin
    CbTipo.ItemIndex := 1;
  end;

  if DsVendedorMetas.DataSet.FieldByName('Tipo').AsString = 'M' then
  begin
    CbTipo.ItemIndex := 2;
  end;

end;

procedure TFormVendedor.EdCodbancoExit(Sender: TObject);
begin
  inherited;
   if (DSpadrao.DataSet.State in [dsInsert,dsEdit]) then
    if (EdCodbanco.Text <> '')   then
  begin
     Dscobranca.Enabled := true;
    if not Dscobranca.DataSet.Locate('CD_LOC_COB',EdCodbanco.Text,[]) then
        begin
        ShowMessage('Código de banco não encontrado!');
        //EdCodbanco.Clear;
        Dscobranca.Enabled := false;
        EdCodbanco.SetFocus;
        end
        else
        dspadrao.DataSet.FieldByName('id_banco').AsInteger := DMcadastro.CDSLocalCobrancaID.AsInteger;
  end else begin
     dspadrao.DataSet.FieldByName('id_banco').Clear;
     Dscobranca.Enabled := false;
  end;
end;

procedure TFormVendedor.EdCodbancoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if not (key in ['0'..'9',#8,#13]) then
     key := #0;
end;

procedure TFormVendedor.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
     if (cbConsulta.ItemIndex = 0 ) or (cbConsulta.ItemIndex = 2 )then
  begin
    if not(Key in ['0' .. '9', #8, #13]) then
      Key := #0;
  end;
end;

procedure TFormVendedor.FormShow(Sender: TObject);
begin
  inherited;
  Dscobranca.DataSet.Open;


end;

procedure TFormVendedor.habilita_Btn;
begin
if DsVendedorMetas.DataSet.State in [dsEdit,dsInsert] then
  begin
   Btn_Incluir.Enabled  := false;
   Btn_excluir.Enabled  := false;
   btn_Editar.Enabled   := false;
   Btn_Gravar.Enabled   := true;
   Btn_cancelar.Enabled := true;
   gpMetas.Enabled      := true;
  end else
  begin
  Btn_Incluir.Enabled   := true;
  Btn_excluir.Enabled   := true;
  btn_Editar.Enabled    := true;
  Btn_Gravar.Enabled    := false;
  Btn_cancelar.Enabled  := false;
  gpMetas.Enabled       := false;
  end;
end;

procedure TFormVendedor.SN_DIV_FIN;
var auxstring : string;
begin
     auxString := '';
     auxString :=auxString  + 'N';
  if SN_DIV_FIN_EDITAR.Checked then
     auxString :=auxString  + 'S'
     else
     auxString :=auxString +'N';
     auxString :=auxString +'N';
     auxString :=auxString +'N';
     auxString :=auxString +'N';

     DSpadrao.DataSet.FieldByName('SN_DIV_FIN').AsString := auxstring;
end;

procedure TFormVendedor.SN_DIV_FIN_verificar(sender: TObject);
var verificar : string;
begin
   if DSpadrao.DataSet.State in [dsEdit,dsInsert] then
     begin
      verificar := DMCadastro.CDSVendedor.FieldByName('SN_DIV_FIN').AsString;
      if verificar = '' then
       exit;

     if verificar[2] = 'S' then
        SN_DIV_FIN_EDITAR.Checked := true
        else
        SN_DIV_FIN_EDITAR.Checked := false
     end;
end;

procedure TFormVendedor.TabCadastroShow(Sender: TObject);
begin
  inherited;
  DMcadastro.CDSVendedor_Metas.close;
  DMcadastro.SQLVendedor_Metas.ParamByName('pVendedor').AsInteger := DSpadrao.DataSet.FieldByName('id').AsInteger;
  DMcadastro.CDSVendedor_Metas.open;
  PageControl2.ActivePage := TabCadastro2;
  habilita_Btn;
end;

procedure TFormVendedor.TabMetasShow(Sender: TObject);
begin
  inherited;
if  DSpadrao.DataSet.State in [dsEdit] then
   begin
     TabMetas.Enabled := true;
   end else
     TabMetas.Enabled := false;

end;

end.
