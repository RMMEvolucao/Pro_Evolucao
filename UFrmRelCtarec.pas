unit UFrmRelCtarec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  dxGDIPlusClasses, Data.DB, Datasnap.DBClient, frxClass, frxDBSet,
  frxExportPDF, frxExportXLS, frxDMPExport, dxSkinsCore, dxSkinLiquidSky,SqlExpr,
  UFrmPrincipal, Data.FMTBcd,  System.DateUtils;

type
  TFormRelatorioCTAREC = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    CB_Indice: TComboBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    data_Inicial: TcxDateEdit;
    data_final: TcxDateEdit;
    RadioTipoRelatorio: TRadioGroup;
    RadioSituacao: TRadioGroup;
    RadioStatus: TRadioGroup;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboLocal: TComboBox;
    ComboVendedor: TComboBox;
    GroupBox4: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label21: TLabel;
    Label9: TLabel;
    Label22: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    GroupBox6: TGroupBox;
    SpeedButton1: TSpeedButton;
    Edit_NM_CLI: TEdit;
    Edit_ENDERECO: TEdit;
    Edit_Telefone: TEdit;
    Edit_Fax: TEdit;
    Edit_Cidade: TEdit;
    Edit_CODIGO: TEdit;
    Edit_CNPJ: TEdit;
    Edit_Bairro: TEdit;
    Edit_Cep: TEdit;
    Edit_UF: TEdit;
    Image1: TImage;
    CDSAnalitico: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxDBContasReceber: TfrxDBDataset;
    FR_ContasReceber_A: TfrxReport;
    CDSAnaliticono_doc: TStringField;
    CDSAnaliticodt_vct: TDateField;
    CDSAnaliticodt_pgt: TDateField;
    CDSAnaliticovr_deb_doc: TDateField;
    CDSAnaliticovr_rcb: TFloatField;
    CDSAnaliticovr_jur: TFloatField;
    CDSAnaliticovr_aba_dct: TFloatField;
    CDSAnaliticovr_dev: TFloatField;
    CDSAnaliticovr_doc: TFloatField;
    CDSAnaliticoNM_CLI: TStringField;
    fr_contasreceber_sintetico: TfrxReport;
    CDSAnaliticodt_ems: TDateField;
    CDSAnaliticodt_ult_mod: TDateField;
    CDSAnaliticost_doc: TStringField;
    CDSAnaliticoid_ven: TStringField;
    CDSAnaliticonm_rep: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FR_ContasReceber_AGetValue(const VarName: string; var Value: Variant);
    procedure SQLAnaliticoGeral(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FR_ContasReceber_ABeforePrint(Sender: TfrxReportComponent);
    procedure ContasReceberRelatorio001;
  private
    { Private declarations }
   MValor1a7, MValor7a14, MValor15a30, MValor31a45, MValor46a60, MValor61a90, MAcima90,
   MVencida1a7 : currency;
  public
    { Public declarations }
    CalculaTotal : Real;
  end;

var
  FormRelatorioCTAREC: TFormRelatorioCTAREC;

implementation

{$R *.dfm}

uses UDmCadastro, uFrmClientes, uFrmContasReceber;


procedure TFormRelatorioCTAREC.Button1Click(Sender: TObject);

begin
 SQLAnaliticoGeral(sender);
 ContasReceberRelatorio001;
end;

procedure TFormRelatorioCTAREC.Button2Click(Sender: TObject);
begin
 FormRelatorioCtaRec.Close;
end;

procedure TFormRelatorioCTAREC.ContasReceberRelatorio001;
begin
// if (cb_indice.ItemIndex = 1) and (RadioTipoRelatorio.ItemIndex = 0) and (RadioSituacao.ItemIndex = 0) and
//    (RadioStatus.ItemIndex = 0) then
// begin
//   showMessage('correto');
// end;


end;

procedure TFormRelatorioCTAREC.FormShow(Sender: TObject);
begin
 data_Inicial.Date := date;
 data_Final.Date   := date;

 dmCadastro.CDSVendedor.Open;
 dmCadastro.CDSLocalCobranca.Open;

 // alimenta combobox com dados do local de cobranca
 dmCadastro.CDSLocalCobranca.First;
 while not dmCadastro.CDSLocalCobranca.eof do
 begin
  ComboLocal.Items.Add(dmCadastro.CDSLocalCobrancaNM_LOC_COB.AsString);
  //+' - '+dmCadastro.CDSLocalCobrancaCD_LOC_COB.AsString);
  dmCadastro.CDSLocalCobranca.Next;

 end;

// alimenta combobox dados cadastro representante
 dmCadastro.CDSVendedor.First;
 while not dmCadastro.CDSVendedor.eof do
 begin
  ComboVendedor.Items.Add(dmCadastro.CDSVendedorNM_VEN.AsString);
  //+' - '+dmCadastro.CDSVendedorID.AsString);
  dmCadastro.CDSVendedor.Next;
 end;
end;

procedure TFormRelatorioCTAREC.FR_ContasReceber_ABeforePrint(
  Sender: TfrxReportComponent);
begin

 if CB_Indice.ItemIndex = 0 then
 begin
  FR_ContasReceber_A.Variables['MIndiceRelatorio'] := CDSAnalitico.FieldByName('DT_EMS').AsDateTime;
  FR_ContasReceber_A.Variables['MLabel_Indice']    := QuotedStr('Data de Emissão....:');
 end;

 if CB_Indice.ItemIndex = 1 then
 begin
  FR_ContasReceber_A.Variables['MIndiceRelatorio'] := CDSAnalitico.FieldByName('DT_VCT').AsDateTime;
  FR_ContasReceber_A.Variables['MLabel_Indice']    := QuotedStr('DATA DE VENCIMENTO.:');
 end;

 if CB_Indice.ItemIndex = 2 then
 begin
  FR_ContasReceber_A.Variables['MIndiceRelatorio'] := CDSAnalitico.FieldByName('DT_PGT').AsDateTime;
  FR_ContasReceber_A.Variables['MLabel_Indice']    := QuotedStr('DATA DE PAGAMENTO..:');
 end;

 if CB_Indice.ItemIndex = 3 then
 begin
  FR_ContasReceber_A.Variables['MIndiceRelatorio'] := CDSAnalitico.FieldByName('DT_ULT_MOD').AsDateTime;
  FR_ContasReceber_A.Variables['MLabel_Indice']    := QuotedStr('DATA DE MODIFICACAO:');
 end;

end;

procedure TFormRelatorioCTAREC.FR_ContasReceber_AGetValue(const VarName: string;
  var Value: Variant);
var
MTipoRelatorio, MSituacaoDocumento, MStatusDocumento, MLocalCobranca, MRep, MOrdemRelatorio : String;
//MNomeCliente, MNomeVendedor : string;
begin

  MLocalCobranca := ComboLocal.Text;
  MRep           := ComboVendedor.Text;


// ATRIBUIDO STRING INDICE PARA CABEÇALHO DO RELATORIO

if CB_Indice.ItemIndex = 0 then
begin
  MOrdemRelatorio := CB_Indice.Text;
end;
if CB_Indice.ItemIndex = 1 then
begin
  MOrdemRelatorio := CB_Indice.Text;
end;
if CB_Indice.ItemIndex = 2 then
begin
  MOrdemRelatorio := CB_Indice.Text;
end;
if CB_Indice.ItemIndex = 3 then
begin
  MOrdemRelatorio := CB_Indice.Text;
end;

//--------------------------------------------------------------------------------------------


// ATRIBUINDO VARIAVEL A SITUACAO DOCUMENTO
  if RadioSituacao.ItemIndex = 0 then
  begin
     MSituacaoDocumento := 'GERAL';
  end;

  if RadioSituacao.ItemIndex = 1 then
  begin
     MSituacaoDocumento := 'DOCUMENTOS EM ABERTO';
  end;
  if RadioSituacao.ItemIndex = 2 then
  begin
     MSituacaoDocumento := 'DOCUMENTOS PAGOS';
  end;
 //--------------------------------------------------------------------

// ATRIBUINDO VARIAVEL A STATUS DOCUMENTO
  if RadioStatus.ItemIndex = 0 then
  begin
     MStatusDocumento := 'GERAL';
  end;

  if RadioStatus.ItemIndex = 1 then
  begin
     MStatusDocumento := 'NORMAL';
  end;
  if RadioStatus.ItemIndex = 2 then
  begin
     MStatusDocumento := 'DESCONTADO';
  end;
 //--------------------------------------------------------------------


 // ATRIBUINDO VARIAVEL AO TIPO DE RELATORIO
  if RadioTipoRelatorio.ItemIndex = 0 then
  begin
    MTipoRelatorio := 'ANALITICO';
   end else
    MTipoRelatorio := 'SINTETICO';


 //VARIAVES DO FASTREPORT
  if VARNAME = 'rUsuario'       then value := 'Usuário: '+user+'('+idUsuario+')';
  if VARNAME = 'MEmpresa'       then value := NM_empresa;
  if VARNAME = 'MTipo'          then value := MTipoRelatorio;
  if VARNAME = 'MSituacao'      then value := MSituacaoDocumento;
  if VARNAME = 'MLocal'         then value := MLocalCobranca;
  if VARNAME = 'MStatus'        then value := MStatusDocumento;
  if VARNAME = 'MVendedor'      then value := MRep;
  if VARNAME = 'MDataInicial'   then value := Data_Inicial.Text;
  if VARNAME = 'MDataFinal'     then value := Data_Final.Text;
  if VARNAME = 'MCodigoCliente' then value := Edit_CODIGO.Text;
  if VARNAME = 'MNomeCliente'   then value := Edit_NM_CLI.Text;
  if VARNAME = 'MOrdem'         then value := MOrdemRelatorio;
  if VARNAME = 'MTotalRecebido' then value := CalculaTotal;
  if VARNAME = 'RValor1a7'      then value := MValor1a7;
  if VARNAME = 'RValor7a14'     then value := MValor7a14;
  if VARNAME = 'RValor15a30'    then value := MValor15a30;
  if VARNAME = 'RValor31a45'    then value := MValor31a45;
  if VARNAME = 'RValor46a60'    then value := MValor46a60;
  if VARNAME = 'RValor61a90'    then value := MValor61a90;
  if VARNAME = 'RAcima90'       then value := MAcima90;
  if VARNAME = 'RVencida1a7'    then value := MVencida1a7;

end;

procedure TFormRelatorioCTAREC.SpeedButton1Click(Sender: TObject);
begin
  // cria formulario clientes para consulta
  try
      Application.CreateForm(TFormClientes,FormClientes);
      FormClientes.showmodal;
     finally
      FormClientes.Free;
  end;
end;

procedure TFormRelatorioCTAREC.SQLAnaliticoGeral(Sender: TObject);
var
q : tsqlquery;

begin
   q :=  TSQLQuery.Create(nil); // criou a sql
   q.SQLConnection :=  DMcadastro.SQLConnection1; // linkou a sua sql com o banco de dados
   q.SQL.Clear; // limpou a sql
   q.SQL.Add('select db_ctarec.no_doc,db_ctarec.st_doc,db_ctarec.dt_vct,db_ctarec.dt_ems,db_ctarec.dt_pgt,db_ctarec.vr_deb_doc, '+
             'db_ctarec.vr_rcb,db_ctarec.vr_jur,db_ctarec.vr_aba_dct,db_ctarec.vr_dev,db_ctarec.dt_ult_mod, '+
             'db_ctarec.vr_doc,db_cliente.nm_cli,db_localcobranca.nm_loc_cob, db_vendedor.nm_ven from db_ctarec '+
             'inner join db_cliente on db_ctarec.id_cliente = db_cliente.id '+
             'inner join db_localcobranca on db_ctarec.id_local = db_localcobranca.id '+
             'left outer join db_vendedor on db_ctarec.id_ven   = db_vendedor.id ');





// escolher o indice pelo qual o relatorio sera impresso

    if CB_Indice.ItemIndex = 0 then
    begin
     q.SQL.Add('where db_ctarec.dt_ems between :pDtIni and :pDtFim ');     // EMISSÃO DO DOCUMENTO
     q.ParamByName('pDtIni').AsDateTime := data_Inicial.Date;
     q.ParamByName('pDtFim').AsDateTime := data_final.Date;

    end;

   if CB_Indice.ItemIndex = 1 then
    begin
     q.SQL.Add('where db_ctarec.dt_vct between :pDtIni and :pDtFim ');     // VENCIMENTO DOCUMENTO
     q.ParamByName('pDtIni').AsDateTime := data_Inicial.Date;
     q.ParamByName('pDtFim').AsDateTime := data_final.Date;
    end;
                                  if CB_Indice.ItemIndex = 2 then
    begin
     q.SQL.Add('where db_ctarec.dt_pgt between :pDtIni and :pDtFim ');     // PAGAMENTO DOCUMENTO
     q.ParamByName('pDtIni').AsDateTime := data_Inicial.Date;
     q.ParamByName('pDtFim').AsDateTime := data_final.Date;
    end;

   if CB_Indice.ItemIndex = 3 then
    begin
     q.SQL.Add('where db_ctarec.dt_ult_mod between :pDtIni and :pDtFim '); // MODIFICAÇÃO DOCUMENTO
     q.ParamByName('pDtIni').AsDateTime := data_Inicial.Date;
     q.ParamByName('pDtFim').AsDateTime := data_final.Date;
    end;


//// SITUACAO DO DOCUMENTO - GERAL, EM ABERTO, PAGO

    if RadioSituacao.ItemIndex = 0 then
    begin
    // nenhum filtro aplicado
    end;


    if RadioSituacao.ItemIndex = 1 then
    begin
     q.SQL.Add('and db_ctarec.dt_pgt is null '); // DOCUMENTOS EM ABERTO
    end;

    if RadioSituacao.ItemIndex = 2 then
    begin
     q.SQL.Add('and db_ctarec.dt_pgt is not null '); // DOCUMENTOS PAGOS
    end;

///// STATUS DO DOCUMENTO - GERAL, NORMAL, DESCONTADO

    if RadioStatus.ItemIndex = 0 then
    begin
    /// nenhum filtro aplicado
    end;

    if RadioStatus.ItemIndex = 1 then
    begin
     q.SQL.Add('and db_ctarec.st_doc = ''N'' ');  // Filtra Documento Normal
    end;

    if RadioStatus.ItemIndex = 2 then
    begin
     q.SQL.Add('and db_ctarec.st_doc = ''D'' ');  // Filtra Documento Descontado
    end;




///// FILTRA PELO LOCAL DE COBRANCA  --------------------------------------
   if combolocal.Text <> '' then
   begin
     q.SQL.Add('and db_localcobranca.nm_loc_cob = :plocal');
     q.ParamByName('plocal').AsString := ComboLocal.Text;
   end;
///-------------------------------------------------------------------------

///// FILTRA PELO VENDEDOR  -------------------------------------------
   if ComboVendedor.Text <> '' then
   begin
     q.SQL.Add('and db_vendedor.nm_ven = :pvendedor');
     q.ParamByName('pvendedor').AsString := ComboVendedor.Text;
   end;
///-------------------------------------------------------------------------


///// FILTRA PELO CLIENTE  -------------------------------------------
   if Edit_NM_CLI.Text <> '' then
   begin
     q.SQL.Add('and db_cliente.id = :pcliente');
     q.ParamByName('pcliente').AsString := Edit_CODIGO.Text;
   end;
///-------------------------------------------------------------------------


 // altera a ordem que será indexado o relatorio
   if CB_Indice.ItemIndex = 0 then
   q.SQL.Add('order by  db_ctarec.dt_ems ');

   if CB_Indice.ItemIndex = 1 then
   q.SQL.Add('order by  db_ctarec.dt_vct ');

   if CB_Indice.ItemIndex = 2 then
   q.SQL.Add('order by  db_ctarec.dt_pgt ');

   if CB_Indice.ItemIndex = 3 then
   q.SQL.Add('order by  db_ctarec.dt_ult_mod ');
   q.Open;




      if q.IsEmpty =  false then
//    if not q.IsEmpty then
      begin
         try
          CDSAnalitico.Close;
          CDSAnalitico.CreateDataSet;
          CDSAnalitico.Open;
           q.First;
           while not q.Eof do
           begin
            CalculaTotal := 0;
            CDSAnalitico.Append;
            CDSAnaliticono_doc.AsString       := q.FieldByName('no_doc').AsString;
            CDSAnaliticodt_ems.AsDateTime     := q.FieldByName('dt_ems').AsDateTime;
            CDSAnaliticodt_vct.AsDateTime     := q.FieldByName('dt_vct').AsDateTime;
            CDSAnaliticodt_ult_mod.AsDateTime := q.FieldByName('dt_ult_mod').AsDateTime;
            CDSAnaliticovr_deb_doc.AsFloat    := q.FieldByName('vr_deb_doc').AsFloat;
            CDSAnaliticovr_rcb.AsFloat        := q.FieldByName('vr_rcb').AsFloat;
            CDSAnaliticovr_jur.AsFloat        := q.FieldByName('vr_jur').AsFloat;
            CDSAnaliticovr_aba_dct.AsFloat    := q.FieldByName('vr_aba_dct').AsFloat;
            CDSAnaliticovr_dev.AsFloat        := q.FieldByName('vr_dev').AsFloat;
            CDSAnaliticovr_doc.AsFloat        := q.FieldByName('vr_doc').AsFloat;
            CDSAnaliticoNM_CLI.AsString       := q.FieldByName('NM_CLI').AsString;
            CDSAnaliticoST_DOC.AsString       := q.FieldByName('ST_DOC').AsString;
//------------------------------------------------------------------------------------------- Calcula Totais Relatorio
            If DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) <= 7 then
            begin
              MValor1a7 := MValor1a7+CDSAnaliticoVR_DOC.AsFloat;
            end;

            If (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) >= 7) and
               (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) <= 14) then
            begin
              MValor7a14 := MValor7a14+CDSAnaliticoVR_DOC.AsFloat;
            end;

            If (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) >= 15) and
               (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) <= 30) then
            begin
              MValor15a30 := MValor15a30+CDSAnaliticoVR_DOC.AsFloat;
            end;

            If (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) >= 31) and
               (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) <= 45) then
            begin
              MValor31a45 := MValor31a45+CDSAnaliticoVR_DOC.AsFloat;
            end;

            If (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) >= 46) and
               (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) <= 60) then
            begin
              MValor46a60 := MValor46a60+CDSAnaliticoVR_DOC.AsFloat;
            end;

            If (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) >= 61) and
               (DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) <= 90) then
            begin
              MValor61a90 := MValor61a90+CDSAnaliticoVR_DOC.AsFloat;
            end;

            If DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) > 90 then
            begin
              MAcima90 := MAcima90+CDSAnaliticoVR_DOC.AsFloat;
            end;

            If DaysBetween(data_Inicial.date, CDSAnaliticodt_vct.AsDateTime) <= -60 then
            begin
              MVencida1a7 := MVencida1a7+CDSAnaliticoVR_DOC.AsFloat;
            end;
//---------------------------------------------------------------------------------------------- Calcula totais fim

            if (q.FieldByName('dt_pgt').AsDateTime = 0) then
            begin
             CDSAnaliticodt_pgt.Clear;
             end
             else
              CDSAnaliticodt_pgt.AsDateTime  := q.FieldByName('dt_pgt').AsDateTime;
              CDSAnalitico.Post;
              q.Next;
       //       CalculaTotal := (dmCadastro.CDSContasReceberVR_RCB.AsFloat+dmCadastro.CDSContasReceberVR_JUR.AsFloat)-(dmCadastro.CDSContasReceberVR_ABA_DCT.AsFloat+dmCadastro.CDSContasReceberVR_DEV.AsFloat);
            end;
         finally
            FR_ContasReceber_A.ShowReport();
            q.Free;
            CDSAnalitico.Close;

            MValor1a7   := 0;
            MValor7a14  := 0;
            MValor15a30 := 0;
            MValor31a45 := 0;
            MValor46a60 := 0;
            MValor61a90 := 0;
            MAcima90    := 0;
         end;
      end;
end;

end.
