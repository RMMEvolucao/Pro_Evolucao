unit UfrmRlt_Chq_DB;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinLiquidSky, Vcl.Menus, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Data.DB, Datasnap.DBClient, frxClass, frxDBSet;

type
  TFormRlt_Chq_DB = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DtIni: TcxDateEdit;
    DtFim: TcxDateEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EdEmitente: TEdit;
    EdCliente: TEdit;
    EdCodCli: TEdit;
    BtnCliente: TcxButton;
    BtnClear: TcxButton;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdMaiorIgual: TEdit;
    EdMenorIgual: TEdit;
    EditCodBanco: TEdit;
    CbTipoImpressora: TComboBox;
    Button1: TButton;
    Button2: TButton;
    cxImageList1: TcxImageList;
    CdsRelatorio: TClientDataSet;
    CdsRelatorioVALOR: TFloatField;
    CdsRelatorioCHEQUE: TStringField;
    CdsRelatorioEMITENTE: TStringField;
    CdsRelatorioCLIENTE: TStringField;
    CdsRelatorioDEVOLUCAO: TDateField;
    CdsRelatorioT: TStringField;
    CdsRelatorioRECEBIDO: TDateField;
    CdsRelatorioBCOAGEN: TStringField;
    frxReport_Rlt_chq_DB: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxReport_Rlt_chq_DB_Mtx: TfrxReport;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdMaiorIgualKeyPress(Sender: TObject; var Key: Char);
    procedure EdMaiorIgualChange(Sender: TObject);
    procedure EdMenorIgualChange(Sender: TObject);
    procedure EdMenorIgualKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure frxReport_Rlt_chq_DBGetValue(const VarName: string;
      var Value: Variant);
    procedure frxReport_Rlt_chq_DB_MtxGetValue(const VarName: string;
      var Value: Variant);
  private
    procedure MontaRelatorio;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRlt_Chq_DB: TFormRlt_Chq_DB;

implementation

uses
  Data.SqlExpr, UDmCadastro, UFuncoes, System.DateUtils, UFrmPrincipal;

{$R *.dfm}

procedure TFormRlt_Chq_DB.Button1Click(Sender: TObject);
begin
 MontaRelatorio;
end;

