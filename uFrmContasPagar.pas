unit uFrmContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxCore, cxDateUtils, Vcl.Menus,System.MaskUtils, DateUtils,dbclient,
  dxSkinsCore, dxSkinLiquidSky;

type
  TFormContasPagar = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBEdit_NM_FOR: TDBEdit;
    DBEdit_ID_FOR: TDBEdit;
    DBEdit_NO_CNP_CPF: TDBEdit;
    Label13: TLabel;
    DBEdit_NM_RUA: TDBEdit;
    Label21: TLabel;
    DBEdit_NM_BAI: TDBEdit;
    Label14: TLabel;
    DBEdit_NO_FON: TDBEdit;
    Label22: TLabel;
    DBEdit_NO_FAX: TDBEdit;
    DBEdit_NO_CEP: TDBEdit;
    Label9: TLabel;
    DBEdit_UF_CID: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit_NM_CID: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit_CD_CTB: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit_NO_DOC: TDBEdit;
    DBEdit_NO_DOC_ORI: TDBEdit;
    DBEdit_DS_OBS: TDBEdit;
    cxDBDateEdit_DT_CAD: TcxDBDateEdit;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    GroupBox4: TGroupBox;
    cxDBDateEdit_DT_RMS_COB: TcxDBDateEdit;
    DBEdit_CD_TIT_LOC: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    GroupBox5: TGroupBox;
    cxDBDateEdit_DT_ULT_MOD: TcxDBDateEdit;
    cxDBDateEdit_DT_EMS: TcxDBDateEdit;
    cxDBDateEdit_DT_VCT: TcxDBDateEdit;
    DBEdit_VR_DOC: TDBEdit;
    DBEdit_VR_DEB_DOC: TDBEdit;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    DBComboBox_TP_JUR: TDBComboBox;
    DBEdit_TX_JUR: TDBEdit;
    cxDBDateEdit_DT_PGT: TcxDBDateEdit;
    DBEdit_VR_RCB: TDBEdit;
    DBEdit_VR_JUR: TDBEdit;
    DBEdit_VR_ABA_DCT: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DSLocal: TDataSource;
    EditValorFinal: TEdit;
    DBLookup_ID_LOCAL: TDBLookupComboBox;
    ComboConsultaLocal: TComboBox;
    EdConsulta2: TcxMaskEdit;
    lblConsulta2: TLabel;
    ConsultaData: TcxDateEdit;
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ImpressoraMatricial1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    ContasaPagarnumPerodoFilial1: TMenuItem;
    ContasaPagarumPerodoMatrizFilial1: TMenuItem;
    N1: TMenuItem;
    SintticodasDespesasContbeisporPerodoMatriz1: TMenuItem;
    SintticodasDespesasContbeisporPerodoFilial1: TMenuItem;
    SintticodasDespesasContbeisporPerodoMatrizFilial1: TMenuItem;
    N2: TMenuItem;
    AnalticodasDespesasContbeisporPerodoMatriz1: TMenuItem;
    AnalticodasDespesasContbeisporPerodoMatrizFilial1: TMenuItem;
    N3: TMenuItem;
    DbitocomFornecedornaDataBaseMatriz1: TMenuItem;
    DbitocomFornecedornaDataBaseMatrizFilial1: TMenuItem;
    N4: TMenuItem;
    DbitocomFornecedornaDataAtualMatriz1: TMenuItem;
    DbitocomFornecedornaDataAtualMatrizFilial1: TMenuItem;
    N5: TMenuItem;
    CartodePagamento1: TMenuItem;
    N6: TMenuItem;
    IntegradoContasaReceberePagarnumPerodoMatrizFilial1: TMenuItem;
    N7: TMenuItem;
    RazoAnliticoContasaPagarMatriz1: TMenuItem;
    RazoAnliticoContasaPagarFilial1: TMenuItem;
    RazoAnliticoContasaPagarMatrizFilial1: TMenuItem;
    N8: TMenuItem;
    FluxodeCaixaReceberePagarMatrizFilial1: TMenuItem;
    N9: TMenuItem;
    GrficodoMsporVencimento1: TMenuItem;
    GrficodoMsporPagamento1: TMenuItem;
    N10: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure DBEdit_NM_FORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AcIncluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabCadastroShow(Sender: TObject);
    procedure cxDBDateEdit_DT_VCTExit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit_NM_FORExit(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure cbConsultaChange(Sender: TObject);
    procedure DBEdit_VR_DOCExit(Sender: TObject);
    procedure cxDBDateEdit_DT_PGTExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure DBEdit_VR_DEB_DOCEnter(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure calcularValorPago;
    procedure DBEdit_VR_RCBExit(Sender: TObject);
    procedure DBEdit_VR_JURExit(Sender: TObject);
    procedure DBEdit_VR_ABA_DCTExit(Sender: TObject);
    procedure pagamentoparcial;
    procedure varrerComponentes;
    procedure habilitacomponentes;
    procedure desabilitacomponentes;
    procedure AcGravarExecute(Sender: TObject);
    function  verificaDataPagamento:Boolean;
    procedure calcJurus;
    function ValorAbatimento: boolean;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContasPagar: TFormContasPagar;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmFornecedor;



procedure TFormContasPagar.AcEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit_NM_FOR.Enabled := False;
 DBEdit_NO_DOC.Enabled := False;
 if DMcadastro.CDSContasPagarVR_RCB.AsFloat >0 then
    begin
    calcularValorPago;
    end else
    begin
      EditValorFinal.Text := floattostr(DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat - DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat);
      EditValorFinal.Text := FORMATFLOAT('R$ ###,##0.00', STRTOFLOAT(EditValorFinal.Text));
    end;

 desabilitacomponentes;

end;

procedure TFormContasPagar.pagamentoparcial;
 var CDSClone: TClientDataSet;
            I: Integer;
            q: TSQLQuery;

begin
     if (dmCadastro.CDSContasPagarvr_rcb.AsCurrency < dmCadastro.CDSContasPagarVR_DEB_DOC.AsCurrency )and
        (dmCadastro.CDSContasPagarVR_DEB_DOC.AsCurrency >0)and
        (dmCadastro.CDSContasPagarVR_RCB.AsCurrency >0)    and
        (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert]) and
        (DMcadastro.CDSContasPagarDT_PGT.AsString <> '') and
        (FormContasPagar.GroupBox6.Enabled = true) then
         begin
         if MessageDlg('O valor informado é menor que o valor devido.'+#13+
                       'O pagamento é parcial?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
          begin
              if FormContasPagar.Verifica_Campos_Em_Branco then
                begin
                //FormContasPagar.btnGravar.Click;
                 try
                 DMcadastro.CDSContasPagar.ApplyUpdates(0);
                 finally
                 FormContasPagar.PageControl1.ActivePage := TabConsulta;
                 end;
                end else
                abort;
            try
              CDSClone := TClientDataSet.Create(Application);   //gerar novo documento com o debito da diferenca
              CDSClone.CloneCursor(dmCadastro.CDSContasPagar, True);
              dmCadastro.CDSContasPagar.Append;
              for I := 0 to CDSClone.FieldCount - 1 do
              dmCadastro.CDSContasPagar.Fields[I].Value := CDSClone.Fields[I].Value;
              CDSClone.Close;
              Q :=  TSQLQuery.Create(nil);
              Q.SQLConnection :=  DMcadastro.SQLConnection1;
              q.SQL.Clear;
              q.SQL.Add('select gen_id(GEN_DB_CTAPAGAR_ID,1) from rdb$database');
              q.Open;
              DMcadastro.CDSContasPagarid.AsInteger       :=  q.FieldByName('gen_id').AsInteger;
              DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat :=  DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat -  DMcadastro.CDSContasPagarVR_RCB.AsFloat;
              DMcadastro.CDSContasPagarDT_PGT.Clear;
              DMcadastro.CDSContasPagarVR_RCB.AsFloat     := 0;
              DMcadastro.CDSContasPagarVR_JUR.AsFloat     := 0;
              DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat := 0;
              DMcadastro.CDSContasPagar.ApplyUpdates(0);
            finally
              CDSClone.Free;
              q.Free;
            end;
          end else
          //informa o valor pago, e coloca a diferença como abatimento desconto
           begin
            ShowMessage('Valor pago menor que o valor devido...'+#13+
                        'Lançar como Abatimento/Desconto o valor pago a menos !');

            dmCadastro.CDSContasPagarVR_ABA_DCT.AsFloat := dmCadastro.CDSContasPagarVR_DEB_DOC.AsFloat - dmCadastro.CDSContasPagarVR_RCB.AsFloat;
            dmCadastro.CDSContasPagarVR_RCB.AsFloat     := dmCadastro.CDSContasPagarVR_DEB_DOC.AsFloat;
           end;
         end;


 end;


procedure TFormContasPagar.AcGravarExecute(Sender: TObject);
begin
 if (ActiveControl <> DBEdit_VR_JUR) and (dmCadastro.CDSContasPagarvr_rcb.AsCurrency < dmCadastro.CDSContasPagarVR_DEB_DOC.AsCurrency)
 and(dmCadastro.CDSContasPagarVR_DEB_DOC.AsCurrency > 0) and (DMcadastro.CDSContasPagarVR_RCB.AsFloat > 0.00) and (FormContasPagar.GroupBox6.Enabled = true) then
  begin
   pagamentoparcial;
  end else
  inherited;
// if DMcadastro.CDSContasPagarVR_RCB.AsFloat <=0 then
//     inherited;
end;

procedure TFormContasPagar.AcIncluirExecute(Sender: TObject);
begin
  inherited;
  dmCadastro.CDSLocalCobranca.Open;
  varrerComponentes;
  DBEdit_NM_FOR.Enabled := true;
  DBEdit_NO_DOC.Enabled := true;
  DBEdit_NM_FOR.SetFocus;
  dmCadastro.CDSContasPagarDT_CAD.AsDateTime     := Date;
  dmCadastro.CDSContasPagarDT_ULT_MOD.AsDateTime := Date;
  dmCadastro.CDSContasPagarDT_EMS.AsDateTime     := Date;
  dmCadastro.CDSContasPagarST_DOC.AsString       := 'NORMAL';
  dmCadastro.CDSContasPagarID_LOCAL.AsInteger    := 6;
  dmCadastro.CDSContasPagarTP_JUR.AsString       := 'SIMPLES';


end;

procedure TFormContasPagar.BtConsultarClick(Sender: TObject);
begin
  inherited;
{--------------consulta por Fonecedor e No. Documento %%%%%%%%%%%%%%%%%%%%%%%%}
if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then
 begin

   DMcadastro.CDSContasPagar.Close;
   DMcadastro.SQLContasPagar.CommandText := '';
   DMcadastro.SQLContasPagar.CommandText := 'select db_ctapagar.*,  '
                                           +'db_fornecedor.nm_for, db_fornecedor.id as id_fornecedor, '
                                           +'db_fornecedor.no_cnp_cpf, db_fornecedor.no_fon, db_fornecedor.no_fax, '
                                           +'db_cep.nm_cid,db_cep.uf_cid, db_cep.nm_bai, '
                                           +'db_cep.nm_rua, db_cep.no_cep from db_ctapagar '

                                           +'inner join db_fornecedor on db_fornecedor.id = db_ctapagar.id_for '
                                           +'inner join db_cep on db_cep.id =  db_fornecedor.id_cep '

                                           +'where no_doc  =:PNumDoc and db_fornecedor.nm_for =:PNM_FOR ';

   DMcadastro.SQLContasPagar.ParamByName('PNM_FOR').AsString := EdConsulta2.Text;
   DMCadastro.SQLContasPagar.ParamByName('PNumDoc').AsString := EdConsulta.Text;
   DMcadastro.CDSContasPagar.Open;
 end;

 if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then
 begin

   DMcadastro.CDSContasPagar.Close;
   DMcadastro.SQLContasPagar.CommandText := '';
   DMcadastro.SQLContasPagar.CommandText := 'select db_ctapagar.*,  '
                                           +'db_fornecedor.nm_for, db_fornecedor.id as id_fornecedor, '
                                           +'db_fornecedor.no_cnp_cpf, db_fornecedor.no_fon, db_fornecedor.no_fax, '
                                           +'db_cep.nm_cid,db_cep.uf_cid, db_cep.nm_bai, '
                                           +'db_cep.nm_rua, db_cep.no_cep from db_ctapagar '

                                           +'inner join db_fornecedor on db_fornecedor.id = db_ctapagar.id_for '
                                           +'inner join db_cep on db_cep.id =  db_fornecedor.id_cep '

                                           +'where no_doc_ori  =:PNumDoc and db_fornecedor.nm_for =:PNM_FOR ';

   DMcadastro.SQLContasPagar.ParamByName('PNM_FOR').AsString := EdConsulta2.Text;
   DMCadastro.SQLContasPagar.ParamByName('PNumDoc').AsString := EdConsulta.Text;
   DMcadastro.CDSContasPagar.Open;
 end;



 if (cbConsulta.ItemIndex = 2) and (Edconsulta.Text <> '') then
 begin
 DMcadastro.CDSContasPagar.Close;
 DMcadastro.SQLContasPagar.CommandText := '';
 DMcadastro.SQLContasPagar.CommandText :=  'select db_ctapagar.*, '
                                          +'db_fornecedor.nm_for, db_fornecedor.id as id_fornecedor, '
                                          +'db_fornecedor.no_cnp_cpf, db_fornecedor.no_fon, db_fornecedor.no_fax, '
                                          +'db_cep.nm_cid,db_cep.uf_cid, db_cep.nm_bai, '
                                          +'db_cep.nm_rua, db_cep.no_cep from db_ctapagar '

                                          +'inner join db_fornecedor on db_fornecedor.id = db_ctapagar.id_for '
                                          +'inner join db_cep on db_cep.id =  db_fornecedor.id_cep '
                                          +'where no_doc  =:PConsulta ';

  DMcadastro.SQLContasPagar.ParamByName('pconsulta').AsString := EdConsulta.Text;
  DMcadastro.CDSContasPagar.Open;
 end;

 if (cbConsulta.ItemIndex = 3) and (Edconsulta.Text <> '') then {consulta por Documento Origem %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin
  DMcadastro.CDSContasPagar.Close;
  DMcadastro.SQLContasPagar.CommandText := '';
  DMcadastro.SQLContasPagar.CommandText :=  'select db_ctapagar.*, '
                                           +'db_fornecedor.nm_for, db_fornecedor.id as id_fornecedor, '
                                           +'db_fornecedor.no_cnp_cpf, db_fornecedor.no_fon, db_fornecedor.no_fax, '
                                           +'db_cep.nm_cid,db_cep.uf_cid, db_cep.nm_bai, '
                                           +'db_cep.nm_rua, db_cep.no_cep from db_ctapagar '
                                           +'inner join db_fornecedor on db_fornecedor.id = db_ctapagar.id_for '
                                           +'inner join db_cep on db_cep.id =  db_fornecedor.id_cep '
                                           +'where no_doc_ori  =:PConsulta ';

  DMcadastro.SQLContasPagar.ParamByName('pconsulta').AsString := EdConsulta.Text;
  DMcadastro.CDSContasPagar.Open;
 end;

 if (cbConsulta.ItemIndex = 4)  then
 begin

 DMcadastro.CDSContasPagar.Close;
 DMcadastro.SQLContasPagar.CommandText := '';
 DMcadastro.SQLContasPagar.CommandText :=  'select db_ctapagar.*, '
                                          +'db_fornecedor.nm_for, db_fornecedor.id as id_fornecedor, '
                                          +'db_fornecedor.no_cnp_cpf, db_fornecedor.no_fon, db_fornecedor.no_fax, '
                                          +'db_cep.nm_cid,db_cep.uf_cid, db_cep.nm_bai, '
                                          +'db_cep.nm_rua, db_cep.no_cep from db_ctapagar '

                                          +'inner join db_fornecedor on db_fornecedor.id = db_ctapagar.id_for '
                                          +'inner join db_cep on db_cep.id =  db_fornecedor.id_cep '
                                          +'where db_ctapagar.dt_pgt  =:PConsulta ';

  DMcadastro.SQLContasPagar.ParamByName('pconsulta').AsDate := ConsultaData.date;
  DMcadastro.CDSContasPagar.Open;
 end;

if (cbConsulta.ItemIndex = 5) and (Edconsulta.Text <> '') then
 begin

   DMcadastro.CDSContasPagar.Close;
   DMcadastro.SQLContasPagar.CommandText := '';
   DMcadastro.SQLContasPagar.CommandText := 'select db_ctapagar.*,  '
                                           +'db_fornecedor.nm_for, db_fornecedor.id as id_fornecedor, '
                                           +'db_fornecedor.no_cnp_cpf, db_fornecedor.no_fon, db_fornecedor.no_fax, '
                                           +'db_cep.nm_cid,db_cep.uf_cid, db_cep.nm_bai, '
                                           +'db_localcobranca.nm_loc_cob, '
                                           +'db_cep.nm_rua, db_cep.no_cep from db_ctapagar '
                                           +'inner join db_fornecedor on db_fornecedor.id = db_ctapagar.id_for '
                                           +'inner join db_cep on db_cep.id =  db_fornecedor.id_cep '
                                           +'inner join db_localcobranca on db_ctapagar.id_Local =  db_localcobranca.id '

                                           +'where db_ctapagar.CD_TIT_LOC  =:PTitulo and  db_localcobranca.NM_LOC_COB =:PLocal ';

   DMcadastro.SQLContasPagar.ParamByName('PLocal').AsString := ComboConsultaLocal.Text;
   DMCadastro.SQLContasPagar.ParamByName('PTitulo').AsString := EdConsulta.Text;
   DMcadastro.CDSContasPagar.Open;
 end;


end;

procedure TFormContasPagar.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;
   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;



procedure TFormContasPagar.cbConsultaChange(Sender: TObject);
var
   i: integer;
 begin
  inherited;

 if cbconsulta.ItemIndex = 0 then
 begin
    lblConsulta2.Visible := True;
    lblConsulta2.Caption := 'Fornecedor:';
    EdConsulta2.Visible   := True;
    EdConsulta2.Left      := 207;
    EdConsulta2.Width     := 500;

    ConsultaData.Visible       := False;
    ComboConsultaLocal.Visible := False;
    EdConsulta.Visible   := True;
  end;

 if cbconsulta.ItemIndex = 1 then
 begin
    lblConsulta2.Visible := True;
    lblConsulta2.Caption := 'Fornecedor:';
    lblConsulta2.Left    := 134;
    EdConsulta2.Visible  := True;
    EdConsulta2.Left     := 207;
    EdConsulta2.Width    := 500;

    ConsultaData.Visible       := False;
    ComboConsultaLocal.Visible := False;
    EdConsulta.Visible   := True;
 end;

 if cbconsulta.ItemIndex = 2 then
 begin
   lblConsulta2.Visible := False;
   lblConsulta2.Caption := 'Fornecedor:';
   lblConsulta2.Left    := 134;
   EdConsulta2.Visible  := False;

   ConsultaData.Visible       := False;
   ComboConsultaLocal.Visible := False;
   EdConsulta.Visible   := True;
 end;

 if cbconsulta.ItemIndex = 3 then
 begin
   lblConsulta2.Visible := False;
   EdConsulta2.Visible  := False;
   EdConsulta.Visible   := True;

   ConsultaData.Visible       := False;
   ComboConsultaLocal.Visible := False;

 end;

 if cbconsulta.ItemIndex = 4 then
 begin
   ConsultaData.Date := Date;

   lblConsulta2.Visible := True;
   lblConsulta2.Caption := 'Pagamento:';
   lblConsulta2.Left    := 134;
   EdConsulta2.Visible  := False;
   EdConsulta.Visible   := False;


   ConsultaData.Visible := True;
   ConsultaData.Top     := 31;
   ConsultaData.Left    := 207;


   EdConsulta2.Visible  := False;

   ComboConsultaLocal.Visible := False;
 end;

 if cbconsulta.ItemIndex = 5 then
 begin
    ComboConsultaLocal.Visible := true;
    ComboConsultaLocal.Left    := 205;
    lblConsulta2.Visible       := true;
    lblConsulta2.Caption       := 'Local Cobrança:';
    lblConsulta2.Left          := 110;
    EdConsulta2.Visible        := False;
    EdConsulta.Visible   := True;

    ConsultaData.Visible       := False;

    DSLocal.DataSet.Close;

   DSLocal.DataSet.Open;
   DSLocal.DataSet.First;
    if DSLocal.DataSet.IsEmpty then
       begin
         ShowMessage('Nenhum registro encontrado no arquivo Local de Cobrança!');
         Exit;
       end

    Else
    begin

    While not DSLocal.DataSet.EOF do
      begin

        ComboConsultaLocal.Items.Add(
        DSLocal.DataSet.FieldByName('NM_LOC_COB').asString);
        DSLocal.DataSet.Next;
      end;

    end;
 end;
 // ComboConsultaLocal.ItemIndex := 5;

end;

procedure TFormContasPagar.cxDBDateEdit_DT_PGTExit(Sender: TObject);
var
dias : integer;
VrJuros, VrPago : Real;
begin
      habilitacomponentes;
  if (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert] ) and (DBEdit_VR_RCB.Enabled =  true) then
  begin
  if (dmCadastro.CDSContasPagardt_pgt.AsDateTime < dmCadastro.CDSContasPagardt_ems.AsDateTime) and (dmCadastro.CDSContasPagarDT_PGT.Asstring <> '') then
   begin
      showMessage('Data do Pagamento não pode ser menor que a data de Emissão!');
      cxDBDateEdit_DT_PGT.SetFocus;
   end;

   if cxDBDateEdit_DT_PGT.Text = ''  then
     begin
      DMcadastro.CDSContasPagarVR_RCB.AsFloat := 0;
      DMcadastro.CDSContasPagarVR_JUR.AsFloat := 0;
      DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat := 0;
      EditValorFinal.Text := floattostr(0);
      calcularValorPago;
     end else
       begin
       DMcadastro.CDSContasPagarVR_RCB.AsFloat := DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat;
       //habilitacomponentes;
       end;

  end;

  inherited;

end;


procedure TFormContasPagar.calcJurus;
 begin
   if (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert] ) and
      (DMcadastro.CDSContasPagarVR_RCB.AsFloat > DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat )then
        begin
         ShowMessage('Valor pago maior que o valor devido...'+#13+
                     'Lançar como Juros a diferença !');

         DMcadastro.CDSContasPagarVR_JUR.AsFloat := DMcadastro.CDSContasPagarVR_RCB.AsFloat -DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat;
         DMcadastro.CDSContasPagarVR_RCB.AsFloat := DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat;
         calcularValorPago;
         end;

 end;

procedure TFormContasPagar.calcularValorPago;
begin
  if (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert]) and (FormContasPagar.DBEdit_VR_RCB.Enabled =  true) then
  begin
  EditValorFinal.Text := floattostr(DMcadastro.CDSContasPagarVR_RCB.AsFloat + DMcadastro.CDSContasPagarVR_JUR.AsFloat - DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat);
  EditValorFinal.Text := FORMATFLOAT('R$ ###,##0.00', STRTOFLOAT(EditValorFinal.Text));
  end;
