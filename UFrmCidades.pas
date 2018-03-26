unit UFrmCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinLiquidSky, dxSkinOffice2007Black,
  dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light, dxSkinWhiteprint,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Vcl.DBCtrls, Vcl.Menus, frxExportXLS, frxClass,
  frxExportPDF, frxDBSet, frxDMPExport, dxGDIPlusClasses;

type
  TFormCidades = class(TFormCadPadrao)
    PopupMenu1: TPopupMenu;
    ImpressoraLaser1: TMenuItem;
    ExportarPDF1: TMenuItem;
    ExportarExcel1: TMenuItem;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit_NM_CID: TDBEdit;
    DSUnidadeFederativa: TDataSource;
    Label3: TLabel;
    DBEdit_CD_CID_IBG: TDBEdit;
    FReport_Cidades: TfrxReport;
    frxDBDataset_Cidades: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    FR_Cidades_Matricial: TfrxReport;
    frxDotMatrixExport1: TfrxDotMatrixExport;
    DBLookup_ID_UF: TDBLookupComboBox;
    DBLookup_CD_PAI: TDBLookupComboBox;
    DS_PAISES: TDataSource;
    Panel_Impressao: TPanel;
    GroupBox1: TGroupBox;
    ComboSelecionarEstado: TComboBox;
    Label4: TLabel;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    RadioGroup_Impressora: TRadioGroup;
    Label5: TLabel;
    procedure EdconsultaKeyPress(Sender: TObject; var Key: Char);
    procedure BtConsultarClick(Sender: TObject);
    procedure DBEdit_CD_CID_IBGKeyPress(Sender: TObject; var Key: Char);
    procedure AcGravarExecute(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FReport_CidadesGetValue(const VarName: string;
      var Value: Variant);
    procedure ExportarPDF1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure FR_Cidades_MatricialGetValue(const VarName: string;
      var Value: Variant);
    procedure ImpressoraMatricial1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ImpressoraLaser1Click(Sender: TObject);
    procedure FReport_CidadesClosePreview(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCidades: TFormCidades;
  relatorio : integer;
implementation

{$R *.dfm}

uses UDmCadastro, UFrmPrincipal;

procedure TFormCidades.AcEditarExecute(Sender: TObject);
begin
  inherited;
DBEdit_NM_CID.SetFocus;
//cxDBLookupEstado.Enabled := False;
end;

procedure TFormCidades.AcGravarExecute(Sender: TObject);
begin
 Panel2.SetFocus;
 dmCadastro.CDSCidades.FieldByName('UF_CID').AsString := dmCadastro.CDSUFederativa.FieldByName('CD_UNF').AsString;
  inherited;

end;

procedure TFormCidades.AcIncluirExecute(Sender: TObject);
begin
  inherited;
//cxDBLookupEstado.SetFocus;
//cxDBLookupEstado.Enabled := True;
//dmCadastro.CDSCidades.FieldByName('UF_CID').AsString := 'MG';
end;

procedure TFormCidades.BtConsultarClick(Sender: TObject);
begin
  inherited;

   if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Código IBGE Cidades %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSCidades.Close;
   DMcadastro.SQLCidades.CommandText := '';
   DMcadastro.SQLCidades.CommandText := 'select * from DB_CIDADES where DB_CIDADES.CD_CID_IBG  =:PConsulta';
   DMcadastro.SQLCidades.ParamByName('pconsulta').AsInteger := strtoint(EdConsulta.Text);
   DMcadastro.CDSCidades.Open;
 end;

   if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then {consulta por Nome da Cidade %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%}
 begin

   DMcadastro.CDSCidades.Close;
   DMcadastro.SQLCidades.CommandText := '';
   DMcadastro.SQLCidades.CommandText := 'select * from DB_CIDADES where DB_CIDADES.NM_CID containing  :pConsulta  ';
   DMcadastro.SQLCidades.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCidades.Open;
 end;
end;

procedure TFormCidades.btnImprimirClick(Sender: TObject);
var vPonto : TPoint;
begin
  inherited;

   vPonto := btnImprimir.ClientToScreen(Point(0, btnImprimir.Height));
   PopupMenu1.Popup(vPonto.X, vPonto.Y);
end;

procedure TFormCidades.Button1Click(Sender: TObject);
begin
  inherited;

 try
  dmCadastro.CDSCidades.DisableControls;
  if RadioGroup_Impressora.ItemIndex = 0    then
  begin

     if ComboSelecionarEstado.ItemIndex = -1 then
     begin
        FReport_Cidades.ShowReport()
     end else

    if  DSUnidadeFederativa.DataSet.Locate('NM_UNF',ComboSelecionarEstado.Text,[]) then
      begin
      dsPadrao.DataSet.Filtered := false;
      DSpadrao.DataSet.Filter := 'UF_CID =  ' +UpperCase(QuotedStr(DSUnidadeFederativa.DataSet.FieldByName('cd_Unf').AsString));
      dsPadrao.DataSet.Filtered := true;
      FReport_Cidades.ShowReport();
    end;
  end else
   if ComboSelecionarEstado.ItemIndex = -1 then
     begin
        FR_Cidades_Matricial.ShowReport()
     end else

    if  DSUnidadeFederativa.DataSet.Locate('NM_UNF',ComboSelecionarEstado.Text,[]) then
      begin
      dsPadrao.DataSet.Filtered := false;
      DSpadrao.DataSet.Filter := 'UF_CID =  ' +UpperCase(QuotedStr(DSUnidadeFederativa.DataSet.FieldByName('cd_Unf').AsString));
      dsPadrao.DataSet.Filtered := true;
      FR_Cidades_Matricial.ShowReport();

    end;
 finally
   dsPadrao.DataSet.Filtered := false;
 end;
end;

procedure TFormCidades.Button2Click(Sender: TObject);
begin
  inherited;
Panel_Impressao.Visible := False;
Panel1.Enabled := True;
end;

procedure TFormCidades.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormCidades.DBEdit_CD_CID_IBGKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormCidades.EdconsultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if cbConsulta.ItemIndex = 0 then
 begin
 if not(key in ['0'..'9',#8,#13]) then
 key := #0;
 end;
end;

function ListaCliente: TStrings;
begin
Result := TStringList.Create;
Result.Clear;
Result.BeginUpdate;
 with dmCadastro.CDSUFederativa do
 begin
  First;
  while not Eof do
  begin
   Result.Add(FieldByName('NM_UNF').AsString);
   Next;
  end;
 end;
Result.EndUpdate;
end;


procedure TFormCidades.ExportarExcel1Click(Sender: TObject);
var caminhoxls : string;
begin
  inherited;
  dmCadastro.CDSCidades.DisableControls;
  CAMINHOxls := ExtractFileDir(GetCurrentDir)+'\relatorios\excel';
  FReport_Cidades.PrepareReport;
  frxXLSExport1.DefaultPath  := CAMINHOxls;
  frxXLSExport1.FileName     := 'rCidades_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now);
  FReport_Cidades.Export(frxXLSExport1);
end;

procedure TFormCidades.ExportarPDF1Click(Sender: TObject);
var caminhoPDF : string;
begin
  inherited;
  dmCadastro.CDSCidades.DisableControls;
  CaminhoPDF := ExtractFileDir(GetCurrentDir)+'\Relatorios\pdf';
  FReport_Cidades.PrepareReport;
  frxPDFExport1.DefaultPath := CaminhoPdf;
  frxPDFExport1.FileName := 'rCidades_'+FormatDateTime('ddmmyyyy',Date)+ FormatDateTime('hhmmss',now)+'.pdf';
  FReport_Cidades.Export(frxPDFExport1);
end;

procedure TFormCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
DSUnidadeFederativa.DataSet.Close;
DSPadrao.DataSet.Close;
end;

procedure TFormCidades.FormShow(Sender: TObject);
begin
  inherited;
DSUnidadeFederativa.DataSet.Open;
DSPadrao.DataSet.Open;
end;

procedure TFormCidades.FReport_CidadesClosePreview(Sender: TObject);
begin
  inherited;
Panel_Impressao.Visible := False;
panel1.Enabled := True;
end;

procedure TFormCidades.FReport_CidadesGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'rUsuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCidades.FR_Cidades_MatricialGetValue(const VarName: string;
  var Value: Variant);
begin
  inherited;
  if VARNAME = 'musuario' then value := 'Usuário: '+user+'('+idUsuario+')';
end;

procedure TFormCidades.ImpressoraLaser1Click(Sender: TObject);
begin
  inherited;
Panel1.Enabled := False;
Panel_Impressao.Left := (Formcidades.ClientWidth div 2) - (Panel_Impressao.Width div 2);
Panel_Impressao.Top  := (Formcidades.ClientHeight div 2) - (Panel_Impressao.Height div 2);
Panel_Impressao.Visible := True;
ComboSelecionarEstado.Items := ListaCliente;
end;

procedure TFormCidades.ImpressoraMatricial1Click(Sender: TObject);
begin
  inherited;
FR_Cidades_Matricial.ShowReport();
end;

end.