procedure TFormRlt_Chq_DB.Button2Click(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente sair ?','Aviso',MB_YESNO) =mrYes  then
   close;
end;

procedure TFormRlt_Chq_DB.EdMaiorIgualChange(Sender: TObject);
begin
EdMaiorIgual.Text :=  FormatoBanco(EdMaiorIgual.Text);
EdMaiorIgual.SelStart := Length(EdMaiorIgual.Text);
end;

procedure TFormRlt_Chq_DB.EdMaiorIgualKeyPress(Sender: TObject; var Key: Char);
begin
DigitaApenasNumero(key);
end;

procedure TFormRlt_Chq_DB.EdMenorIgualChange(Sender: TObject);
begin
EdMenorIgual.Text :=  FormatoBanco(EdMenorIgual.Text);
EdMenorIgual.SelStart := Length(EdMenorIgual.Text);
end;

procedure TFormRlt_Chq_DB.EdMenorIgualKeyPress(Sender: TObject; var Key: Char);
begin
DigitaApenasNumero(key);
end;

procedure TFormRlt_Chq_DB.FormShow(Sender: TObject);
begin
 DtIni.Date := StartOfTheMonth(now);
 DtFim.Date := EndOfTheMonth(now);
 EdMaiorIgual.Text :='0,00';
 EdMenorIgual.Text :='999.999.999,00';
end;

procedure TFormRlt_Chq_DB.frxReport_Rlt_chq_DBGetValue(const VarName: string;
  var Value: Variant);
begin
if VarName = 'DescRelatorio'  then
   value := 'Relação de Cheques Devolvidos baixados no periodo: '+ datetostr(DtIni.Date) + ' a ' + DateToStr(DtFim.Date) ;

if VarName = 'NomeEmpresa' then
   value :=  NM_empresa;
end;

procedure TFormRlt_Chq_DB.frxReport_Rlt_chq_DB_MtxGetValue(
  const VarName: string; var Value: Variant);
begin
if VarName = 'desc'  then
   value := 'Relação de Cheques Devolvidos baixados no periodo: '+ datetostr(DtIni.Date) + ' a ' + DateToStr(DtFim.Date) ;

if VarName = 'nmEmp' then
   value :=  NM_empresa;
end;

procedure TFormRlt_Chq_DB.MontaRelatorio;
var q : TSQLQuery;
begin
 try
   q := TSQLQuery.Create(nil);
   q.SQLConnection := DMcadastro.SQLConnection1;
   q.SQL.Clear;
   q.SQL.Add('select db_chqpdt.dt_dps, '+
             'db_chqpdt.vr_chq,db_chqpdt.no_chq, '+
             'db_localcobranca.cd_loc_cob||''/''||db_chqpdt.no_agc ||'' /''||db_chqpdt.no_cta as BcoAgenConta, '+
             'db_chqpdt.nm_emt,db_cliente.nm_cli,db_cliente.no_fon,db_cliente.id,db_chqpdt.dt_vct, '+
             'db_chqpdt.sn_tcr from db_chqpdt '+
             'inner join db_cliente       on db_cliente.id       = db_chqpdt.id_cliente '+
             'inner join db_localcobranca on db_localcobranca.id = db_chqpdt.id_banco '+
             'where db_chqpdt.dt_vct between :PDTIni and :pDTFim '+
             'and   db_chqpdt.st_chq = ''BX''  '+
             'and db_chqpdt.vr_chq between :pVMenor and :pVMaior ');

  if EdCodCli.Text <> '' then
   begin
   q.SQL.Add('and db_cliente.id =:pCdID');
   q.ParamByName('pCdID').AsInteger := StrToInt(EdCodCli.Text);
   end;

  if EdEmitente.Text <> '' then
    begin
      q.SQL.Add('and db_chqpdt.nm_emt = :pEmit ');
      q.ParamByName('pEmit').AsString := EdEmitente.Text;
    end;

   if EditCodBanco.Text <> '' then
    begin
      q.SQL.Add('and db_localcobranca.cd_loc_cob = :pCodban');
      q.ParamByName('pcodban').AsString := EditCodBanco.Text;
    end;

   case CbTipoImpressora.ItemIndex of
      0:
        q.SQL.Add('order by db_chqpdt.dt_dps ');
      1:
        q.SQL.Add('order by db_chqpdt.dt_vct ');
      2:
        q.SQL.Add('order by db_chqpdt.dt_inc ');
    end;


  q.ParamByName('PDTIni').AsDate    := DtIni.Date;
  q.ParamByName('pDTFim').AsDate    := DtFim.Date;
  q.ParamByName('pVMenor').AsFloat  := TirarMascara(EdMaiorIgual.Text);
  q.ParamByName('pVmaior').AsFloat  := TirarMascara(EdMenorIgual.Text);
  q.Open;

  CdsRelatorio.Close;
  CdsRelatorio.CreateDataSet;
  CdsRelatorio.Open;
  q.First;

    while not q.Eof do
      begin
       CdsRelatorio.Append;
       CdsRelatorioRECEBIDO.AsDateTime      := q.FieldByName('dt_dps').AsDateTime;
       CdsRelatorioVALOR.AsFloat            := q.FieldByName('vr_chq').AsFloat;
       CdsRelatorioCHEQUE.AsString          := q.FieldByName('no_chq').AsString;
       CdsRelatorioBCOAGEN.AsString         := q.FieldByName('BcoAgenConta').AsString;
       CdsRelatorioEMITENTE.AsString        := q.FieldByName('nm_emt').AsString;
       CdsRelatorioCLIENTE.AsString         := Format('%.6d', [q.FieldByName('ID').AsInteger]) + ' '+ q.FieldByName('nm_cli').AsString;
       CdsRelatorioDEVOLUCAO.AsDateTime     := q.FieldByName('dt_vct').AsDateTime;
       CdsRelatorioT.AsString               := q.FieldByName('sn_tcr').AsString;
       CdsRelatorio.Post;
       q.Next;
      end;

     case CbTipoImpressora.ItemIndex of
       0: frxReport_Rlt_chq_DB.ShowReport();
       1: frxReport_Rlt_chq_DB_Mtx.ShowReport();
      end;

 finally
   FreeAndNil(q);
   CdsRelatorio.Close;
 end;

end;

end.