end;

procedure TFormContasPagar.cxDBDateEdit_DT_VCTExit(Sender: TObject);
begin
  inherited;
  if dmcadastro.CDSContasPagarDT_VCT.AsDateTime  < dmcadastro.CDSContasPagarDT_EMS.AsDateTime  then
     begin
      cxDBDateEdit_DT_VCT.SetFocus;
      ShowMessage('Data de Vencimento menor que a data de Emissão!');
     end;
end;

procedure TFormContasPagar.DBEdit_NM_FORExit(Sender: TObject);
begin
  inherited;
 if DBEdit_NM_FOR.Text = '' then
    begin
    ShowMessage('O nome do fornecedor deve ser informado!');
    DBEdit_NM_FOR.SetFocus;
    end;

end;

procedure TFormContasPagar.DBEdit_NM_FORKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 if  (Key = VK_RETURN) then
 begin
    try
     Application.CreateForm(TFormFornecedor,FormFornecedor);
     FormFornecedor.showmodal;
    finally
     FormFornecedor.Free;
 end;
   // criar a procedure la no formFornecedor
  // e criar um evento no doubleclick do dbgrid no form fornecedor
  inherited;

 end;
end;

procedure TFormContasPagar.DBEdit_VR_ABA_DCTExit(Sender: TObject);
begin
  inherited;
  if DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat <= 0 then
     DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat := 0.00;
     calcularValorPago;
     calcJurus;
