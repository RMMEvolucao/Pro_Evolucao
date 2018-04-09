unit UFrmRlt_Chq_PD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinLiquidSky, Vcl.StdCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, Data.DB, Datasnap.DBClient, Vcl.Menus, cxButtons,
  System.ImageList, Vcl.ImgList, frxClass, frxDBSet;

type
  TFormRlt_Chq_PD = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    DtIni: TcxDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    DtFim: TcxDateEdit;
    CbOrdem: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    EdEmitente: TEdit;
    Label5: TLabel;
    EdCliente: TEdit;
    EdCodCli: TEdit;
    Label6: TLabel;
    EdMaiorIgual: TEdit;
    Label7: TLabel;
    EdMenorIgual: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    EditCodBanco: TEdit;
    Button1: TButton;
    Button2: TButton;
    CdsRelatorio: TClientDataSet;
    CdsRelatorioVencimento: TDateField;
    CdsRelatorioValor: TFloatField;
    CdsRelatorioBancoAgencia: TStringField;
    CdsRelatorioEmitente: TStringField;
    CdsRelatorioCliente: TStringField;
    CdsRelatorioFone: TStringField;
    CdsRelatorioInclusao: TDateField;
    CdsRelatorioT: TStringField;
    BtnCliente: TcxButton;
    cxImageList1: TcxImageList;
    BtnClear: TcxButton;
    frxReport_Rlt_chq_pd: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    CbTipoImpressora: TComboBox;
    frxReport_Rlt_chq_pd_Mtx: TfrxReport;
    procedure FormShow(Sender: TObject);
    procedure BtnClienteClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure frxReport_Rlt_chq_pdGetValue(const VarName: string; var Value: Variant);
    procedure MontaRelatorio;
    procedure Button1Click(Sender: TObject);
    procedure EdMaiorIgualChange(Sender: TObject);
    function TirarMascara(Valor: string): double;
    procedure frxReport_Rlt_chq_pdBeforePrint(Sender: TfrxReportComponent);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdMaiorIgualKeyPress(Sender: TObject; var Key: Char);
    procedure EdMenorIgualKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodBancoKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodBancoExit(Sender: TObject);
    procedure frxReport_Rlt_chq_pd_MtxGetValue(const VarName: string;
      var Value: Variant);
    procedure EdMenorIgualChange(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    procedure CriandoCompRelatorio;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRlt_Chq_PD: TFormRlt_Chq_PD;

implementation

uses
  System.DateUtils, uFrmClientes, UDmCadastro, UFrmPrincipal, Data.SqlExpr,
  System.MaskUtils, UFuncoes;

{$R *.dfm}

procedure TFormRlt_Chq_PD.BtnClearClick(Sender: TObject);
begin
EdCliente.Clear;
EdCodCli.Clear;
end;

procedure TFormRlt_Chq_PD.BtnClienteClick(Sender: TObject);
begin
  try
   Application.CreateForm(TFormClientes,FormClientes);
   FormClientes.ShowModal;
  finally
   FreeAndNil(FormClientes);
  end;

end;

procedure TFormRlt_Chq_PD.Button1Click(Sender: TObject);
begin
MontaRelatorio;
end;

procedure TFormRlt_Chq_PD.Button2Click(Sender: TObject);
begin
if Application.MessageBox('Deseja realmente sair ?','Aviso',MB_YESNO) =mrYes  then
   close;
end;

procedure TFormRlt_Chq_PD.EdMenorIgualChange(Sender: TObject);
begin
EdMenorIgual.Text     := FormatoBanco(EdMenorIgual.Text);
EdMenorIgual.SelStart := Length(EdMenorIgual.Text);
end;

procedure TFormRlt_Chq_PD.EdMenorIgualKeyPress(Sender: TObject; var Key: Char);
begin
DigitaApenasNumero(Key);
end;

procedure TFormRlt_Chq_PD.EditCodBancoExit(Sender: TObject);
begin
if EditCodBanco.Text <> '' then
   EditCodBanco.Text := (Format('%.3d', [strtoint(EditCodBanco.Text)]));
end;

procedure TFormRlt_Chq_PD.EditCodBancoKeyPress(Sender: TObject; var Key: Char);
begin
DigitaApenasNumero(Key);
end;

procedure TFormRlt_Chq_PD.EdMaiorIgualChange(Sender: TObject);
begin
EdMaiorIgual.Text      := FormatoBanco(EdMaiorIgual.Text);
EdMaiorIgual.SelStart  := Length(EdMaiorIgual.Text);
end;

procedure TFormRlt_Chq_PD.EdMaiorIgualKeyPress(Sender: TObject; var Key: Char);
begin
  DigitaApenasNumero(Key);
end;

procedure TFormRlt_Chq_PD.CriandoCompRelatorio;

begin

end;






procedure TFormRlt_Chq_PD.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
   key := #0;
   PostMessage(handle, WM_KEYDOWN, VK_TAB, 1);
 end;
end;

procedure TFormRlt_Chq_PD.FormShow(Sender: TObject);
begin
 DtIni.Date := StartOfTheMonth(now);
 DtFim.Date := EndOfTheMonth(now);
 EdMaiorIgual.Text :='0,00';
 EdMenorIgual.Text :='999.999.999,00';
end;

procedure TFormRlt_Chq_PD.frxReport_Rlt_chq_pdBeforePrint(
  Sender: TfrxReportComponent);
begin
CriandoCompRelatorio;
end;





procedure TFormRlt_Chq_PD.frxReport_Rlt_chq_pdGetValue(const VarName: string;
  var Value: Variant);
begin

if VarName = 'DescRelatorio'  then
   value := 'Relação de Cheques pre-datados no periodo: '+ datetostr(DtIni.Date) + ' a ' + DateToStr(DtFim.Date)+ ' - Ordem: Data de vencimento' ;

if VarName = 'NomeEmpresa' then
   value :=  NM_empresa;


end;

procedure TFormRlt_Chq_PD.frxReport_Rlt_chq_pd_MtxGetValue(
  const VarName: string; var Value: Variant);
begin
if VarName = 'nmDesc'  then
   value := 'Relação de Cheques pre-datados no periodo: '+ datetostr(DtIni.Date) + ' a ' + DateToStr(DtFim.Date)+ ' - Ordem: Data de vencimento' ;

if VarName = 'nmEmpresa' then
   value :=  NM_empresa;
end;

procedure TFormRlt_Chq_PD.MontaRelatorio;
var q : TSQLQuery;
begin
  try
  q := TSQLQuery.Create(nil);
  q.SQLConnection := DMcadastro.SQLConnection1;
  q.SQL.Clear;
  q.SQL.Add( 'select db_chqpdt.dt_vct,db_chqpdt.vr_chq, '+
             'db_localcobranca.cd_loc_cob||''/''||db_chqpdt.no_agc as BcoAgen, '+
             'db_cliente.nm_cli,db_cliente.id,db_chqpdt.nm_emt,db_cliente.no_fon,db_chqpdt.dt_inc, '+
             'db_chqpdt.sn_tcr from db_chqpdt '+
             'inner join db_cliente       on db_cliente.id       = db_chqpdt.id_cliente '+
             'inner join db_localcobranca on db_localcobranca.id = db_chqpdt.id_banco '+
             'where db_chqpdt.dt_vct between :PDTIni and :pDTFim '+
             'and db_chqpdt.st_chq = ''PD'' '+
             'and db_chqpdt.vr_chq between :pVMenor and :pVMaior ');


             if EdCodCli.Text <> '' then
                begin
                q.SQL.Add('and db_cliente.id =:pIDCli ');
                q.ParamByName('pIDCli').AsInteger := StrToInt(EdCodCli.Text);
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
               0:q.SQL.Add('order by db_chqpdt.dt_vct ');
               1:q.SQL.Add('order by db_chqpdt.dt_inc ');
               end;

  q.ParamByName('pDTini').AsDate    := DtIni.Date;
  q.ParamByName('pDTfim').AsDate    := DtFim.Date;
  q.ParamByName('pVMenor').AsFloat  := TirarMascara(EdMaiorIgual.Text);
  q.ParamByName('pVmaior').AsFloat  := TirarMascara(EdMenorIgual.Text);
  q.Open;
  q.First;

   if q.IsEmpty = false then
     begin
      CdsRelatorio.Close;
      CdsRelatorio.CreateDataSet;
      CdsRelatorio.Open;

      while not q.Eof do
       begin
        CdsRelatorio.Append;
        CdsRelatorioVencimento.AsDateTime  := q.FieldByName('Dt_vct').AsDateTime;
        CdsRelatorioValor.AsFloat          := q.FieldByName('vr_chq').AsFloat;
        CdsRelatorioBancoAgencia.AsString  := q.FieldByName('BcoAgen').AsString;
        CdsRelatorioCliente.AsString       := Format('%.6d', [q.FieldByName('ID').AsInteger])+ ' '+ q.FieldByName('nm_cli').AsString;
        CdsRelatorioEmitente.AsString      := q.FieldByName('nm_emt').AsString;
        CdsRelatorioFone.AsString          := q.FieldByName('no_fon').AsString;
        CdsRelatorioInclusao.AsDateTime    := q.FieldByName('Dt_inc').AsDateTime;
        CdsRelatorioT.AsString             := copy(q.FieldByName('sn_tcr').AsString,1,1);
        CdsRelatorio.Post;
        q.Next;
       end;

        case CbTipoImpressora.ItemIndex of
         0:  frxReport_Rlt_chq_pd.ShowReport();
         1:  frxReport_Rlt_chq_pd_Mtx.ShowReport();
        end;


     end;

  finally
   FreeAndNil(q);
   CdsRelatorio.Close;

 end;

end;

function TFormRlt_Chq_PD.TirarMascara(Valor: string): double;
var
  I: Integer;
  s: string;
begin
for I := 1 to length(valor) do
 if (valor[I] in ['0'..'9',',']) then
     s := s + valor[I];

 Result := StrToFloat(s);
end;

end.
