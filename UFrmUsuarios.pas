unit UFrmUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, Data.DB,
  dxSkinsdxBarPainter, cxClasses, dxBar, dxBarApplicationMenu, dxRibbon,
  dxNavBarOfficeNavigationBar, Vcl.Grids, Vcl.DBGrids, cxPC, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus, cxButtons, dxSkinsForm, dxStatusBar,
  dxRibbonStatusBar, dxSkinsdxStatusBarPainter, cxContainer, cxEdit, cxTextEdit,
  dxNumericWheelPicker, dxDateTimeWheelPicker, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit,  dxWheelPicker, cxLabel,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxCustomData, cxStyles,
  cxCustomPivotGrid, cxDBPivotGrid, cxCheckBox, Vcl.DBCtrls, cxGroupBox,
  Vcl.Outline, cxDBEdit, Vcl.Mask, cxDBLabel, DBAccess, Uni,
  Data.FMTBcd, Data.SqlExpr, dxGDIPlusClasses, dxScreenTip, dxCustomHint, cxHint;

type
  TFormUsuarios = class(TForm)
    cxPageUsuarios: TcxPageControl;
    UserPageDBGrid: TcxTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    UserPageCadastro: TcxTabSheet;
    UserPageAcesso: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    GridPanel1: TGridPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
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
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label1: TLabel;
    BtIncluir: TButton;
    Button2: TButton;
    Button4: TButton;
    Button3: TButton;
    Button5: TButton;
    cxGroupBProc: TcxGroupBox;
    cxGroupBUsuario: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    PainelCancelarGravar: TPanel;
    btnCancelar: TSpeedButton;
    btnGravar: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton1: TSpeedButton;
    cxGroupBSenha: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxLabel8: TcxLabel;
    CheckRemessa: TcxCheckBox;
    CheckCtrCheque: TcxCheckBox;
    checkSintegra: TcxCheckBox;
    CheckLivrosFiscais: TcxCheckBox;
    CheckLoteOrcamento: TcxCheckBox;
    CheckCMSVendedores: TcxCheckBox;
    cxGroupBStatus: TcxGroupBox;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabelID: TcxDBLabel;
    cxDBNM_USU: TcxDBTextEdit;
    cxDBNM_SET_TRB: TcxDBTextEdit;
    cxDBNM_FNC: TcxDBTextEdit;
    DBEditDS_SNH: TDBEdit;
    DSPadrao: TDataSource;
    DSEmpresa: TDataSource;
    cxDBDT_CAD: TcxDBDateEdit;
    SP_GEN_PADRAO: TSQLStoredProc;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    CK_SN_CLI_INCLUIR: TCheckBox;
    CK_SN_CLI_Editar: TCheckBox;
    CK_SN_CLI_EXCLUIR: TCheckBox;
    CK_SN_CLI_RELATORIOS: TCheckBox;
    CK_SN_CLI_UTILITARIOS: TCheckBox;
    CK_SN_FOR_INCLUIR: TCheckBox;
    CK_SN_FOR_EDITAR: TCheckBox;
    CK_SN_FOR_EXCLUIR: TCheckBox;
    CK_SN_FOR_RELATORIOS: TCheckBox;
    CK_SN_CTR_INCLUIR: TCheckBox;
    CK_SN_CTR_EDITAR: TCheckBox;
    CK_SN_CTR_EXCLUIR: TCheckBox;
    CK_SN_CTR_RELATORIOS: TCheckBox;
    CK_SN_CTR_UTILITARIOS: TCheckBox;
    CK_SN_CHQ_PDT_INCLUIR: TCheckBox;
    CK_SN_CHQ_PDT_EDITAR: TCheckBox;
    CK_SN_CHQ_PDT_EXCLUIR: TCheckBox;
    CK_SN_CHQ_PDT_RELATORIOS: TCheckBox;
    CK_SN_CHQ_PDT_UTILITARIOS: TCheckBox;
    CK_SN_CHQ_BXD_Relatorios: TCheckBox;
    CK_SN_CHQ_BXD_UTILITARIOS: TCheckBox;
    CK_SN_CHQ_PDV_EDITAR: TCheckBox;
    CK_SN_CHQ_PDV_RELATORIOS: TCheckBox;
    CK_SN_CHQ_PDV_UTILITARIOS: TCheckBox;
    CK_SN_CHQ_DVD_Editar: TCheckBox;
    CK_SN_CHQ_DVD_Relatorios: TCheckBox;
    CK_SN_CHQ_DVD_Utilitarios: TCheckBox;
    CK_SN_CHQ_DVB_Editar: TCheckBox;
    CK_SN_CHQ_DVB_Relatorios: TCheckBox;
    CK_SN_CHQ_DVB_Utilitarios: TCheckBox;
    CK_SN_CTP_Incluir: TCheckBox;
    CK_SN_CTP_Editar: TCheckBox;
    CK_SN_CTP_Excluir: TCheckBox;
    CK_SN_CTP_Relatorios: TCheckBox;
    CK_SN_CTP_Utilitarios: TCheckBox;
    CK_SN_PDT_Incluir: TCheckBox;
    CK_SN_PDT_Editar: TCheckBox;
    CK_SN_PDT_Excluir: TCheckBox;
    CK_SN_PDT_Relatorios: TCheckBox;
    CK_SN_PDT_Utilitarios: TCheckBox;
    CK_SN_ETQ_INCLUIR: TCheckBox;
    CK_SN_ETQ_RELATORIOS: TCheckBox;
    CK_SN_ETQ_UTILITARIOS: TCheckBox;
    CK_SN_TAB_PRC_Relatorios: TCheckBox;
    CK_SN_EST_Relatorios: TCheckBox;
    CK_SN_DIV_FIN_INCLUIR: TCheckBox;
    CK_SN_DIV_FIN_EDITAR: TCheckBox;
    CK_SN_DIV_FIN_Excluir: TCheckBox;
    CK_SN_DIV_FIN_Relatorios: TCheckBox;
    CK_SN_DIV_FIN_Utilitarios: TCheckBox;
    CK_SN_DIV_FIS_Incluir: TCheckBox;
    CK_SN_DIV_FIS_Editar: TCheckBox;
    CK_SN_DIV_FIS_Excluir: TCheckBox;
    CK_SN_DIV_FIS_Relatorios: TCheckBox;
    CK_SN_DIV_FIS_Utilitarios: TCheckBox;
    CK_SN_FUN_Incluir: TCheckBox;
    CK_SN_FUN_EDITAR: TCheckBox;
    CK_SN_FUN_Excluir: TCheckBox;
    CK_SN_FUN_Relatorios: TCheckBox;
    CK_SN_FUN_Utilitarios: TCheckBox;
    CK_SN_VEN_Incluir: TCheckBox;
    CK_SN_VEN_Editar: TCheckBox;
    CK_SN_VEN_Excluir: TCheckBox;
    CK_SN_VEN_Relatorios: TCheckBox;
    CK_SN_VEN_Utilitarios: TCheckBox;
    CK_SN_REP_INCLUIR: TCheckBox;
    CK_SN_REP_Editar: TCheckBox;
    CK_SN_REP_Excluir: TCheckBox;
    CK_SN_REP_Relatorios: TCheckBox;
    CK_SN_REP_Utilitarios: TCheckBox;
    CK_SN_TRN_Incluir: TCheckBox;
    CK_SN_TRN_Editar: TCheckBox;
    CK_SN_TRN_Excluir: TCheckBox;
    CK_SN_TRN_Relatorios: TCheckBox;
    CK_SN_NTF_RDZ_Incluir: TCheckBox;
    CK_SN_NTF_RDZ_Editar: TCheckBox;
    CK_SN_NTF_RDZ_Excluir: TCheckBox;
    CK_SN_NTF_RDZ_Relatorios: TCheckBox;
    CK_SN_NTF_RDZ_Utilitarios: TCheckBox;
    CK_SN_NTE_Incluir: TCheckBox;
    CK_SN_NTE_Editar: TCheckBox;
    CK_SN_NTE_Excluir: TCheckBox;
    CK_SN_NTE_Relatorios: TCheckBox;
    CK_SN_NTE_Utilitarios: TCheckBox;
    CK_SN_RQS_Incluir: TCheckBox;
    CK_SN_RQS_Editar: TCheckBox;
    CK_SN_RQS_Excluir: TCheckBox;
    CK_SN_RQS_Relatorios: TCheckBox;
    CK_SN_FOR_UTILITARIOS: TCheckBox;
    Button6: TButton;
    CK_SN_CHQ_BXD_EDITAR: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel2: TPanel;
    Panel3: TPanel;
    btnFechar: TSpeedButton;
    Panel4: TPanel;
    btnExcluir: TSpeedButton;
    btnModificar: TSpeedButton;
    btnIncluir: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnImprimir: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    Image1: TImage;
    cxHintStyleController1: TcxHintStyleController;
    EditConfirmaSenha: TEdit;
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure CheckRemessaClick(Sender: TObject);
    procedure CheckCtrChequeClick(Sender: TObject);
    procedure checkSintegraClick(Sender: TObject);
    procedure UserPageCadastroShow(Sender: TObject);
    procedure btnModificarClick(Sender: TObject);
    procedure CheckLivrosFiscaisClick(Sender: TObject);
    procedure CheckLoteOrcamentoClick(Sender: TObject);
    procedure CheckCMSVendedoresClick(Sender: TObject);
    procedure CK_SN_CLI_INCLUIRClick(Sender: TObject);
    procedure CK_SN_CLI_EditarClick(Sender: TObject);
    procedure CK_SN_CLI_EXCLUIRClick(Sender: TObject);
    procedure CK_SN_CLI_RELATORIOSClick(Sender: TObject);
    procedure CK_SN_CLI_UTILITARIOSClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CK_SN_FOR_INCLUIRClick(Sender: TObject);
    procedure CK_SN_FOR_EDITARClick(Sender: TObject);
    procedure CK_SN_FOR_EXCLUIRClick(Sender: TObject);
    procedure CK_SN_FOR_RELATORIOSClick(Sender: TObject);
    procedure CK_SN_FOR_UTILITARIOSClick(Sender: TObject);
    procedure CK_SN_CTR_INCLUIRClick(Sender: TObject);
    procedure CK_SN_CTR_EDITARClick(Sender: TObject);
    procedure CK_SN_CTR_EXCLUIRClick(Sender: TObject);
    procedure CK_SN_CTR_RELATORIOSClick(Sender: TObject);
    procedure CK_SN_CTR_UTILITARIOSClick(Sender: TObject);
    procedure CK_SN_CHQ_PDT_INCLUIRClick(Sender: TObject);
    procedure CK_SN_CHQ_PDT_EDITARClick(Sender: TObject);
    procedure CK_SN_CHQ_PDT_EXCLUIRClick(Sender: TObject);
    procedure CK_SN_CHQ_PDT_RELATORIOSClick(Sender: TObject);
    procedure CK_SN_CHQ_PDT_UTILITARIOSClick(Sender: TObject);
    procedure CK_SN_CHQ_BXD_EDITARClick(Sender: TObject);
    procedure CK_SN_CHQ_BXD_RelatoriosClick(Sender: TObject);
    procedure CK_SN_CHQ_BXD_UTILITARIOSClick(Sender: TObject);
    procedure CK_SN_CHQ_PDV_EDITARClick(Sender: TObject);
    procedure CK_SN_CHQ_PDV_RELATORIOSClick(Sender: TObject);
    procedure CK_SN_CHQ_PDV_UTILITARIOSClick(Sender: TObject);
    procedure CK_SN_CHQ_DVD_EditarClick(Sender: TObject);
    procedure CK_SN_CHQ_DVD_RelatoriosClick(Sender: TObject);
    procedure CK_SN_CHQ_DVD_UtilitariosClick(Sender: TObject);
    procedure CK_SN_CHQ_DVB_EditarClick(Sender: TObject);
    procedure CK_SN_CHQ_DVB_RelatoriosClick(Sender: TObject);
    procedure CK_SN_CHQ_DVB_UtilitariosClick(Sender: TObject);
    procedure CK_SN_CTP_IncluirClick(Sender: TObject);
    procedure CK_SN_CTP_EditarClick(Sender: TObject);
    procedure CK_SN_CTP_ExcluirClick(Sender: TObject);
    procedure CK_SN_CTP_RelatoriosClick(Sender: TObject);
    procedure CK_SN_CTP_UtilitariosClick(Sender: TObject);
    procedure CK_SN_PDT_IncluirClick(Sender: TObject);
    procedure CK_SN_PDT_EditarClick(Sender: TObject);
    procedure CK_SN_PDT_ExcluirClick(Sender: TObject);
    procedure CK_SN_PDT_RelatoriosClick(Sender: TObject);
    procedure CK_SN_PDT_UtilitariosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CK_SN_ETQ_INCLUIRClick(Sender: TObject);
    procedure CK_SN_ETQ_RELATORIOSClick(Sender: TObject);
    procedure CK_SN_ETQ_UTILITARIOSClick(Sender: TObject);
    procedure CK_SN_TAB_PRC_RelatoriosClick(Sender: TObject);
    procedure CK_SN_EST_RelatoriosClick(Sender: TObject);
    procedure CK_SN_DIV_FIN_INCLUIRClick(Sender: TObject);
    procedure CK_SN_DIV_FIN_EDITARClick(Sender: TObject);
    procedure CK_SN_DIV_FIN_ExcluirClick(Sender: TObject);
    procedure CK_SN_DIV_FIN_RelatoriosClick(Sender: TObject);
    procedure CK_SN_DIV_FIN_UtilitariosClick(Sender: TObject);
    procedure CK_SN_DIV_FIS_IncluirClick(Sender: TObject);
    procedure CK_SN_DIV_FIS_EditarClick(Sender: TObject);
    procedure CK_SN_DIV_FIS_ExcluirClick(Sender: TObject);
    procedure CK_SN_DIV_FIS_RelatoriosClick(Sender: TObject);
    procedure CK_SN_DIV_FIS_UtilitariosClick(Sender: TObject);
    procedure CK_SN_FUN_IncluirClick(Sender: TObject);
    procedure CK_SN_FUN_EDITARClick(Sender: TObject);
    procedure CK_SN_FUN_ExcluirClick(Sender: TObject);
    procedure CK_SN_FUN_RelatoriosClick(Sender: TObject);
    procedure CK_SN_FUN_UtilitariosClick(Sender: TObject);
    procedure CK_SN_VEN_IncluirClick(Sender: TObject);
    procedure CK_SN_VEN_EditarClick(Sender: TObject);
    procedure CK_SN_VEN_ExcluirClick(Sender: TObject);
    procedure CK_SN_VEN_RelatoriosClick(Sender: TObject);
    procedure CK_SN_VEN_UtilitariosClick(Sender: TObject);
    procedure CK_SN_REP_INCLUIRClick(Sender: TObject);
    procedure CK_SN_REP_EditarClick(Sender: TObject);
    procedure CK_SN_REP_ExcluirClick(Sender: TObject);
    procedure CK_SN_REP_RelatoriosClick(Sender: TObject);
    procedure CK_SN_REP_UtilitariosClick(Sender: TObject);
    procedure CK_SN_TRN_IncluirClick(Sender: TObject);
    procedure CK_SN_TRN_EditarClick(Sender: TObject);
    procedure CK_SN_TRN_ExcluirClick(Sender: TObject);
    procedure CK_SN_TRN_RelatoriosClick(Sender: TObject);
    procedure CK_SN_NTF_RDZ_IncluirClick(Sender: TObject);
    procedure CK_SN_NTF_RDZ_EditarClick(Sender: TObject);
    procedure CK_SN_NTF_RDZ_ExcluirClick(Sender: TObject);
    procedure CK_SN_NTF_RDZ_RelatoriosClick(Sender: TObject);
    procedure CK_SN_NTF_RDZ_UtilitariosClick(Sender: TObject);
    procedure CK_SN_NTE_IncluirClick(Sender: TObject);
    procedure CK_SN_NTE_EditarClick(Sender: TObject);
    procedure CK_SN_NTE_ExcluirClick(Sender: TObject);
    procedure CK_SN_NTE_RelatoriosClick(Sender: TObject);
    procedure CK_SN_NTE_UtilitariosClick(Sender: TObject);
    procedure CK_SN_RQS_IncluirClick(Sender: TObject);
    procedure CK_SN_RQS_EditarClick(Sender: TObject);
    procedure CK_SN_RQS_ExcluirClick(Sender: TObject);
    procedure CK_SN_RQS_RelatoriosClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);


  private
     procedure Ver_Status(Sender:TObject);
     procedure VerificaStatus(Sender:TObject);
     procedure SN_CLI_Verifica(Sender:TObject);
     procedure SN_CLI_Grava(Sender:TObject);
     procedure SN_FOR_Verifica(Sender:TObject);
     procedure SN_FOR_Grava(Sender:TOBject);
     procedure SN_CTR_Verifica(Sender:TObject);
     procedure SN_CTR_Grava(Sender:TObject);
     procedure SN_CHQ_PDT_Verifica(Sender:TObject);
     procedure SN_CHQ_PDT_Grava(Sender:TObject);
     procedure SN_CHQ_BXD_Verifica(Sender:TObject);
     procedure SN_CHQ_BXD_Grava(Sender:TObject);
     procedure SN_CHQ_PDV_Verifica(Sender:TObject);
     procedure SN_CHQ_PDV_Grava(Sender:TObject);
     procedure SN_CHQ_DVD_Verifica(Sender:TObject);
     procedure SN_CHQ_DVD_Grava(Sender:TObject);
     procedure SN_CHQ_DVB_Verifica(Sender:TOBject);
     procedure SN_CHQ_DVB_Grava(Sender:TOBject);
     procedure SN_CTP_Verifica(Sender:TOBject);
     procedure SN_CTP_Grava(Sender:TOBject);
     procedure SN_PDT_Verifica(Sender:TOBject);
     Procedure SN_PDT_Grava(Sender:TOBject);
     procedure SN_ETQ_Verifica(Sender:TOBject);
     procedure SN_ETQ_Grava(Sender:TOBject);
     procedure SN_TAB_PRC_Verifica(Sender:TObject);
     procedure SN_TAB_PRC_Grava(Sender:TObject);
     procedure SN_EST_Verifica(Sender:TObject);
     procedure SN_EST_Grava(Sender:TObject);
     procedure SN_DIV_FIN_Verifica(Sender:TObject);
     procedure SN_DIV_FIN_Grava(Sender:TObject);
     procedure SN_DIV_FIS_Verifica(Sender:TObject);
     procedure SN_DIV_FIS_Grava(Sender:TObject);
     procedure SN_FUN_Verifica(Sender:TOBject);
     procedure SN_FUN_Grava(Sender:TOBject);
     procedure SN_VEN_Verifica(Sender:TObject);
     procedure SN_VEN_Grava(Sender:TObject);
     procedure SN_REP_Verifica(Sender:TObject);
     procedure SN_REP_Grava(Sender:TObject);
     procedure SN_TRN_Verifica(Sender:TObject);
     procedure SN_TRN_Grava(Sender:TObject);
     procedure SN_NTF_RDZ_Verifica(Sender:TObject);
     procedure SN_NTF_RDZ_Grava(Sender:TObject);
     procedure SN_NTE_Verifica(Sender:TObject);
     procedure SN_NTE_Grava(Sender:TObject);
     procedure SN_RQS_Verifica(Sender:TObject);
     procedure SN_RQS_Grava(Sender:TObject);


  function Verifica_Campos_Em_Branco: Boolean;
  public
    { Public declarations }
    Operacao: String;

 //   procedure SimNaoUsuario;
  end;