end;

procedure TFormContasPagar.DBEdit_VR_DEB_DOCEnter(Sender: TObject);
begin
  inherited;
 if dmCadastro.CDSContasPagar.FieldByName('vr_deb_doc').AsFloat = 0 then
 begin
    dmCadastro.CDSContasPagar.FieldByName('vr_deb_doc').AsFloat := dmCadastro.CDSContasPagar.FieldByName('vr_doc').AsFloat;
 end;

end;

procedure TFormContasPagar.DBEdit_VR_DOCExit(Sender: TObject);
begin
try
  if (dmCadastro.CDSContasPagarvr_doc.AsFloat <= 0) and (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert])  then
   begin
      showMessage('Valor do documento deve ser informado!');
      DBEdit_VR_DOC.SetFocus;
   end else
   if Trunc(DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat) <= 0 then
      DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat := dmCadastro.CDSContasPagarvr_doc.AsFloat;
  finally
   abort
  end;
  inherited;


end;

procedure TFormContasPagar.DBEdit_VR_JURExit(Sender: TObject);
begin
  inherited;
  if DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert] then
   begin
    if (DMcadastro.CDSContasPagarVR_JUR.AsFloat <= 0) then
        DMcadastro.CDSContasPagarVR_JUR.AsFloat := 0.00;
        calcularValorPago;
        calcJurus;
   end;
