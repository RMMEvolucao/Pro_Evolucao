unit UfrmRlt_Chq_BX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinLiquidSky, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, Data.DB, Datasnap.DBClient,
  System.ImageList, Vcl.ImgList, frxClass, frxDBSet;

type
  TFormRlt_Chq_BX = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DtIni: TcxDateEdit;
    DtFim: TcxDateEdit;
    CbOrdem: TComboBox;
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
    frxReport_Rlt_chq_bx: TfrxReport;
    CdsRelatorioDEPOSITO: TDateField;
    CdsRelatorioVALOR: TFloatField;
    CdsRelatorioCHEQUE: TStringField;
    CdsRelatorioBCOAGENCCONTA: TStringField;
    CdsRelatorioEMITENTE: TStringField;
    CdsRelatorioCLIENTE: TStringField;
    CdsRelatorioFONE: TStringField;
    CdsRelatorioVENCIMENTO: TDateField;
    CdsRelatorioT: TStringField;
    frxDBDataset1: TfrxDBDataset;
    frxReport_Rlt_chq_bx_Mtx: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtnClienteClick(Sender: TObject);
    procedure MontaRelatorio;
    procedure EdMaiorIgualChange(Sender: TObject);
    procedure EdMenorIgualChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure frxReport_Rlt_chq_bxGetValue(const VarName: string;
      var Value: Variant);
    procedure Button2Click(Sender: TObject);
    procedure frxReport_Rlt_chq_bx_MtxGetValue(const VarName: string;
      var Value: Variant);
    procedure BtnClearClick(Sender: TObject);
    procedure EditCodBancoExit(Sender: TObject);
    procedure EditCodBancoKeyPress(Sender: TObject; var Key: Char);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRlt_Chq_BX: TFormRlt_Chq_BX;

implementation

uses
  System.DateUtils, uFrmClientes, Data.SqlExpr, UDmCadastro, UFuncoes,
  UFrmPrincipal;

{$R *.dfm}

procedure TFormRlt_Chq_BX.BtnClearClick(Sender: TObject);
begin
EdCliente.Clear;
EdCodCli.Clear;
end;

procedure TFormRlt_Chq_BX.BtnClienteClick(Sender: TObject);
begin
 try
   Application.CreateForm(TFormClientes,FormClientes);
   FormClientes.ShowModal;
  finally
   FreeAndNil(FormClientes);
  end;
end;

procedure TFormRlt_Chq_BX.MontaRelatorio;
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

   case CbOrdem.ItemIndex of
      0:
        q.SQL.Add('order by db_chqpdt.dt_dps ');
      1:
        q.SQL.Add('order by db_chqpdt.dt_vct ');
      2:
        q.SQL.Add('order by db_chqpdt.dt_inc ');
    end;


  q.ParamByName('PDTIni').AsDate := DtIni.Date;
  q.ParamByName('pDTFim').AsDate := DtFim.Date;
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
       CdsRelatorioDEPOSITO.AsDateTime      := q.FieldByName('dt_dps').AsDateTime;
       CdsRelatorioVALOR.AsFloat            := q.FieldByName('vr_chq').AsFloat;
       CdsRelatorioCHEQUE.AsString          := q.FieldByName('no_chq').AsString;
       CdsRelatorioBCOAGENCCONTA.AsString   := q.FieldByName('BcoAgenConta').AsString;
       CdsRelatorioEMITENTE.AsString        := q.FieldByName('nm_emt').AsString;
       CdsRelatorioCLIENTE.AsString         := Format('%.6d', [q.FieldByName('ID').AsInteger]) + ' '+ q.FieldByName('nm_cli').AsString;
       CdsRelatorioFONE.AsString            := q.FieldByName('no_fon').AsString;
       CdsRelatorioVENCIMENTO.AsDateTime    := q.FieldByName('dt_vct').AsDateTime;
       CdsRelatorioT.AsString               := q.FieldByName('sn_tcr').AsString;
       CdsRelatorio.Post;
       q.Next;
      end;

      case CbTipoImpressora.ItemIndex of
       0: frxReport_Rlt_chq_bx.ShowReport();
       1: frxReport_Rlt_chq_bx_Mtx.ShowReport();
      end;

 finally
   FreeAndNil(q);
   CdsRelatorio.Close;
 end;

end;



procedure TFormRlt_Chq_BX.Button1Click(Sender: TObject);
begin
MontaRelatorio;
end;

procedure TFormRlt_Chq_BX.Button2Click(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente sair ?','Aviso',MB_YESNO) =mrYes  then
   close;

end;

procedure TFormRlt_Chq_BX.EditCodBancoExit(Sender: TObject);
begin
if EditCodBanco.Text <> '' then
   EditCodBanco.Text := (Format('%.3d', [strtoint(EditCodBanco.Text)]));
end;

procedure TFormRlt_Chq_BX.EditCodBancoKeyPress(Sender: TObject; var Key: Char);
begin
DigitaApenasNumero(key);
end;

procedure TFormRlt_Chq_BX.EdMaiorIgualChange(Sender: TObject);
begin
EdMaiorIgual.Text     := FormatoBanco(EdMaiorIgual.Text);
EdMaiorIgual.SelStart := Length(EdMaiorIgual.Text);

end;

procedure TFormRlt_Chq_BX.EdMenorIgualChange(Sender: TObject);
begin
EdMenorIgual.Text := FormatoBanco(EdMenorIgual.Text);
EdMenorIgual.SelStart := Length(EdMenorIgual.Text);
end;

procedure TFormRlt_Chq_BX.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
   key := #0;
   PostMessage(handle, WM_KEYDOWN, VK_TAB, 1);
 end;
end;

procedure TFormRlt_Chq_BX.FormShow(Sender: TObject);
begin
 DtIni.Date := StartOfTheMonth(now);
 DtFim.Date := EndOfTheMonth(now);
 EdMaiorIgual.Text :='0,00';
 EdMenorIgual.Text :='999.999.999,00';
end;

procedure TFormRlt_Chq_BX.frxReport_Rlt_chq_bxGetValue(const VarName: string;
  var Value: Variant);
begin

if VarName = 'DescRelatorio'  then
   value := 'Relação de Cheques baixados no periodo: '+ datetostr(DtIni.Date) + ' a ' + DateToStr(DtFim.Date)+ ' - ' + CbOrdem.Text ;

if VarName = 'NomeEmpresa' then
   value :=  NM_empresa;
end;

procedure TFormRlt_Chq_BX.frxReport_Rlt_chq_bx_MtxGetValue(
  const VarName: string; var Value: Variant);
begin
if VarName = 'NmEmp' then
   value := NM_empresa;

if VarName = 'Desc' then
   value  := 'Relação de Cheques baixados no periodo: '+ datetostr(DtIni.Date) + ' a ' + DateToStr(DtFim.Date)+ ' - ' + CbOrdem.Text;


end;

end.