var
  FormUsuarios: TFormUsuarios;
    DBLookupComboBox1: TDBLookupComboBox;
    cxLabel10: TcxLabel;

implementation

{$R *.dfm}

uses dm, UDmCadastro, uFrmLogin;

function TFormUsuarios.Verifica_Campos_Em_Branco: Boolean;
var
  I: Integer;

begin
  Result := True;
  for I := 0 to DSpadrao.DataSet.FieldCount - 1 do
    if DSpadrao.DataSet.Fields[I].Required then
      if (DSpadrao.DataSet.Fields[I].IsNull) or
        (DSpadrao.DataSet.Fields[I].AsString = '') then
      begin
        beep;
        MessageDlg('Preencha o campo "' + DSpadrao.DataSet.Fields[I]
          .DisplayLabel + '"', mtInformation, [mbOk], 0);
        Result := False;
        DSpadrao.DataSet.Fields[I].FocusControl;
        Break;
      end;
end;


Function CriptoSenha(Work_Senha: String): String;
Var
     uso1, XX: integer;
     Senha: String;
     xPos, Msen, Ysen, xProc: String;
     Digito, Simbol: pChar;
Begin
     Digito := ('ABCDEFGHIJKLMNOPQRSTUVWXZ-_0123456789/');
     Simbol := ('°±²ÛÞÝßÜÌ+¢‚=„†‘–”§¦’¤¯›WMêPHGFRDXSEY*');
     Msen := '';
     Ysen := '';
     XX := 1;
     While XX <= Length(Work_Senha) do
     Begin
          Senha := Copy(UpperCase(Work_Senha), XX, 1);
          uso1 := 0;
          While uso1 <= Length(Digito) do
          Begin
               inc(uso1);
               xProc := Copy(Digito, uso1, 1);
               If xProc = Senha then
               Begin
                    xPos := Copy(Simbol, uso1, 1);
                    Ysen := (Ysen + xPos);
                    // Concatena os Caracteres.
                    uso1 := 500;
               end;
          end;
          inc(XX); // Acrescenta +1 p/ ler próx. Caractere.
     end;
     Msen := Copy(Ysen, 5, 1) + Copy(Ysen, 1, 1) + Copy(Ysen, 3, 1) +
       Copy(Ysen, 4, 1) + Copy(Ysen, 6, 1) + Copy(Ysen, 2, 1);
     Result := Msen;