end;

procedure TFormContasPagar.DBEdit_VR_RCBExit(Sender: TObject);
begin
  inherited;
   if (DMcadastro.CDSContasPagarVR_RCB.AsFloat <= 0) and (DMcadastro.CDSContasPagarDT_PGT.AsString <> '') and (DMcadastro.CDSContasPagar.State in [dsedit,dsinsert]) then
      begin
      ShowMessage('Valor invalido...');
      DMcadastro.CDSContasPagarVR_RCB.AsFloat := DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat ;
      calcularValorPago;
      abort;
      end;
  pagamentoparcial;
  calcularValorPago;
  calcJurus;
end;

procedure TFormContasPagar.desabilitacomponentes;
begin
  if DMcadastro.CDSContasPagarDT_PGT.AsString <> '' then
   begin
    GroupBox1.Enabled := false;
    GroupBox2.Enabled :=  false;
    DBEdit_NO_DOC.Enabled := false;
    DBEdit_NO_DOC_ORI.Enabled := false;
    DBComboBox1.Enabled := false;
    DBEdit_DS_OBS.Enabled := true;
    GroupBox4.Enabled := false;
    GroupBox5.Enabled := false;
    GroupBox6.Enabled := false;
    cxDBDateEdit_DT_PGT.Enabled := true;
    DBEdit_VR_RCB.Enabled := false;
    DBEdit_VR_JUR.Enabled := false;
    DBEdit_VR_ABA_DCT.Enabled := false;
    DBEdit_DS_OBS.SetFocus;
   end;
