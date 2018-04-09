unit uFrmLocalCobranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinGlassOceans, dxSkinOffice2013White,
  dxSkinWhiteprint, cxDropDownEdit, cxDBEdit, cxTextEdit, cxMaskEdit,
  cxCalendar, Vcl.DBCtrls, cxLabel, cxDBLabel, dxSkinLiquidSky,
  dxSkinOffice2007Black, dxSkinOffice2013LightGray, dxSkinVisualStudio2013Light,
  Vcl.ToolWin;

type
  TFormLocalCobranca = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBEdit_CD_LOC_COB: TDBEdit;
    DBEdit_NM_LOC_COB: TDBEdit;
    cxDBEdit_DT_CAD: TcxDBDateEdit;
    DBCombo_TP_LOC_COB: TcxDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBEdit_NO_FOL_CHQ: TDBEdit;
    DBEdit_NO_CTA_COR: TDBEdit;
    DBEdit_NO_BCO: TDBEdit;
    DBEdit_NO_BCO_COB: TDBEdit;
    DBEdit_ID_CIA_CTR: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit_NO_RMS_CTR: TDBEdit;
    DBEdit_CD_CDT: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    DBCombo_TP_LAY_ARQ: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    GroupBox4: TGroupBox;
    DBDateEdit_DT_RMS_CHQ: TcxDBDateEdit;
    DBEdit_NO_SEQ_CHQ: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    cxDBLabel_ID: TcxDBLabel;
    procedure AcIncluirExecute(Sender: TObject);
    procedure DBEdit_NO_FOL_CHQKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_NO_CTA_CORKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_NO_BCOKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit_NO_BCO_COBKeyPress(Sender: TObject; var Key: Char);
    procedure DBCombo_TP_LOC_COBExit(Sender: TObject);
    procedure DBEdit_CD_LOC_COBKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLocalCobranca: TFormLocalCobranca;

implementation

{$R *.dfm}

uses UDmCadastro, UFuncoes;

procedure TFormLocalCobranca.AcIncluirExecute(Sender: TObject);
begin
  inherited;
dmcadastro.CDSLocalCobranca.FieldByName('DT_CAD').AsDateTime   := now;
cxDBEdit_DT_CAD.SetFocus;
dmCadastro.CDSLocalCobranca.FieldByName('TP_LOC_COB').AsString := 'BANCO';
end;

procedure TFormLocalCobranca.DBCombo_TP_LOC_COBExit(Sender: TObject);
begin
  inherited;
if dmCadastro.CDSLocalCobranca.FieldByName('TP_LOC_COB').AsString = 'OUTROS' then
   begin
     GroupBox3.Enabled := False;

   end else
     GroupBox3.Enabled := True;

end;

procedure TFormLocalCobranca.DBEdit_CD_LOC_COBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormLocalCobranca.DBEdit_NO_BCOKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormLocalCobranca.DBEdit_NO_BCO_COBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormLocalCobranca.DBEdit_NO_CTA_CORKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if not(Key in ['0' .. '9', #8, #13]) then
  Key := #0
end;

procedure TFormLocalCobranca.DBEdit_NO_FOL_CHQKeyPress(Sender: TObject;
  var Key: Char);
const
cTamFormato = 6;
var
lTemp: String;
lIdx: Integer;
begin
 if (Pos(Key, '0123456789') > 0) then
 begin
   try
    lTemp := IntToStr(StrToInt(DBEdit_NO_FOL_CHQ.Text + Key));
   except
   lTemp := '';
  end;
  if (Length(lTemp) <= cTamFormato) then
  begin
  DBEdit_NO_FOL_CHQ.Clear;
  while Length(lTemp) < cTamFormato do
   lTemp := '0' + lTemp;
   DBEdit_NO_FOL_CHQ.Text := lTemp;
  end;
 end;
 Key := #0;
end;




end.