end;



procedure TFormUsuarios.UserPageCadastroShow(Sender: TObject);
begin
VerificaStatus(Sender);
SN_CLI_Verifica(Sender);
SN_FOR_Verifica(Sender);
SN_CTR_Verifica(Sender);
SN_CHQ_PDT_Verifica(Sender);
SN_CHQ_BXD_Verifica(Sender);
SN_CHQ_PDV_Verifica(Sender);
SN_CHQ_DVD_Verifica(Sender);
SN_CHQ_DVB_Verifica(Sender);
SN_CTP_Verifica(Sender);
SN_PDT_Verifica(Sender);
SN_ETQ_Verifica(Sender);
SN_TAB_PRC_Verifica(Sender);
SN_EST_Verifica(Sender);
SN_DIV_FIN_Verifica(Sender);
SN_DIV_FIS_Verifica(Sender);
SN_FUN_Verifica(Sender);
SN_VEN_Verifica(Sender);
SN_REP_Verifica(Sender);
SN_TRN_Verifica(Sender);
SN_NTF_RDZ_Verifica(Sender);
SN_NTE_Verifica(Sender);
SN_RQS_Verifica(Sender);
end;

procedure TFormUsuarios.VerificaStatus(Sender: TObject);
var verificar : string;
begin
 verificar := DMCadastro.CDSUsuarios.FieldByName('SN_PRC').AsString;

 if verificar = '' then
 exit;
 if verificar[1] = 'S' then
    CheckRemessa.Checked := true
    else
    CheckRemessa.Checked := false;
 if verificar[2] = 'S' then
    CheckCtrCheque.Checked := true
    else
    CheckCtrCheque.Checked := false;
 if verificar[3] = 'S' then
    checkSintegra.Checked := true
    else
    checkSintegra.Checked := false;
 if verificar[4] = 'S' then
    CheckLivrosFiscais.Checked := true
    else
    CheckLivrosFiscais.Checked := false;
 if verificar[5] = 'S' then
    CheckLoteOrcamento.Checked := true
    else
    CheckLoteOrcamento.Checked := false;
 if verificar[6] = 'S' then
    CheckCMSVendedores.Checked := true
    else
    CheckCMSVendedores.Checked := false;
end;

procedure TFormUsuarios.Ver_Status(Sender:TOBject);
var
     auxString : string;
begin
     auxString := '';
     if CheckRemessa.Checked then
          auxString := 'S'
     else
          auxString := 'N';

     if CheckCtrCheque.Checked then
          auxString := auxString + 'S'
     else
          auxString := auxString + 'N';

     if checkSintegra.Checked then
          auxString := auxString + 'S'
     else
          auxString := auxString + 'N';

     if CheckLivrosFiscais.Checked then
          auxString := auxString + 'S'
     else
          auxString := auxString + 'N';

     if CheckLoteOrcamento.Checked then
          auxString := auxString + 'S'
     else
          auxString := auxString + 'N';

     if CheckCMSVendedores.Checked then
          auxString := auxString + 'S'
     else
          auxString := auxString + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_PRC').AsString := auxString;
end;

procedure TFormUsuarios.BtIncluirClick(Sender: TObject);
var i: Integer;
 begin
     for i:=0 to GridPanel1.RowCollection.Count -1  do  //laço de repetição  ComponentCount
     if (TCheckBox(GridPanel1.RowCollection[I]) is TCheckBox) then
     begin
    try
     if TCheckBox(GridPanel1.ControlCollection.ControlItems[1,I].Control).Checked = false then
        TCheckBox(GridPanel1.ControlCollection.ControlItems[1,I].Control).Checked := true
     else
        TCheckBox(GridPanel1.ControlCollection.ControlItems[1,I].Control).Checked := false;
     except
       ;

     end;


     end;
 end;

procedure TFormUsuarios.btnCancelarClick(Sender: TObject);
begin
 CxPageUsuarios.ActivePage := UserPageDBGrid;
 UserPageCadastro.TabVisible      := False;
 UserPageAcesso.TabVisible        := False;
 PainelCancelarGravar.Visible := False;
 DMCadastro.CDSUsuarios.Cancel;
 end;

procedure TFormUsuarios.btnExcluirClick(Sender: TObject);
begin
 label1.Caption := TimeToStr(now);
end;

procedure TFormUsuarios.btnFecharClick(Sender: TObject);
begin
FormUsuarios.Close;
end;

procedure TFormUsuarios.btnGravarClick(Sender: TObject);
begin
 Verifica_Campos_Em_Branco;
 if EditConfirmaSenha.Text = DBEditDS_SNH.Text then
 begin
  // DSpadrao.DataSet.FieldByName('CD_USU').AsString := idUsuario+ ' ' +  user +' '+ DateTimeToStr(now) ;
   DMCadastro.CDSUsuarios.Post;
   DMCadastro.CDSUsuarios.ApplyUpdates(0);


   CxPageUsuarios.ActivePage    := UserPageDBGrid;
   UserPageCadastro.TabVisible  := False;
   UserPageAcesso.TabVisible    := False;
   PainelCancelarGravar.Visible := False;
 end
 else
  begin
   ShowMessage('As senhas nao sao iguais');
    CxPageUsuarios.ActivePage := UserPageCadastro;
    EditConfirmaSenha.SetFocus;
  end;
end;

procedure TFormUsuarios.btnIncluirClick(Sender: TObject);
var Vid: integer;
begin
 if dsPadrao.DataSet.State in[dsBrowse]
  then begin
         WITH SP_GEN_PADRAO do
          begin
           Prepared := true;
           ExecProc;
           Prepared := false;
           Vid := ParamByName('ID').AsInteger;

          end;
       DsPadrao.DataSet.Insert;
       Dspadrao.DataSet.FieldByName('ID').AsInteger := Vid;


 CxPageUsuarios.ActivePage    := UserPageCadastro;
 UserPageCadastro.TabVisible  := true;
 UserPageAcesso.TabVisible    := true;
 UserPageDBGrid.TabVisible    := False;
 PainelCancelarGravar.Visible := True;


  end;

end;

procedure TFormUsuarios.btnModificarClick(Sender: TObject);
begin

 if (dsPadrao.DataSet.State in[dsBrowse]) and (not Dspadrao.DataSet.IsEmpty)
  then
       begin

        dsPadrao.DataSet.Edit;
        CxPageUsuarios.ActivePage    := UserPageCadastro;
        UserPageCadastro.TabVisible  := true;
        UserPageAcesso.TabVisible    := true;
        UserPageDBGrid.TabVisible    := False;
        PainelCancelarGravar.Visible := True;

       end else
          begin
            ShowMessage('Favor confirmar ou Cancelar o registro');
            Abort;
          end;

end;

procedure TFormUsuarios.CheckCMSVendedoresClick(Sender: TObject);
begin
Ver_Status(Sender);
end;

procedure TFormUsuarios.CheckCtrChequeClick(Sender: TObject);
begin
Ver_Status(sender);
end;

procedure TFormUsuarios.CheckLivrosFiscaisClick(Sender: TObject);
begin
Ver_Status(Sender);
end;

procedure TFormUsuarios.CheckLoteOrcamentoClick(Sender: TObject);
begin
Ver_Status(Sender);
end;

procedure TFormUsuarios.CheckRemessaClick(Sender: TObject);
begin
Ver_Status(Sender);
end;