end;

procedure TFormContasPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 dmCadastro.CDSContasPagar.Close;
 dmCadastro.CDSLocalCobranca.Close;
 dmcadastro.CDSFornecedor.Close;
end;

procedure TFormContasPagar.FormShow(Sender: TObject);
var
dias : Integer;
begin
  inherited;
 dmCadastro.CDSContasPagar.Open;
 dmCadastro.CDSLocalCobranca.Open;
 dmCadastro.CDSFornecedor.Open;

end;



procedure TFormContasPagar.habilitacomponentes;
begin
 if (DMcadastro.CDSContasPagarDT_PGT.AsString = '') or (cxDBDateEdit_DT_PGT.Text = '') then
   begin
    GroupBox1.Enabled := true;
    GroupBox2.Enabled :=  true;
    DBEdit_NO_DOC.Enabled := true;
    DBEdit_NO_DOC_ORI.Enabled := true;
    DBComboBox1.Enabled := true;
    DBEdit_DS_OBS.Enabled := true;
    GroupBox4.Enabled := true;
    GroupBox5.Enabled := true;
    GroupBox6.Enabled := true;
    cxDBDateEdit_DT_PGT.Enabled := true;
    DBEdit_VR_RCB.Enabled := true;
    DBEdit_VR_JUR.Enabled := true;
    DBEdit_VR_ABA_DCT.Enabled := true;
    DBEdit_VR_RCB.SetFocus;
//    cxDBDateEdit_DT_PGT.SetFocus;
   end;

end;

procedure TFormContasPagar.SpeedButton5Click(Sender: TObject);
begin
  if  DBEdit_NM_FOR.Text = '' then
  begin
    try
     Application.CreateForm(TFormFornecedor,FormFornecedor);
     FormFornecedor.showmodal;
    finally
     FormFornecedor.Free;
  end;
  inherited;

 end;
end;

procedure TFormContasPagar.TabCadastroShow(Sender: TObject);
begin
  inherited;
 EditValorFinal.Text    := CurrToStr(dmCadastro.CDSContasPagar.FieldByName('VR_DOC').AsFloat);
 EditValorFinal.Text    := 'R$ '+CurrToStrF(StrToCurrDef(Trim(EditValorFinal.Text),0),ffNumber,2);
end;

function TFormContasPagar.ValorAbatimento: boolean;
begin
 result := false;
 if (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert]) and
    (FormContasPagar.cxDBDateEdit_DT_PGT.Text = '') and
    (DMcadastro.CDSContasPagarVR_RCB.AsFloat = 0)   and
    (DMcadastro.CDSContasPagarVR_JUR.AsFloat = 0)   and
    (FormContasPagar.PageControl1.ActivePage =  TabCadastro) and
    (DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat >0)then
   begin
    result := true;
    EditValorFinal.Text := floattostr(DMcadastro.CDSContasPagarVR_DEB_DOC.AsFloat - DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat);
    EditValorFinal.Text := FORMATFLOAT('R$ ###,##0.00', STRTOFLOAT(EditValorFinal.Text));
   end;