procedure TFormUsuarios.checkSintegraClick(Sender: TObject);
begin
Ver_Status(sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_BXD_EDITARClick(Sender: TObject);
begin
SN_CHQ_BXD_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_BXD_RelatoriosClick(Sender: TObject);
begin
SN_CHQ_BXD_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_BXD_UTILITARIOSClick(Sender: TObject);
begin
SN_CHQ_BXD_Grava(Sender);
end;

procedure TFormUsuarios.SN_CHQ_DVB_Grava(Sender: TOBject);
var
     auxSN_CHQ_DVB : string;
begin
     auxSN_CHQ_DVB := '';
     auxSN_CHQ_DVB := 'N';

     if CK_SN_CHQ_DVB_EDITAR.Checked then
          auxSN_CHQ_DVB := auxSN_CHQ_DVB + 'S'
     else
          auxSN_CHQ_DVB := auxSN_CHQ_DVB + 'N';

          auxSN_CHQ_DVB := auxSN_CHQ_DVB + 'N';

     if CK_SN_CHQ_DVB_RELATORIOS.Checked then
          auxSN_CHQ_DVB := auxSN_CHQ_DVB + 'S'
     else
          auxSN_CHQ_DVB := auxSN_CHQ_DVB + 'N';

     if CK_SN_CHQ_DVB_UTILITARIOS.Checked then
          auxSN_CHQ_DVB := auxSN_CHQ_DVB + 'S'
     else
          auxSN_CHQ_DVB := auxSN_CHQ_DVB + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_DVB').AsString := auxSN_CHQ_DVB;
end;

procedure TFormUsuarios.SN_CHQ_DVB_Verifica(Sender: TOBject);
var verificar : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificar := DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_DVB').AsString;

 if verificar = '' then
 exit;

 if verificar[2] = 'S' then
    CK_SN_CHQ_DVB_Editar.Checked := true
    else
    CK_SN_CHQ_DVB_Editar.Checked := false;

 if verificar[4] = 'S' then
    CK_SN_CHQ_DVB_RELATORIOS.Checked := true
    else
    CK_SN_CHQ_DVB_RELATORIOS.Checked := false;
 if verificar[5] = 'S' then
    CK_SN_CHQ_DVB_UTILITARIOS.Checked := true
    else
    CK_SN_CHQ_DVB_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.CK_SN_CHQ_DVB_EditarClick(Sender: TObject);
begin
SN_CHQ_DVB_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_DVB_RelatoriosClick(Sender: TObject);
begin
 SN_CHQ_DVB_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_DVB_UtilitariosClick(Sender: TObject);
begin
SN_CHQ_DVB_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_DVD_EditarClick(Sender: TObject);
begin
SN_CHQ_DVD_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_DVD_RelatoriosClick(Sender: TObject);
begin
SN_CHQ_DVD_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_DVD_UtilitariosClick(Sender: TObject);
begin
SN_CHQ_DVD_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_PDT_EDITARClick(Sender: TObject);
begin
SN_CHQ_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_PDT_EXCLUIRClick(Sender: TObject);
begin
SN_CHQ_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_PDT_INCLUIRClick(Sender: TObject);
begin
SN_CHQ_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_PDT_RELATORIOSClick(Sender: TObject);
begin
SN_CHQ_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_PDT_UTILITARIOSClick(Sender: TObject);
begin
SN_CHQ_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_PDV_EDITARClick(Sender: TObject);
begin
SN_CHQ_PDV_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_PDV_RELATORIOSClick(Sender: TObject);
begin
SN_CHQ_PDV_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CHQ_PDV_UTILITARIOSClick(Sender: TObject);
begin
SN_CHQ_PDV_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CLI_EditarClick(Sender: TObject);
begin
SN_CLI_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CLI_EXCLUIRClick(Sender: TObject);
begin
SN_CLI_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CLI_INCLUIRClick(Sender: TObject);
begin
SN_CLI_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CLI_RELATORIOSClick(Sender: TObject);
begin
SN_CLI_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CLI_UTILITARIOSClick(Sender: TObject);
begin
SN_CLI_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTP_EditarClick(Sender: TObject);
begin
SN_CTP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTP_ExcluirClick(Sender: TObject);
begin
SN_CTP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTP_IncluirClick(Sender: TObject);
begin
SN_CTP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTP_RelatoriosClick(Sender: TObject);
begin
SN_CTP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTP_UtilitariosClick(Sender: TObject);
begin
SN_CTP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTR_EDITARClick(Sender: TObject);
begin
SN_CTR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTR_EXCLUIRClick(Sender: TObject);
begin
SN_CTR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTR_INCLUIRClick(Sender: TObject);
begin
SN_CTR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTR_RELATORIOSClick(Sender: TObject);
begin
SN_CTR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_CTR_UTILITARIOSClick(Sender: TObject);
begin
SN_CTR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIN_EDITARClick(Sender: TObject);
begin
SN_DIV_FIN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIN_ExcluirClick(Sender: TObject);
begin
SN_DIV_FIN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIN_INCLUIRClick(Sender: TObject);
begin
SN_DIV_FIN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIN_RelatoriosClick(Sender: TObject);
begin
SN_DIV_FIN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIN_UtilitariosClick(Sender: TObject);
begin
SN_DIV_FIN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIS_EditarClick(Sender: TObject);
begin
SN_DIV_FIS_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIS_ExcluirClick(Sender: TObject);
begin
SN_DIV_FIS_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIS_IncluirClick(Sender: TObject);
begin
SN_DIV_FIS_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIS_RelatoriosClick(Sender: TObject);
begin
SN_DIV_FIS_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_DIV_FIS_UtilitariosClick(Sender: TObject);
begin
SN_DIV_FIS_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_EST_RelatoriosClick(Sender: TObject);
begin
SN_EST_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_ETQ_INCLUIRClick(Sender: TObject);
begin
SN_ETQ_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_ETQ_RELATORIOSClick(Sender: TObject);
begin
SN_ETQ_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_ETQ_UTILITARIOSClick(Sender: TObject);
begin
SN_ETQ_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FOR_EDITARClick(Sender: TObject);
begin
SN_FOR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FOR_EXCLUIRClick(Sender: TObject);
begin
SN_FOR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FOR_INCLUIRClick(Sender: TObject);
begin
SN_FOR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FOR_RELATORIOSClick(Sender: TObject);
begin
SN_FOR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FOR_UTILITARIOSClick(Sender: TObject);
begin
SN_FOR_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FUN_EDITARClick(Sender: TObject);
begin
SN_FUN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FUN_ExcluirClick(Sender: TObject);
begin
SN_FUN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FUN_IncluirClick(Sender: TObject);
begin
SN_FUN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FUN_RelatoriosClick(Sender: TObject);
begin
SN_FUN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_FUN_UtilitariosClick(Sender: TObject);
begin
SN_FUN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTE_EditarClick(Sender: TObject);
begin
SN_NTE_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTE_ExcluirClick(Sender: TObject);
begin
SN_NTE_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTE_IncluirClick(Sender: TObject);
begin
SN_NTE_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTE_RelatoriosClick(Sender: TObject);
begin
SN_NTE_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTE_UtilitariosClick(Sender: TObject);
begin
SN_NTE_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTF_RDZ_EditarClick(Sender: TObject);
begin
SN_NTF_RDZ_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTF_RDZ_ExcluirClick(Sender: TObject);
begin
SN_NTF_RDZ_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTF_RDZ_IncluirClick(Sender: TObject);
begin
SN_NTF_RDZ_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTF_RDZ_RelatoriosClick(Sender: TObject);
begin
SN_NTF_RDZ_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_NTF_RDZ_UtilitariosClick(Sender: TObject);
begin
SN_NTF_RDZ_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_PDT_EditarClick(Sender: TObject);
begin
SN_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_PDT_ExcluirClick(Sender: TObject);
begin
SN_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_PDT_IncluirClick(Sender: TObject);
begin
SN_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_PDT_RelatoriosClick(Sender: TObject);
begin
SN_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_PDT_UtilitariosClick(Sender: TObject);
begin
SN_PDT_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_REP_EditarClick(Sender: TObject);
begin
SN_REP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_REP_ExcluirClick(Sender: TObject);
begin
SN_REP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_REP_INCLUIRClick(Sender: TObject);
begin
SN_REP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_REP_RelatoriosClick(Sender: TObject);
begin
SN_REP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_REP_UtilitariosClick(Sender: TObject);
begin
SN_REP_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_RQS_EditarClick(Sender: TObject);
begin
SN_RQS_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_RQS_ExcluirClick(Sender: TObject);
begin
SN_RQS_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_RQS_IncluirClick(Sender: TObject);
begin
SN_RQS_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_RQS_RelatoriosClick(Sender: TObject);
begin
SN_RQS_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_TAB_PRC_RelatoriosClick(Sender: TObject);
begin
SN_TAB_PRC_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_TRN_EditarClick(Sender: TObject);
begin
SN_TRN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_TRN_ExcluirClick(Sender: TObject);
begin
SN_TRN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_TRN_IncluirClick(Sender: TObject);
begin
SN_TRN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_TRN_RelatoriosClick(Sender: TObject);
begin
SN_TRN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_VEN_EditarClick(Sender: TObject);
begin
SN_VEN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_VEN_ExcluirClick(Sender: TObject);
begin
SN_VEN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_VEN_IncluirClick(Sender: TObject);
begin
SN_VEN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_VEN_RelatoriosClick(Sender: TObject);
begin
SN_VEN_Grava(Sender);
end;

procedure TFormUsuarios.CK_SN_VEN_UtilitariosClick(Sender: TObject);
begin
SN_VEN_Grava(Sender);
end;

procedure TFormUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DMCadastro.CDSUsuarios.Open;
DMCadastro.CDSEmpresa.Open;
end;

procedure TFormUsuarios.FormCreate(Sender: TObject);
begin
 UserPageCadastro.TabVisible      := False;
 UserPageAcesso.TabVisible        := False;
 cxPageUsuarios.ActivePageIndex   :=0;
 PainelCancelarGravar.Visible := False;
end;

procedure TFormUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = '#13' then
    Perform(Wm_NextDlgCtl, 0, 0);
end;

procedure TFormUsuarios.FormShow(Sender: TObject);
begin
//DMCadastro.CDSUsuarios.Open;
//DMCadastro.CDSEmpresa.Open;
EditConfirmaSenha.Text := DMCadastro.CDSUsuarios.FieldByName('DS_SNH').AsString;



end;



procedure TFormUsuarios.SN_CHQ_BXD_Grava(Sender: TObject);
var
     auxSN_CHQ_BXD : string;
begin
     auxSN_CHQ_BXD := '';
     auxSN_CHQ_BXD := 'N';

     if CK_SN_CHQ_BXD_EDITAR.Checked then
          auxSN_CHQ_BXD := auxSN_CHQ_BXD + 'S'
     else
          auxSN_CHQ_BXD := auxSN_CHQ_BXD + 'N';

          auxSN_CHQ_BXD := auxSN_CHQ_BXD + 'N';

     if CK_SN_CHQ_BXD_RELATORIOS.Checked then
          auxSN_CHQ_BXD := auxSN_CHQ_BXD + 'S'
     else
          auxSN_CHQ_BXD := auxSN_CHQ_BXD + 'N';

     if CK_SN_CHQ_BXD_UTILITARIOS.Checked then
          auxSN_CHQ_BXD := auxSN_CHQ_BXD + 'S'
     else
          auxSN_CHQ_BXD := auxSN_CHQ_BXD + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_BXD').AsString := auxSN_CHQ_BXD;
end;

procedure TFormUsuarios.SN_CHQ_BXD_Verifica(Sender: TObject);
var verificar : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificar := DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_BXD').AsString;

 if verificar = '' then
 exit;

 if verificar[2] = 'S' then
    CK_SN_CHQ_BXD_Editar.Checked := true
    else
    CK_SN_CHQ_BXD_Editar.Checked := false;

 if verificar[4] = 'S' then
    CK_SN_CHQ_BXD_RELATORIOS.Checked := true
    else
    CK_SN_CHQ_BXD_RELATORIOS.Checked := false;
 if verificar[5] = 'S' then
    CK_SN_CHQ_BXD_UTILITARIOS.Checked := true
    else
    CK_SN_CHQ_BXD_UTILITARIOS.Checked := false;

end;

procedure TFormUsuarios.SN_CHQ_DVD_Grava(Sender: TObject);
var
     auxSN_CHQ_DVD : string;
begin
     auxSN_CHQ_DVD := '';
     auxSN_CHQ_DVD := 'N';

     if CK_SN_CHQ_DVD_EDITAR.Checked then
          auxSN_CHQ_DVD := auxSN_CHQ_DVD + 'S'
     else
          auxSN_CHQ_DVD := auxSN_CHQ_DVD + 'N';

          auxSN_CHQ_DVD := auxSN_CHQ_DVD + 'N';

     if CK_SN_CHQ_DVD_RELATORIOS.Checked then
          auxSN_CHQ_DVD := auxSN_CHQ_DVD + 'S'
     else
          auxSN_CHQ_DVD := auxSN_CHQ_DVD + 'N';

     if CK_SN_CHQ_DVD_UTILITARIOS.Checked then
          auxSN_CHQ_DVD := auxSN_CHQ_DVD + 'S'
     else
          auxSN_CHQ_DVD := auxSN_CHQ_DVD + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_DVD').AsString := auxSN_CHQ_DVD;
end;

procedure TFormUsuarios.SN_CHQ_DVD_Verifica(Sender: TObject);
var verificar : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificar := DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_DVD').AsString;

 if verificar = '' then
 exit;

 if verificar[2] = 'S' then
    CK_SN_CHQ_DVD_Editar.Checked := true
    else
    CK_SN_CHQ_DVD_Editar.Checked := false;

 if verificar[4] = 'S' then
    CK_SN_CHQ_DVD_RELATORIOS.Checked := true
    else
    CK_SN_CHQ_DVD_RELATORIOS.Checked := false;
 if verificar[5] = 'S' then
    CK_SN_CHQ_DVD_UTILITARIOS.Checked := true
    else
    CK_SN_CHQ_DVD_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_CHQ_PDT_Grava(Sender: TObject);
var
     auxSN_CHQ_PDT : string;
begin
     auxSN_CHQ_PDT := '';
     if CK_SN_CHQ_PDT_INCLUIR.Checked then
          auxSN_CHQ_PDT := 'S'
     else
          auxSN_CHQ_PDT := 'N';

     if CK_SN_CHQ_PDT_EDITAR.Checked then
          auxSN_CHQ_PDT := auxSN_CHQ_PDT + 'S'
     else
          auxSN_CHQ_PDT := auxSN_CHQ_PDT + 'N';

     if CK_SN_CHQ_PDT_EXCLUIR.Checked then
          auxSN_CHQ_PDT := auxSN_CHQ_PDT + 'S'
     else
          auxSN_CHQ_PDT := auxSN_CHQ_PDT + 'N';

     if CK_SN_CHQ_PDT_RELATORIOS.Checked then
          auxSN_CHQ_PDT := auxSN_CHQ_PDT + 'S'
     else
          auxSN_CHQ_PDT := auxSN_CHQ_PDT + 'N';

     if CK_SN_CHQ_PDT_UTILITARIOS.Checked then
          auxSN_CHQ_PDT := auxSN_CHQ_PDT + 'S'
     else
          auxSN_CHQ_PDT := auxSN_CHQ_PDT + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_PDT').AsString := auxSN_CHQ_PDT;

end;

procedure TFormUsuarios.SN_CHQ_PDT_Verifica(Sender: TObject);
var verificar : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificar := DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_PDT').AsString;

 if verificar = '' then
 exit;
 if verificar[1] = 'S' then
    CK_SN_CHQ_PDT_INCLUIR.Checked := true
    else
    CK_SN_CHQ_PDT_INCLUIR.Checked := false;
 if verificar[2] = 'S' then
    CK_SN_CHQ_PDT_Editar.Checked := true
    else
    CK_SN_CHQ_PDT_Editar.Checked := false;
 if verificar[3] = 'S' then
    CK_SN_CHQ_PDT_EXCLUIR.Checked := true
    else
    CK_SN_CHQ_PDT_EXCLUIR.Checked := false;
 if verificar[4] = 'S' then
    CK_SN_CHQ_PDT_RELATORIOS.Checked := true
    else
    CK_SN_CHQ_PDT_RELATORIOS.Checked := false;
 if verificar[5] = 'S' then
    CK_SN_CHQ_PDT_UTILITARIOS.Checked := true
    else
    CK_SN_CHQ_PDT_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_CHQ_PDV_Grava(Sender: TObject);
var
     auxSN_CHQ_PDV : string;
begin
     auxSN_CHQ_PDV := '';
     auxSN_CHQ_PDV := 'N';

     if CK_SN_CHQ_PDV_EDITAR.Checked then
          auxSN_CHQ_PDV := auxSN_CHQ_PDV + 'S'
     else
          auxSN_CHQ_PDV := auxSN_CHQ_PDV + 'N';

          auxSN_CHQ_PDV := auxSN_CHQ_PDV + 'N';

     if CK_SN_CHQ_PDV_RELATORIOS.Checked then
          auxSN_CHQ_PDV := auxSN_CHQ_PDV + 'S'
     else
          auxSN_CHQ_PDV := auxSN_CHQ_PDV + 'N';

     if CK_SN_CHQ_PDV_UTILITARIOS.Checked then
          auxSN_CHQ_PDV := auxSN_CHQ_PDV + 'S'
     else
          auxSN_CHQ_PDV := auxSN_CHQ_PDV + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_PDV').AsString := auxSN_CHQ_PDV;

end;

procedure TFormUsuarios.SN_CHQ_PDV_Verifica(Sender: TObject);
var verificar : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificar := DMCadastro.CDSUsuarios.FieldByName('SN_CHQ_PDV').AsString;

 if verificar = '' then
 exit;

 if verificar[2] = 'S' then
    CK_SN_CHQ_PDV_Editar.Checked := true
    else
    CK_SN_CHQ_PDV_Editar.Checked := false;

 if verificar[4] = 'S' then
    CK_SN_CHQ_PDV_RELATORIOS.Checked := true
    else
    CK_SN_CHQ_PDV_RELATORIOS.Checked := false;
 if verificar[5] = 'S' then
    CK_SN_CHQ_PDV_UTILITARIOS.Checked := true
    else
    CK_SN_CHQ_PDV_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_CLI_Grava(Sender: TObject);
var
     auxSN_CLI : string;
begin
     auxSN_CLI := '';
     if CK_SN_CLI_INCLUIR.Checked then
          auxSN_CLI := 'S'
     else
          auxSN_CLI := 'N';

     if CK_SN_CLI_EDITAR.Checked then
          auxSN_CLI := auxSN_CLI + 'S'
     else
          auxSN_CLI := auxSN_CLI + 'N';

     if CK_SN_CLI_EXCLUIR.Checked then
          auxSN_CLI := auxSN_CLI + 'S'
     else
          auxSN_CLI := auxSN_CLI + 'N';

     if CK_SN_CLI_RELATORIOS.Checked then
          auxSN_CLI := auxSN_CLI + 'S'
     else
          auxSN_CLI := auxSN_CLI + 'N';

     if CK_SN_CLI_UTILITARIOS.Checked then
          auxSN_CLI := auxSN_CLI + 'S'
     else
          auxSN_CLI := auxSN_CLI + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_CLI').AsString := auxSN_CLI;

end;

procedure TFormUsuarios.SN_CLI_Verifica(Sender: TObject);
var verificar : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificar := DMCadastro.CDSUsuarios.FieldByName('SN_CLI').AsString;

 if verificar = '' then
 exit;
 if verificar[1] = 'S' then
    CK_SN_CLI_INCLUIR.Checked := true
    else
    CK_SN_CLI_INCLUIR.Checked := false;
 if verificar[2] = 'S' then
    CK_SN_CLI_Editar.Checked := true
    else
    CK_SN_CLI_Editar.Checked := false;
 if verificar[3] = 'S' then
    CK_SN_CLI_EXCLUIR.Checked := true
    else
    CK_SN_CLI_EXCLUIR.Checked := false;
 if verificar[4] = 'S' then
    CK_SN_CLI_RELATORIOS.Checked := true
    else
    CK_SN_CLI_RELATORIOS.Checked := false;
 if verificar[5] = 'S' then
    CK_SN_CLI_UTILITARIOS.Checked := true
    else
    CK_SN_CLI_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_CTP_Grava(Sender: TOBject);
var
     auxSN_CTP : string;
begin
     auxSN_CTP := '';
     if CK_SN_CTP_INCLUIR.Checked then
          auxSN_CTP := 'S'
     else
          auxSN_CTP := 'N';

     if CK_SN_CTP_EDITAR.Checked then
          auxSN_CTP := auxSN_CTP + 'S'
     else
          auxSN_CTP := auxSN_CTP + 'N';

     if CK_SN_CTP_EXCLUIR.Checked then
          auxSN_CTP := auxSN_CTP + 'S'
     else
          auxSN_CTP := auxSN_CTP + 'N';

     if CK_SN_CTP_RELATORIOS.Checked then
          auxSN_CTP := auxSN_CTP + 'S'
     else
          auxSN_CTP := auxSN_CTP + 'N';

     if CK_SN_CTP_UTILITARIOS.Checked then
          auxSN_CTP := auxSN_CTP + 'S'
     else
          auxSN_CTP := auxSN_CTP + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_CTP').AsString := auxSN_CTP;
end;

procedure TFormUsuarios.SN_CTP_Verifica(Sender: TOBject);
var verificar : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificar := DMCadastro.CDSUsuarios.FieldByName('SN_CTP').AsString;

 if verificar = '' then
 exit;
 if verificar[1] = 'S' then
    CK_SN_CTP_INCLUIR.Checked := true
    else
    CK_SN_CTP_INCLUIR.Checked := false;
 if verificar[2] = 'S' then
    CK_SN_CTP_Editar.Checked := true
    else
    CK_SN_CTP_Editar.Checked := false;
 if verificar[3] = 'S' then
    CK_SN_CTP_EXCLUIR.Checked := true
    else
    CK_SN_CTP_EXCLUIR.Checked := false;
 if verificar[4] = 'S' then
    CK_SN_CTP_RELATORIOS.Checked := true
    else
    CK_SN_CTP_RELATORIOS.Checked := false;
 if verificar[5] = 'S' then
    CK_SN_CTP_UTILITARIOS.Checked := true
    else
    CK_SN_CTP_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_CTR_Grava(Sender: TObject);
var
     auxSN_CTR : string;
begin
     auxSN_CTR := '';
     if CK_SN_CTR_INCLUIR.Checked then
          auxSN_CTR := 'S'
     else
          auxSN_CTR := 'N';

     if CK_SN_CTR_EDITAR.Checked then
          auxSN_CTR := auxSN_CTR + 'S'
     else
          auxSN_CTR := auxSN_CTR + 'N';

     if CK_SN_CTR_EXCLUIR.Checked then
          auxSN_CTR := auxSN_CTR + 'S'
     else
          auxSN_CTR := auxSN_CTR + 'N';

     if CK_SN_CTR_RELATORIOS.Checked then
          auxSN_CTR := auxSN_CTR + 'S'
     else
          auxSN_CTR := auxSN_CTR + 'N';

     if CK_SN_CTR_UTILITARIOS.Checked then
          auxSN_CTR := auxSN_CTR + 'S'
     else
          auxSN_CTR := auxSN_CTR + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_CTR').AsString := auxSN_CTR;


end;

procedure TFormUsuarios.SN_CTR_Verifica(Sender: TObject);
var verificarSN_CTR : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificarSN_CTR := DMCadastro.CDSUsuarios.FieldByName('SN_CTR').AsString;

 if verificarSN_CTR = '' then
 exit;
 if verificarSN_CTR[1] = 'S' then
    CK_SN_CTR_INCLUIR.Checked := true
    else
    CK_SN_CTR_INCLUIR.Checked := false;
 if verificarSN_CTR[2] = 'S' then
    CK_SN_CTR_Editar.Checked := true
    else
    CK_SN_CTR_Editar.Checked := false;
 if verificarSN_CTR[3] = 'S' then
    CK_SN_CTR_EXCLUIR.Checked := true
    else
    CK_SN_CTR_EXCLUIR.Checked := false;
 if verificarSN_CTR[4] = 'S' then
    CK_SN_CTR_RELATORIOS.Checked := true
    else
    CK_SN_CTR_RELATORIOS.Checked := false;
 if verificarSN_CTR[5] = 'S' then
    CK_SN_CTR_UTILITARIOS.Checked := true
    else
    CK_SN_CTR_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_DIV_FIN_Grava(Sender: TObject);
var
     auxSN_DIV_FIN : string;
begin
     auxSN_DIV_FIN := '';
     if CK_SN_DIV_FIN_INCLUIR.Checked then
          auxSN_DIV_FIN := 'S'
     else
          auxSN_DIV_FIN := 'N';

     if CK_SN_DIV_FIN_EDITAR.Checked then
          auxSN_DIV_FIN := auxSN_DIV_FIN + 'S'
     else
          auxSN_DIV_FIN := auxSN_DIV_FIN + 'N';

     if CK_SN_DIV_FIN_EXCLUIR.Checked then
          auxSN_DIV_FIN := auxSN_DIV_FIN + 'S'
     else
          auxSN_DIV_FIN := auxSN_DIV_FIN + 'N';

     if CK_SN_DIV_FIN_RELATORIOS.Checked then
          auxSN_DIV_FIN := auxSN_DIV_FIN + 'S'
     else
          auxSN_DIV_FIN := auxSN_DIV_FIN + 'N';

     if CK_SN_DIV_FIN_UTILITARIOS.Checked then
          auxSN_DIV_FIN := auxSN_DIV_FIN + 'S'
     else
          auxSN_DIV_FIN := auxSN_DIV_FIN + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_DIV_FIN').AsString := auxSN_DIV_FIN;
end;

procedure TFormUsuarios.SN_DIV_FIN_Verifica(Sender: TObject);
var verificarSN_DIV_FIN : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificarSN_DIV_FIN := DMCadastro.CDSUsuarios.FieldByName('SN_DIV_FIN').AsString;

 if verificarSN_DIV_FIN = '' then
 exit;
 if verificarSN_DIV_FIN[1] = 'S' then
    CK_SN_DIV_FIN_INCLUIR.Checked := true
    else
    CK_SN_DIV_FIN_INCLUIR.Checked := false;
 if verificarSN_DIV_FIN[2] = 'S' then
    CK_SN_DIV_FIN_Editar.Checked := true
    else
    CK_SN_DIV_FIN_Editar.Checked := false;
 if verificarSN_DIV_FIN[3] = 'S' then
    CK_SN_DIV_FIN_EXCLUIR.Checked := true
    else
    CK_SN_DIV_FIN_EXCLUIR.Checked := false;
 if verificarSN_DIV_FIN[4] = 'S' then
    CK_SN_DIV_FIN_RELATORIOS.Checked := true
    else
    CK_SN_DIV_FIN_RELATORIOS.Checked := false;
 if verificarSN_DIV_FIN[5] = 'S' then
    CK_SN_DIV_FIN_UTILITARIOS.Checked := true
    else
    CK_SN_DIV_FIN_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_DIV_FIS_Grava(Sender: TObject);
var
     auxSN_DIV_FIS : string;
begin
     auxSN_DIV_FIS := '';
     if CK_SN_DIV_FIS_INCLUIR.Checked then
          auxSN_DIV_FIS := 'S'
     else
          auxSN_DIV_FIS := 'N';

     if CK_SN_DIV_FIS_EDITAR.Checked then
          auxSN_DIV_FIS := auxSN_DIV_FIS + 'S'
     else
          auxSN_DIV_FIS := auxSN_DIV_FIS + 'N';

     if CK_SN_DIV_FIS_EXCLUIR.Checked then
          auxSN_DIV_FIS := auxSN_DIV_FIS + 'S'
     else
          auxSN_DIV_FIS := auxSN_DIV_FIS + 'N';

     if CK_SN_DIV_FIS_RELATORIOS.Checked then
          auxSN_DIV_FIS := auxSN_DIV_FIS + 'S'
     else
          auxSN_DIV_FIS := auxSN_DIV_FIS + 'N';

     if CK_SN_DIV_FIS_UTILITARIOS.Checked then
          auxSN_DIV_FIS := auxSN_DIV_FIS + 'S'
     else
          auxSN_DIV_FIS := auxSN_DIV_FIS + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_DIV_FIS').AsString := auxSN_DIV_FIS;
end;

procedure TFormUsuarios.SN_DIV_FIS_Verifica(Sender: TObject);
var verificarSN_DIV_FIS : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificarSN_DIV_FIS := DMCadastro.CDSUsuarios.FieldByName('SN_DIV_FIS').AsString;

 if verificarSN_DIV_FIS = '' then
 exit;
 if verificarSN_DIV_FIS[1] = 'S' then
    CK_SN_DIV_FIS_INCLUIR.Checked := true
    else
    CK_SN_DIV_FIS_INCLUIR.Checked := false;
 if verificarSN_DIV_FIS[2] = 'S' then
    CK_SN_DIV_FIS_Editar.Checked := true
    else
    CK_SN_DIV_FIS_Editar.Checked := false;
 if verificarSN_DIV_FIS[3] = 'S' then
    CK_SN_DIV_FIS_EXCLUIR.Checked := true
    else
    CK_SN_DIV_FIS_EXCLUIR.Checked := false;
 if verificarSN_DIV_FIS[4] = 'S' then
    CK_SN_DIV_FIS_RELATORIOS.Checked := true
    else
    CK_SN_DIV_FIS_RELATORIOS.Checked := false;
 if verificarSN_DIV_FIS[5] = 'S' then
    CK_SN_DIV_FIS_UTILITARIOS.Checked := true
    else
    CK_SN_DIV_FIS_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_EST_Grava(Sender: TObject);
var
     auxSN_EST : string;
begin
          auxSN_EST := '';

          auxSN_EST := 'N';
          auxSN_EST := auxSN_EST + 'N';
          auxSN_EST := auxSN_EST + 'N';

     if CK_SN_EST_RELATORIOS.Checked then
          auxSN_EST := auxSN_EST + 'S'
     else
          auxSN_EST := auxSN_EST + 'N';

          auxSN_EST := auxSN_EST + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_EST').AsString := auxSN_EST;
end;

procedure TFormUsuarios.SN_EST_Verifica(Sender: TObject);
var verificarSN_EST : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificarSN_EST := DMCadastro.CDSUsuarios.FieldByName('SN_EST').AsString;

 if verificarSN_EST = '' then
 exit;
 if verificarSN_EST[4] = 'S' then
    CK_SN_EST_RELATORIOS.Checked := true
    else
    CK_SN_EST_RELATORIOS.Checked := false;
end;

procedure TFormUsuarios.SN_ETQ_Grava(Sender: TOBject);
var
     auxSN_ETQ : string;
begin
     auxSN_ETQ := '';
     if CK_SN_ETQ_INCLUIR.Checked then     //Incluir
          auxSN_ETQ := 'S'
     else
          auxSN_ETQ := 'N';

          auxSN_ETQ := auxSN_ETQ + 'N';   //editar
          auxSN_ETQ := auxSN_ETQ + 'N';   //Escluir

     if CK_SN_ETQ_RELATORIOS.Checked then  //Relatorios
          auxSN_ETQ := auxSN_ETQ + 'S'
     else
          auxSN_ETQ := auxSN_ETQ + 'N';

     if CK_SN_ETQ_UTILITARIOS.Checked then  //Utilitarios
          auxSN_ETQ := auxSN_ETQ + 'S'
     else
          auxSN_ETQ := auxSN_ETQ + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_ETQ').AsString := auxSN_ETQ;
end;

procedure TFormUsuarios.SN_ETQ_Verifica(Sender: TOBject);
var verificarSN_ETQ : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificarSN_ETQ := DMCadastro.CDSUsuarios.FieldByName('SN_ETQ').AsString;

 if verificarSN_ETQ = '' then
 exit;
 if verificarSN_ETQ[1] = 'S' then
    CK_SN_ETQ_INCLUIR.Checked := true
    else
    CK_SN_ETQ_INCLUIR.Checked := false;

 if verificarSN_ETQ[4] = 'S' then
    CK_SN_ETQ_RELATORIOS.Checked := true
    else
    CK_SN_ETQ_RELATORIOS.Checked := false;
 if verificarSN_ETQ[5] = 'S' then
    CK_SN_ETQ_UTILITARIOS.Checked := true
    else
    CK_SN_ETQ_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_FOR_Grava(Sender: TOBject);
var
     auxSN_FOR : string;
begin
     auxSN_FOR := '';
     if CK_SN_FOR_INCLUIR.Checked then
          auxSN_FOR := 'S'
     else
          auxSN_FOR := 'N';

     if CK_SN_FOR_EDITAR.Checked then
          auxSN_FOR := auxSN_FOR + 'S'
     else
          auxSN_FOR := auxSN_FOR + 'N';

     if CK_SN_FOR_EXCLUIR.Checked then
          auxSN_FOR := auxSN_FOR + 'S'
     else
          auxSN_FOR := auxSN_FOR + 'N';

     if CK_SN_FOR_RELATORIOS.Checked then
          auxSN_FOR := auxSN_FOR + 'S'
     else
          auxSN_FOR := auxSN_FOR + 'N';

     if CK_SN_FOR_UTILITARIOS.Checked then
          auxSN_FOR := auxSN_FOR + 'S'
     else
          auxSN_FOR := auxSN_FOR + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_FOR').AsString := auxSN_FOR;

end;

procedure TFormUsuarios.SN_FOR_Verifica(Sender: TObject);
var verificarSN_FOR : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificarSN_FOR := DMCadastro.CDSUsuarios.FieldByName('SN_FOR').AsString;

 if verificarSN_FOR = '' then
 exit;
 if verificarSN_FOR[1] = 'S' then
    CK_SN_FOR_INCLUIR.Checked := true
    else
    CK_SN_FOR_INCLUIR.Checked := false;
 if verificarSN_FOR[2] = 'S' then
    CK_SN_FOR_Editar.Checked := true
    else
    CK_SN_FOR_Editar.Checked := false;
 if verificarSN_FOR[3] = 'S' then
    CK_SN_FOR_EXCLUIR.Checked := true
    else
    CK_SN_FOR_EXCLUIR.Checked := false;
 if verificarSN_FOR[4] = 'S' then
    CK_SN_FOR_RELATORIOS.Checked := true
    else
    CK_SN_FOR_RELATORIOS.Checked := false;
 if verificarSN_FOR[5] = 'S' then
    CK_SN_FOR_UTILITARIOS.Checked := true
    else
    CK_SN_FOR_UTILITARIOS.Checked := false;

end;

procedure TFormUsuarios.SN_FUN_Grava(Sender: TOBject);
var
     auxSN_FUN : string;
begin
     auxSN_FUN := '';
     if CK_SN_FUN_INCLUIR.Checked then
          auxSN_FUN := 'S'
     else
          auxSN_FUN := 'N';

     if CK_SN_FUN_EDITAR.Checked then
          auxSN_FUN := auxSN_FUN + 'S'
     else
          auxSN_FUN := auxSN_FUN + 'N';

     if CK_SN_FUN_EXCLUIR.Checked then
          auxSN_FUN := auxSN_FUN + 'S'
     else
          auxSN_FUN := auxSN_FUN + 'N';

     if CK_SN_FUN_RELATORIOS.Checked then
          auxSN_FUN := auxSN_FUN + 'S'
     else
          auxSN_FUN := auxSN_FUN + 'N';

     if CK_SN_FUN_UTILITARIOS.Checked then
          auxSN_FUN := auxSN_FUN + 'S'
     else
          auxSN_FUN := auxSN_FUN + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_FUN').AsString := auxSN_FUN;
end;

procedure TFormUsuarios.SN_FUN_Verifica(Sender: TOBject);
var verificarSN_FUN : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificarSN_FUN := DMCadastro.CDSUsuarios.FieldByName('SN_FUN').AsString;

 if verificarSN_FUN = '' then
 exit;
 if verificarSN_FUN[1] = 'S' then
    CK_SN_FUN_INCLUIR.Checked := true
    else
    CK_SN_FUN_INCLUIR.Checked := false;
 if verificarSN_FUN[2] = 'S' then
    CK_SN_FUN_Editar.Checked := true
    else
    CK_SN_FUN_Editar.Checked := false;
 if verificarSN_FUN[3] = 'S' then
    CK_SN_FUN_EXCLUIR.Checked := true
    else
    CK_SN_FUN_EXCLUIR.Checked := false;
 if verificarSN_FUN[4] = 'S' then
    CK_SN_FUN_RELATORIOS.Checked := true
    else
    CK_SN_FUN_RELATORIOS.Checked := false;
 if verificarSN_FUN[5] = 'S' then
    CK_SN_FUN_UTILITARIOS.Checked := true
    else
    CK_SN_FUN_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_NTE_Grava(Sender: TObject);
var
     auxSN_NTE : string;
begin
     auxSN_NTE := '';
     if CK_SN_NTE_INCLUIR.Checked then
          auxSN_NTE := 'S'
     else
          auxSN_NTE := 'N';

     if CK_SN_NTE_EDITAR.Checked then
          auxSN_NTE := auxSN_NTE + 'S'
     else
          auxSN_NTE := auxSN_NTE + 'N';

     if CK_SN_NTE_EXCLUIR.Checked then
          auxSN_NTE := auxSN_NTE + 'S'
     else
          auxSN_NTE := auxSN_NTE + 'N';

     if CK_SN_NTE_RELATORIOS.Checked then
          auxSN_NTE := auxSN_NTE + 'S'
     else
          auxSN_NTE := auxSN_NTE + 'N';

     if CK_SN_NTE_UTILITARIOS.Checked then
          auxSN_NTE := auxSN_NTE + 'S'
     else
          auxSN_NTE := auxSN_NTE + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_NTE').AsString := auxSN_NTE;
end;

procedure TFormUsuarios.SN_NTE_Verifica(Sender: TObject);
var verificarSN_NTE : string;
begin
 if DMCadastro.CDSUsuarios.State in [dsedit] then
 verificarSN_NTE := DMCadastro.CDSUsuarios.FieldByName('SN_NTE').AsString;

 if verificarSN_NTE = '' then
 exit;
 if verificarSN_NTE[1] = 'S' then
    CK_SN_NTE_INCLUIR.Checked := true
    else
    CK_SN_NTE_INCLUIR.Checked := false;
 if verificarSN_NTE[2] = 'S' then
    CK_SN_NTE_Editar.Checked := true
    else
    CK_SN_NTE_Editar.Checked := false;
 if verificarSN_NTE[3] = 'S' then
    CK_SN_NTE_EXCLUIR.Checked := true
    else
    CK_SN_NTE_EXCLUIR.Checked := false;
 if verificarSN_NTE[4] = 'S' then
    CK_SN_NTE_RELATORIOS.Checked := true
    else
    CK_SN_NTE_RELATORIOS.Checked := false;
 if verificarSN_NTE[5] = 'S' then
    CK_SN_NTE_UTILITARIOS.Checked := true
    else
    CK_SN_NTE_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_NTF_RDZ_Grava(Sender: TObject);
var
     auxSN_NTF_RDZ : string;
begin
     auxSN_NTF_RDZ := '';
     if CK_SN_NTF_RDZ_INCLUIR.Checked then
          auxSN_NTF_RDZ := 'S'
     else
          auxSN_NTF_RDZ := 'N';

     if CK_SN_NTF_RDZ_EDITAR.Checked then
          auxSN_NTF_RDZ := auxSN_NTF_RDZ + 'S'
     else
          auxSN_NTF_RDZ := auxSN_NTF_RDZ + 'N';

     if CK_SN_NTF_RDZ_EXCLUIR.Checked then
          auxSN_NTF_RDZ := auxSN_NTF_RDZ + 'S'
     else
          auxSN_NTF_RDZ := auxSN_NTF_RDZ + 'N';

     if CK_SN_NTF_RDZ_RELATORIOS.Checked then
          auxSN_NTF_RDZ := auxSN_NTF_RDZ + 'S'
     else
          auxSN_NTF_RDZ := auxSN_NTF_RDZ + 'N';

     if CK_SN_NTF_RDZ_UTILITARIOS.Checked then
          auxSN_NTF_RDZ := auxSN_NTF_RDZ + 'S'
     else
          auxSN_NTF_RDZ := auxSN_NTF_RDZ + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_NTF_RDZ').AsString := auxSN_NTF_RDZ;
end;

procedure TFormUsuarios.SN_NTF_RDZ_Verifica(Sender: TObject);
var verificarSN_NTF_RDZ : string;
begin
 if DMCadastro.CDSUsuarios.State in [dsedit] then
 verificarSN_NTF_RDZ := DMCadastro.CDSUsuarios.FieldByName('SN_NTF_RDZ').AsString;

 if verificarSN_NTF_RDZ = '' then
 exit;
 if verificarSN_NTF_RDZ[1] = 'S' then
    CK_SN_NTF_RDZ_INCLUIR.Checked := true
    else
    CK_SN_NTF_RDZ_INCLUIR.Checked := false;
 if verificarSN_NTF_RDZ[2] = 'S' then
    CK_SN_NTF_RDZ_Editar.Checked := true
    else
    CK_SN_NTF_RDZ_Editar.Checked := false;
 if verificarSN_NTF_RDZ[3] = 'S' then
    CK_SN_NTF_RDZ_EXCLUIR.Checked := true
    else
    CK_SN_NTF_RDZ_EXCLUIR.Checked := false;
 if verificarSN_NTF_RDZ[4] = 'S' then
    CK_SN_NTF_RDZ_RELATORIOS.Checked := true
    else
    CK_SN_NTF_RDZ_RELATORIOS.Checked := false;
 if verificarSN_NTF_RDZ[5] = 'S' then
    CK_SN_NTF_RDZ_UTILITARIOS.Checked := true
    else
    CK_SN_NTF_RDZ_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_PDT_Grava(Sender: TOBject);
var
     auxSN_PDT : string;
begin
     auxSN_PDT := '';
     if CK_SN_PDT_INCLUIR.Checked then
          auxSN_PDT := 'S'
     else
          auxSN_PDT := 'N';

     if CK_SN_PDT_EDITAR.Checked then
          auxSN_PDT := auxSN_PDT + 'S'
     else
          auxSN_PDT := auxSN_PDT + 'N';

     if CK_SN_PDT_EXCLUIR.Checked then
          auxSN_PDT := auxSN_PDT + 'S'
     else
          auxSN_PDT := auxSN_PDT + 'N';

     if CK_SN_PDT_RELATORIOS.Checked then
          auxSN_PDT := auxSN_PDT + 'S'
     else
          auxSN_PDT := auxSN_PDT + 'N';

     if CK_SN_PDT_UTILITARIOS.Checked then
          auxSN_PDT := auxSN_PDT + 'S'
     else
          auxSN_PDT := auxSN_PDT + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_PDT').AsString := auxSN_PDT;
end;

procedure TFormUsuarios.SN_PDT_Verifica(Sender: TOBject);
var verificarSN_PDT : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificarSN_PDT := DMCadastro.CDSUsuarios.FieldByName('SN_PDT').AsString;

 if verificarSN_PDT = '' then
 exit;
 if verificarSN_PDT[1] = 'S' then
    CK_SN_PDT_INCLUIR.Checked := true
    else
    CK_SN_PDT_INCLUIR.Checked := false;
 if verificarSN_PDT[2] = 'S' then
    CK_SN_PDT_Editar.Checked := true
    else
    CK_SN_PDT_Editar.Checked := false;
 if verificarSN_PDT[3] = 'S' then
    CK_SN_PDT_EXCLUIR.Checked := true
    else
    CK_SN_PDT_EXCLUIR.Checked := false;
 if verificarSN_PDT[4] = 'S' then
    CK_SN_PDT_RELATORIOS.Checked := true
    else
    CK_SN_PDT_RELATORIOS.Checked := false;
 if verificarSN_PDT[5] = 'S' then
    CK_SN_PDT_UTILITARIOS.Checked := true
    else
    CK_SN_PDT_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_REP_Grava(Sender: TObject);
var
     auxSN_REP : string;
begin
     auxSN_REP := '';
     if CK_SN_REP_INCLUIR.Checked then
          auxSN_REP := 'S'
     else
          auxSN_REP := 'N';

     if CK_SN_REP_EDITAR.Checked then
          auxSN_REP := auxSN_REP + 'S'
     else
          auxSN_REP := auxSN_REP + 'N';

     if CK_SN_REP_EXCLUIR.Checked then
          auxSN_REP := auxSN_REP + 'S'
     else
          auxSN_REP := auxSN_REP + 'N';

     if CK_SN_REP_RELATORIOS.Checked then
          auxSN_REP := auxSN_REP + 'S'
     else
          auxSN_REP := auxSN_REP + 'N';

     if CK_SN_REP_UTILITARIOS.Checked then
          auxSN_REP := auxSN_REP + 'S'
     else
          auxSN_REP := auxSN_REP + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_REP').AsString := auxSN_REP;
end;

procedure TFormUsuarios.SN_REP_Verifica(Sender: TObject);
var verificarSN_REP : string;
begin
 if DMCadastro.CDSUsuarios.State in [dsedit] then
 verificarSN_REP := DMCadastro.CDSUsuarios.FieldByName('SN_REP').AsString;

 if verificarSN_REP = '' then
 exit;
 if verificarSN_REP[1] = 'S' then
    CK_SN_REP_INCLUIR.Checked := true
    else
    CK_SN_REP_INCLUIR.Checked := false;
 if verificarSN_REP[2] = 'S' then
    CK_SN_REP_Editar.Checked := true
    else
    CK_SN_REP_Editar.Checked := false;
 if verificarSN_REP[3] = 'S' then
    CK_SN_REP_EXCLUIR.Checked := true
    else
    CK_SN_REP_EXCLUIR.Checked := false;
 if verificarSN_REP[4] = 'S' then
    CK_SN_REP_RELATORIOS.Checked := true
    else
    CK_SN_REP_RELATORIOS.Checked := false;
 if verificarSN_REP[5] = 'S' then
    CK_SN_REP_UTILITARIOS.Checked := true
    else
    CK_SN_REP_UTILITARIOS.Checked := false;
end;

procedure TFormUsuarios.SN_RQS_Grava(Sender: TObject);
var
     auxSN_RQS : string;
begin
     auxSN_RQS := '';
     if CK_SN_RQS_INCLUIR.Checked then
          auxSN_RQS := 'S'
     else
          auxSN_RQS := 'N';

     if CK_SN_RQS_EDITAR.Checked then
          auxSN_RQS := auxSN_RQS + 'S'
     else
          auxSN_RQS := auxSN_RQS + 'N';

     if CK_SN_RQS_EXCLUIR.Checked then
          auxSN_RQS := auxSN_RQS + 'S'
     else
          auxSN_RQS := auxSN_RQS + 'N';

     if CK_SN_RQS_RELATORIOS.Checked then
          auxSN_RQS := auxSN_RQS + 'S'
     else
          auxSN_RQS := auxSN_RQS + 'N';

          auxSN_RQS := auxSN_RQS + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_RQS').AsString := auxSN_RQS;

end;

procedure TFormUsuarios.SN_RQS_Verifica(Sender: TObject);
var verificarSN_RQS : string;
begin
 if DMCadastro.CDSUsuarios.State in [dsedit] then
 verificarSN_RQS := DMCadastro.CDSUsuarios.FieldByName('SN_RQS').AsString;

 if verificarSN_RQS = '' then
 exit;
 if verificarSN_RQS[1] = 'S' then
    CK_SN_RQS_INCLUIR.Checked := true
    else
    CK_SN_RQS_INCLUIR.Checked := false;
 if verificarSN_RQS[2] = 'S' then
    CK_SN_RQS_Editar.Checked := true
    else
    CK_SN_RQS_Editar.Checked := false;
 if verificarSN_RQS[3] = 'S' then
    CK_SN_RQS_EXCLUIR.Checked := true
    else
    CK_SN_RQS_EXCLUIR.Checked := false;
 if verificarSN_RQS[4] = 'S' then
    CK_SN_RQS_RELATORIOS.Checked := true
    else
    CK_SN_RQS_RELATORIOS.Checked := false;

end;

procedure TFormUsuarios.SN_TAB_PRC_Grava(Sender: TObject);   // Grava Click Tabela Preco
var
     auxSN_TAB_PRC : string;
begin
          auxSN_TAB_PRC := '';

          auxSN_TAB_PRC := 'N';
          auxSN_TAB_PRC := auxSN_TAB_PRC + 'N';
          auxSN_TAB_PRC := auxSN_TAB_PRC + 'N';

     if CK_SN_TAB_PRC_RELATORIOS.Checked then
          auxSN_TAB_PRC := auxSN_TAB_PRC + 'S'
     else
          auxSN_TAB_PRC := auxSN_TAB_PRC + 'N';

          auxSN_TAB_PRC := auxSN_TAB_PRC + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_TAB_PRC').AsString := auxSN_TAB_PRC;
end;

procedure TFormUsuarios.SN_TAB_PRC_Verifica(Sender: TObject); // verifica status permissao tabela preço
var verificarSN_TAB_PRC : string;
begin
  if DMCadastro.CDSUsuarios.State in [dsedit] then

 verificarSN_TAB_PRC := DMCadastro.CDSUsuarios.FieldByName('SN_TAB_PRC').AsString;

 if verificarSN_TAB_PRC = '' then
 exit;
 if verificarSN_TAB_PRC[4] = 'S' then
    CK_SN_TAB_PRC_RELATORIOS.Checked := true
    else
    CK_SN_TAB_PRC_RELATORIOS.Checked := false;
 end;

procedure TFormUsuarios.SN_TRN_Grava(Sender: TObject);
var
     auxSN_TRN : string;
begin
     auxSN_TRN := '';
     if CK_SN_TRN_INCLUIR.Checked then
          auxSN_TRN := 'S'
     else
          auxSN_TRN := 'N';

     if CK_SN_TRN_EDITAR.Checked then
          auxSN_TRN := auxSN_TRN + 'S'
     else
          auxSN_TRN := auxSN_TRN + 'N';

     if CK_SN_TRN_EXCLUIR.Checked then
          auxSN_TRN := auxSN_TRN + 'S'
     else
          auxSN_TRN := auxSN_TRN + 'N';

     if CK_SN_TRN_RELATORIOS.Checked then
          auxSN_TRN := auxSN_TRN + 'S'
     else
          auxSN_TRN := auxSN_TRN + 'N';

          auxSN_TRN := auxSN_TRN + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_TRN').AsString := auxSN_TRN;
end;

procedure TFormUsuarios.SN_TRN_Verifica(Sender: TObject);
var verificarSN_TRN : string;
begin
 if DMCadastro.CDSUsuarios.State in [dsedit] then
 verificarSN_TRN := DMCadastro.CDSUsuarios.FieldByName('SN_TRN').AsString;

 if verificarSN_TRN = '' then
 exit;
 if verificarSN_TRN[1] = 'S' then
    CK_SN_TRN_INCLUIR.Checked := true
    else
    CK_SN_TRN_INCLUIR.Checked := false;
 if verificarSN_TRN[2] = 'S' then
    CK_SN_TRN_Editar.Checked := true
    else
    CK_SN_TRN_Editar.Checked := false;
 if verificarSN_TRN[3] = 'S' then
    CK_SN_TRN_EXCLUIR.Checked := true
    else
    CK_SN_TRN_EXCLUIR.Checked := false;
 if verificarSN_TRN[4] = 'S' then
    CK_SN_TRN_RELATORIOS.Checked := true
    else
    CK_SN_TRN_RELATORIOS.Checked := false;

 end;

procedure TFormUsuarios.SN_VEN_Grava(Sender: TObject);
var
     auxSN_VEN : string;
begin
     auxSN_VEN := '';
     if CK_SN_VEN_INCLUIR.Checked then
          auxSN_VEN := 'S'
     else
          auxSN_VEN := 'N';

     if CK_SN_VEN_EDITAR.Checked then
          auxSN_VEN := auxSN_VEN + 'S'
     else
          auxSN_VEN := auxSN_VEN + 'N';

     if CK_SN_VEN_EXCLUIR.Checked then
          auxSN_VEN := auxSN_VEN + 'S'
     else
          auxSN_VEN := auxSN_VEN + 'N';

     if CK_SN_VEN_RELATORIOS.Checked then
          auxSN_VEN := auxSN_VEN + 'S'
     else
          auxSN_VEN := auxSN_VEN + 'N';

     if CK_SN_VEN_UTILITARIOS.Checked then
          auxSN_VEN := auxSN_VEN + 'S'
     else
          auxSN_VEN := auxSN_VEN + 'N';

     DMCadastro.CDSUsuarios.FieldByName('SN_VEN').AsString := auxSN_VEN;
end;

procedure TFormUsuarios.SN_VEN_Verifica(Sender: TObject);
var verificarSN_VEN : string;
begin
 if DMCadastro.CDSUsuarios.State in [dsedit] then
 verificarSN_VEN := DMCadastro.CDSUsuarios.FieldByName('SN_VEN').AsString;

 if verificarSN_VEN = '' then
 exit;
 if verificarSN_VEN[1] = 'S' then
    CK_SN_VEN_INCLUIR.Checked := true
    else
    CK_SN_VEN_INCLUIR.Checked := false;
 if verificarSN_VEN[2] = 'S' then
    CK_SN_VEN_Editar.Checked := true
    else
    CK_SN_VEN_Editar.Checked := false;
 if verificarSN_VEN[3] = 'S' then
    CK_SN_VEN_EXCLUIR.Checked := true
    else
    CK_SN_VEN_EXCLUIR.Checked := false;
 if verificarSN_VEN[4] = 'S' then
    CK_SN_VEN_RELATORIOS.Checked := true
    else
    CK_SN_VEN_RELATORIOS.Checked := false;
 if verificarSN_VEN[5] = 'S' then
    CK_SN_VEN_UTILITARIOS.Checked := true
    else
    CK_SN_VEN_UTILITARIOS.Checked := false;
end;

end.