end;

procedure TFormContasPagar.varrerComponentes;
var i,x: integer;
    hab : Boolean;
begin
 if (DMcadastro.CDSContasPagarDT_PGT.AsString <> '') then
   begin
    hab := False;
    end else
    hab := true;

    GroupBox1.Enabled := hab;
    GroupBox2.Enabled :=  hab;

    DBEdit_NO_DOC.Enabled := hab;
    DBEdit_NO_DOC_ORI.Enabled := hab;
    DBComboBox1.Enabled := hab;
    DBEdit_DS_OBS.Enabled := true;

    GroupBox4.Enabled := hab;
    GroupBox5.Enabled := hab;
    GroupBox6.Enabled := hab;

    cxDBDateEdit_DT_PGT.Enabled := true;
    DBEdit_VR_RCB.Enabled := hab;
    DBEdit_VR_JUR.Enabled := hab;
    DBEdit_VR_ABA_DCT.Enabled := hab;
    DBEdit_DS_OBS.SetFocus;
end;


function TFormContasPagar.verificaDataPagamento: Boolean;
begin
      result := false;
  if (cxDBDateEdit_DT_PGT.Text = '') and
     (FormContasPagar.PageControl1.ActivePage = TabCadastro) and
     (DMcadastro.CDSContasPagarVR_RCB.AsFloat >0) and
     (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert])  then
      begin
      DMcadastro.CDSContasPagarVR_RCB.AsFloat := 0;
      EditValorFinal.Text := floattostr(0);
      calcularValorPago;
      Result := true;
      end;

  if  (cxDBDateEdit_DT_PGT.Text = '') and
      (FormContasPagar.PageControl1.ActivePage = TabCadastro) and
      (DMcadastro.CDSContasPagarVR_JUR.AsFloat >0) and
      (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert])  then
       begin
        DMcadastro.CDSContasPagarVR_JUR.AsFloat := 0;
        EditValorFinal.Text := floattostr(0);
        calcularValorPago;
        Result := true;
       end;

  if  (cxDBDateEdit_DT_PGT.Text = '') and
      (FormContasPagar.PageControl1.ActivePage = TabCadastro) and
      (DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat >0) and
      (DMcadastro.CDSContasPagar.State in [dsEdit,dsInsert])  then
       begin
       DMcadastro.CDSContasPagarVR_ABA_DCT.AsFloat := 0;
       EditValorFinal.Text := floattostr(0);
       calcularValorPago;
       Result := true;
       end;

end;

end.
