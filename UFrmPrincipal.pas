unit UFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonCustomizationForm, dxRibbon, System.ImageList,
  Vcl.ImgList, cxClasses, dxDockControl, dxBar, dxNavBarCollns, dxNavBarBase,
  dxNavBar, cxTreeView, cxScrollBox, dxGDIPlusClasses, Vcl.ExtCtrls, cxGroupBox,
  dxDockPanel, dxStatusBar, cxPC, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, dxSkinsForm, Vcl.Menus,
  AdvMenus, Vcl.AppEvnts, dxCustomTileControl, dxTileControl, cxContainer,
  cxEdit, Vcl.ComCtrls, dxRibbonSkins, dxSkinsCore, dxSkinLiquidSky,
  dxSkinsdxNavBarPainter, dxSkinsdxNavBarAccordionViewPainter,
  dxSkinsdxRibbonPainter, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter,
  dxSkinsdxDockControlPainter, UFuncoes, Vcl.ToolWin;

type
  TFormPrincipal = class(TForm)
    MenuSistema: TMainMenu;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedores1: TMenuItem;
    N2: TMenuItem;
    N1: TMenuItem;
    DiversosEndereos1: TMenuItem;
    Pases1: TMenuItem;
    UnidadeFederativa1: TMenuItem;
    Cidade1: TMenuItem;
    Cep1: TMenuItem;
    N3: TMenuItem;
    ContasaReceber1: TMenuItem;
    Duplicatas1: TMenuItem;
    N4: TMenuItem;
    ChequesprdatadosAbertos1: TMenuItem;
    ChequesprdatadosBaixados1: TMenuItem;
    N5: TMenuItem;
    Chequesprdatadosprdevolvidos1: TMenuItem;
    ChequesprdatadosDevolvidos1: TMenuItem;
    ChequesprdatadosDevolvidosBaixados1: TMenuItem;
    ContasaPagar1: TMenuItem;
    PrevisodePagamento1: TMenuItem;
    N6: TMenuItem;
    Produtos1: TMenuItem;
    Produtos2: TMenuItem;
    N8: TMenuItem;
    FamliadeProdutos1: TMenuItem;
    GrupodeProdutos1: TMenuItem;
    UnidadedeProdutos: TMenuItem;
    EmbalagemProduto1: TMenuItem;
    N9: TMenuItem;
    GnerodeItemdeMercadoriaServio1: TMenuItem;
    N10: TMenuItem;
    KitdeProduto1: TMenuItem;
    N7: TMenuItem;
    DiversosFinanceior1: TMenuItem;
    LocaldeCobrana1: TMenuItem;
    Moedas1: TMenuItem;
    N12: TMenuItem;
    PlanodeContas1: TMenuItem;
    N13: TMenuItem;
    PlanodePagamentos1: TMenuItem;
    N14: TMenuItem;
    Feriados1: TMenuItem;
    N11: TMenuItem;
    DiversosFiscais1: TMenuItem;
    UnidadeFederativa2: TMenuItem;
    AlquotadeICMS1: TMenuItem;
    CFOP1: TMenuItem;
    N15: TMenuItem;
    CEST1: TMenuItem;
    NBM1: TMenuItem;
    N16: TMenuItem;
    ObservaodeNotaFiscal1: TMenuItem;
    N17: TMenuItem;
    Funcionrios1: TMenuItem;
    Funcionrios2: TMenuItem;
    SetordeTrabalho1: TMenuItem;
    Vendedor1: TMenuItem;
    Vendedor2: TMenuItem;
    Rotas1: TMenuItem;
    N18: TMenuItem;
    GrupodeMetasdeVendas1: TMenuItem;
    RepresentantedeFornecedor1: TMenuItem;
    N19: TMenuItem;
    ransportadoras1: TMenuItem;
    N20: TMenuItem;
    NotaFiscalFaturada1: TMenuItem;
    LanamentodeCartodeCrdito1: TMenuItem;
    ReduoZ1: TMenuItem;
    N21: TMenuItem;
    NotaFiscaldeEntrada1: TMenuItem;
    N22: TMenuItem;
    Oramento1: TMenuItem;
    N23: TMenuItem;
    PrOrdemdeRequisio1: TMenuItem;
    Cores1: TMenuItem;
    PrOrdemdeRequisio2: TMenuItem;
    RequisiodeMaterial1: TMenuItem;
    N24: TMenuItem;
    OrdemdeProduodeTerceiros1: TMenuItem;
    Lanamentos1: TMenuItem;
    PedidosparaFaturar1: TMenuItem;
    N25: TMenuItem;
    LotedePedidosparaFaturar1: TMenuItem;
    EmitirNotaFiscalparaoLote1: TMenuItem;
    N26: TMenuItem;
    EmitirEtiquetasde1: TMenuItem;
    Processamentos1: TMenuItem;
    ContasaReceber2: TMenuItem;
    LotedeRemessa1: TMenuItem;
    GeraRemessa1: TMenuItem;
    RetornoRemessa1: TMenuItem;
    N28: TMenuItem;
    RetornodeRemessaBrasil1: TMenuItem;
    N27: TMenuItem;
    ControledeCheques1: TMenuItem;
    Gerar1: TMenuItem;
    N31: TMenuItem;
    Processarbaixadechequesprdatados1: TMenuItem;
    N29: TMenuItem;
    CalcularEstoqueMnimoeMximo1: TMenuItem;
    N30: TMenuItem;
    ReajustarPreodeVendas1: TMenuItem;
    Fiscal1: TMenuItem;
    SaldoInicial1: TMenuItem;
    ReprocessarEstoque1: TMenuItem;
    FecharEstoque1: TMenuItem;
    N32: TMenuItem;
    SINTEGRA1: TMenuItem;
    N33: TMenuItem;
    CONTABILIDADE1: TMenuItem;
    PlanilhaST1: TMenuItem;
    PlanilhaSTparaSadas1: TMenuItem;
    PlanilhaSTparaRestituio1: TMenuItem;
    N35: TMenuItem;
    PlanilhaSubstituioTributria1: TMenuItem;
    ProdutosPlanilhaSubstituioTributria1: TMenuItem;
    RegistroInventrioContabilidade1: TMenuItem;
    N34: TMenuItem;
    AcertarCustoMdio1: TMenuItem;
    ImportarExportar1: TMenuItem;
    ImportarPedidosVendasExternas1: TMenuItem;
    N36: TMenuItem;
    Importar1: TMenuItem;
    N37: TMenuItem;
    ExportarCadastrodeProdutos1: TMenuItem;
    Relatrios1: TMenuItem;
    MalaDiretaClientes1: TMenuItem;
    N38: TMenuItem;
    Produtos3: TMenuItem;
    RelaodeProdutos1: TMenuItem;
    N40: TMenuItem;
    RelaodeProdutosporSituaoFiscal1: TMenuItem;
    RelaodeProdutosporTIPI1: TMenuItem;
    N41: TMenuItem;
    EtiquetasdeProdutos1: TMenuItem;
    N42: TMenuItem;
    ContagemparaInventrio1: TMenuItem;
    N43: TMenuItem;
    abeladePreo1: TMenuItem;
    N44: TMenuItem;
    Estatsticas1: TMenuItem;
    CurvaABCProdutos1: TMenuItem;
    ProdutosVendidos1: TMenuItem;
    N45: TMenuItem;
    Estoque1: TMenuItem;
    MovimentaoSinttica1: TMenuItem;
    MovimentaoAnaltica1: TMenuItem;
    N47: TMenuItem;
    FaturadoCompradonosltimos6meses1: TMenuItem;
    MovimentaoEstoqueltimos12meses1: TMenuItem;
    N46: TMenuItem;
    LivrosFiscais1: TMenuItem;
    RCPE1: TMenuItem;
    RCPE2: TMenuItem;
    N48: TMenuItem;
    LivrodeInventrio1: TMenuItem;
    C1: TMenuItem;
    N49: TMenuItem;
    LivrodeNBM1: TMenuItem;
    N50: TMenuItem;
    FichadeSadasdeInsumos1: TMenuItem;
    FichadeRemententesdeInsumos1: TMenuItem;
    N51: TMenuItem;
    FichadeEntradadeInsumos1: TMenuItem;
    FichadeEntradadeInsumos2: TMenuItem;
    FichadeSadadeInsumosparaDestinatrioFicha401: TMenuItem;
    FichadeEntradadeInsumosdeProdutosporIPIFicha391: TMenuItem;
    N39: TMenuItem;
    NotasFaturadas1: TMenuItem;
    NotasdoPerdoResumoMatriz1: TMenuItem;
    N52: TMenuItem;
    NotasdoPerodoRegimeEspecial1: TMenuItem;
    N53: TMenuItem;
    NotasFaturadasXDuplictas1: TMenuItem;
    N54: TMenuItem;
    ResumoPreoMnimo1: TMenuItem;
    Utilitrios1: TMenuItem;
    ParmetrosdaEmpresa1: TMenuItem;
    ParmentrosdaEmpresa1: TMenuItem;
    N57: TMenuItem;
    NumeraoNotaFiscal1: TMenuItem;
    N58: TMenuItem;
    NumeraoRequisio1: TMenuItem;
    N59: TMenuItem;
    NumeraoOramento1: TMenuItem;
    N55: TMenuItem;
    Usurios1: TMenuItem;
    N56: TMenuItem;
    Calculadora1: TMenuItem;
    Calendrio1: TMenuItem;
    Informao1: TMenuItem;
    dsHost: TdxDockSite;
    dxLayoutDockSite4: TdxLayoutDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxLayoutDockSite3: TdxLayoutDockSite;
    dpStartPage: TdxDockPanel;
    cxGroupBoxCentral: TcxGroupBox;
    Image1: TImage;
    dxTileControl: TdxTileControl;
    dxTileControl1Group1: TdxTileControlGroup;
    dxTileControl_ContasPagar: TdxTileControlItem;
    dxTileControl1Item3: TdxTileControlItem;
    dxTileControl1Item4: TdxTileControlItem;
    dxTileControl1Item4dxTileControlItemFrame1: TdxTileControlItemFrame;
    dxTileControl1Item4dxTileControlItemFrame2: TdxTileControlItemFrame;
    dxTileControl1Item5: TdxTileControlItem;
    dxTileControl1Item6: TdxTileControlItem;
    dxTileControl1Item7: TdxTileControlItem;
    dxTileControlItem1: TdxTileControlItem;
    dxVertContainerDockSite1: TdxVertContainerDockSite;
    dpProperties: TdxDockPanel;
    ScrollBox1: TcxScrollBox;
    Panel4: TcxGroupBox;
    dxTabContainerDockSite2: TdxTabContainerDockSite;
    dpSolutionExplorer: TdxDockPanel;
    tvSolutionExplorer: TcxTreeView;
    dpClassView: TdxDockPanel;
    tvClassView: TcxTreeView;
    dpToolbox: TdxDockPanel;
    dxNavBar1: TdxNavBar;
    dxNavBar1Group1: TdxNavBarGroup;
    dxNavLatLancamento: TdxNavBarGroup;
    dxNavBar1Group3: TdxNavBarGroup;
    dxNavBar1Group4: TdxNavBarGroup;
    menuLatUsuario: TdxNavBarItem;
    menuLatFuncionario: TdxNavBarItem;
    menuLatClientes: TdxNavBarItem;
    menuLatHoras: TdxNavBarItem;
    menuLatProdutos: TdxNavBarItem;
    menuLatGrupoProd: TdxNavBarItem;
    dxNavBar1Item7: TdxNavBarItem;
    dxNavBarOS: TdxNavBarItem;
    dxNavBar1Item9: TdxNavBarItem;
    dxNavBar1Item10: TdxNavBarItem;
    dxNavBar1Item11: TdxNavBarItem;
    dxNavBar1Item12: TdxNavBarItem;
    dxNavBar1Item13: TdxNavBarItem;
    dxNavBar1Item14: TdxNavBarItem;
    dxNavBar1Item1: TdxNavBarItem;
    NavBarCategoria: TdxNavBarItem;
    dxNavBar1Item2: TdxNavBarItem;
    StatusBarPrincipal: TdxStatusBar;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    dxBarManager1Bar4: TdxBar;
    BtnFornecedor: TdxBarLargeButton;
    BtnCliente: TdxBarLargeButton;
    BtnCategorias: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    dxBarSeparator2: TdxBarSeparator;
    dxBarButton16: TdxBarButton;
    dxBarSeparator3: TdxBarSeparator;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarSeparator4: TdxBarSeparator;
    dxBarSeparator5: TdxBarSeparator;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSeparator6: TdxBarSeparator;
    dxBarButton22: TdxBarButton;
    dxBarSeparator7: TdxBarSeparator;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarSeparator8: TdxBarSeparator;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarSeparator9: TdxBarSeparator;
    dxBarButton28: TdxBarButton;
    dxBarSeparator10: TdxBarSeparator;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarSeparator11: TdxBarSeparator;
    dxBarButton31: TdxBarButton;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarSeparator12: TdxBarSeparator;
    dxBarButton35: TdxBarButton;
    dxBarSeparator13: TdxBarSeparator;
    dxBarButton36: TdxBarButton;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarSubItem11: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    dxBarSeparator14: TdxBarSeparator;
    dxBarButton39: TdxBarButton;
    dxBarSeparator15: TdxBarSeparator;
    dxBarButton40: TdxBarButton;
    dxBarSeparator16: TdxBarSeparator;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton41: TdxBarButton;
    dxBarSeparator17: TdxBarSeparator;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarSeparator18: TdxBarSeparator;
    dxBarButton45: TdxBarButton;
    dxBarSeparator19: TdxBarSeparator;
    dxBarButton46: TdxBarButton;
    dxBarSeparator20: TdxBarSeparator;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarSeparator21: TdxBarSeparator;
    dxBarButton51: TdxBarButton;
    dxBarButton52: TdxBarButton;
    dxBarSeparator22: TdxBarSeparator;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarButton56: TdxBarButton;
    dxBarButton57: TdxBarButton;
    dxBarSeparator23: TdxBarSeparator;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarButton61: TdxBarButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarButton66: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    BtnEmpresa: TdxBarLargeButton;
    BtnUsuario: TdxBarLargeButton;
    dxDockingManager1: TdxDockingManager;
    ilDockIcons: TImageList;
    ActionManager1: TActionManager;
    ActCadUsuarios: TAction;
    AcEmpresa: TAction;
    ActCadCep: TAction;
    ActCadCategoria: TAction;
    ActCadFornecedor: TAction;
    ActRepresentantes: TAction;
    ActLocalCobranca: TAction;
    ActCadGenItem: TAction;
    ActCadUnidadeProduto: TAction;
    ActCadEmbalagem: TAction;
    ActCadTransportadora: TAction;
    ActCadSetor: TAction;
    ActCadFuncionario: TAction;
    ActPais: TAction;
    ActUFederativa: TAction;
    ActCidades: TAction;
    ActCadClientes: TAction;
    Act_CFOP: TAction;
    ActCest: TAction;
    Act_NBM: TAction;
    ActCores: TAction;
    Act_chqpdtAberto: TAction;
    ActContasPagar: TAction;
    ActContasReceber: TAction;
    AcObsNTF: TAction;
    AcPLNPGT: TAction;
    AcCadRotas: TAction;
    AcChqBX: TAction;
    AcChqPP: TAction;
    AcChqDV: TAction;
    AcChqDB: TAction;
    ApplicationEvents1: TApplicationEvents;
    dxRibbon1: TdxRibbon;
    dxCadastros: TdxRibbonTab;
    dxRibbon1Tab2: TdxRibbonTab;
    StatusBar1: TStatusBar;
    procedure ActCadUsuariosExecute(Sender: TObject);
    procedure AcEmpresaExecute(Sender: TObject);
    procedure dxBarButton15Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure ActCadCepExecute(Sender: TObject);
    procedure ActCadCategoriaExecute(Sender: TObject);
    procedure ActCadFornecedorExecute(Sender: TObject);
    procedure ActRepresentantesExecute(Sender: TObject);
    procedure FamliadeProdutos1Click(Sender: TObject);
    procedure GrupodeProdutos1Click(Sender: TObject);
    procedure GrupodeMetasdeVendas1Click(Sender: TObject);
    procedure ActLocalCobrancaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dxTileControl1Item3Click(Sender: TdxTileControlItem);
    procedure Vendedor2Click(Sender: TObject);
    procedure dxTileControl1Item6Click(Sender: TdxTileControlItem);
    procedure ActCadGenItemExecute(Sender: TObject);
    procedure ActCadUnidadeProdutoExecute(Sender: TObject);
    procedure ActCadEmbalagemExecute(Sender: TObject);
    procedure ActCadTransportadoraExecute(Sender: TObject);
    procedure ActCadSetorExecute(Sender: TObject);
    procedure ActCadFuncionarioExecute(Sender: TObject);
    procedure ActPaisExecute(Sender: TObject);
    procedure ActUFederativaExecute(Sender: TObject);
    procedure ActCidadesExecute(Sender: TObject);
    procedure ActCadClientesExecute(Sender: TObject);
    procedure Act_CFOPExecute(Sender: TObject);
    procedure AlquotadeICMS1Click(Sender: TObject);
    procedure ActCestExecute(Sender: TObject);
    procedure Act_NBMExecute(Sender: TObject);
    procedure ActCoresExecute(Sender: TObject);
    procedure Act_chqpdtAbertoExecute(Sender: TObject);
    procedure ActContasPagarExecute(Sender: TObject);
    procedure ActContasReceberExecute(Sender: TObject);
    procedure dxTileControl_ContasPagarClick(Sender: TdxTileControlItem);
    procedure Produtos2Click(Sender: TObject);
    procedure AcObsNTFExecute(Sender: TObject);
    procedure AcPLNPGTExecute(Sender: TObject);
    procedure AcCadRotasExecute(Sender: TObject);
    procedure AcChqBXExecute(Sender: TObject);
    procedure AcChqPPExecute(Sender: TObject);
    procedure AcChqDVExecute(Sender: TObject);
    procedure AcChqDBExecute(Sender: TObject);


  private
    { Private declarations }
  public
     //procedure AbreFormulario(pClass: TComponentClass; pForm : TForm);
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;
  user : string;
  empresa   : integer;
  idUsuario : string;
  NM_empresa : string;
  FormH,FormW : Integer;

implementation

{$R *.dfm}

uses dm,  UFrmUsuarios, Unit1, UFrmEmpresa, UFrmFornecedor, UFrmCategoria,
  UFrmCep, uFrmLogin, UFrmRepresentante, UFrmFamProduto, UFrmGruProduto,
  UFrmMetaVen, uFrmLocalCobranca, UFrmUsuario, UFrmVendedor, UFrmGeneroItem,
  uFrmUnidadeProduto, UFrmEmbalagem, UFrmTransportadora, UFrmSetor,
  UFrmFuncionario, UFrmPais, UFrmUniFederativa, UFrmCidades, uFrmClientes,
  UFrmCFOP, UFrmAlicota, UFrmCest, UFrmNBM, uFrmCores, uFrmChqPdt,
  uFrmContasPagar, uFrmContasReceber, UFrmCadProduto, UFrmObsNTF,
  UFrmCadPlanoPagamento, UFrmCadRotas;

//procedure TFormPrincipal.AbreFormulario(pClass: TComponentClass; pForm: TForm);
//begin
//   try
//    Application.CreateForm(pClass, pForm);
//    pForm.ShowModal;
//  finally
//    FreeAndNil(pForm);
//  end;
//end;

procedure TFormPrincipal.AcCadRotasExecute(Sender: TObject);
begin
  try
   Application.CreateForm(TFormCadRotas,FormCadRotas);
   FormCadRotas.ShowModal;
  finally
   FreeAndNil(FormCadRotas);
  end;
end;

procedure TFormPrincipal.AcChqBXExecute(Sender: TObject);
begin
  try
  Application.CreateForm(TFormChqPdt, FormChqPdt);
  STCheque := 'BX';
  FormChqPdt.Caption := 'Cadastro de Cheques pré-datados baixados';
  FormChqPdt.ShowModal;
 finally
  FreeAndNil(FormChqPdt);
 end;

end;

procedure TFormPrincipal.AcChqDBExecute(Sender: TObject);
begin

 try
  Application.CreateForm(TFormChqPdt, FormChqPdt);
  STCheque := 'DB';
  FormChqPdt.Caption := 'Cadastro de Cheques pré-datados Devolvidos Baixados';
  FormChqPdt.ShowModal;
 finally
  FreeAndNil(FormChqPdt);
end;
end;

procedure TFormPrincipal.AcChqDVExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormChqPdt, FormChqPdt);
    STCheque := 'DV';
    FormChqPdt.Caption := 'Cheques pré-datados Devolvidos';
    FormChqPdt.ShowModal;
  finally
    FreeAndNil(FormChqPdt);
  end;
end;

procedure TFormPrincipal.AcChqPPExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormChqPdt, FormChqPdt);
    STCheque := 'PP';
    FormChqPdt.Caption := 'Cadastro de Cheques pré-datados pré devolvidos';
    FormChqPdt.ShowModal;
  finally
    FreeAndNil(FormChqPdt);
  end;
//  STCheque := 'PP';
//  FormChqPdt.Caption := 'Cadastro de Cheques pré-datados pré devolvidos';
//
//  AbreFormulario(TFormChqPdt, FormChqPdt);


end;

procedure TFormPrincipal.AcEmpresaExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormCadEmpresa, FormCadEmpresa);
  FormCadEmpresa.ShowModal;
 finally
  FormCadEmpresa.Free;
 end;
end;

procedure TFormPrincipal.AcObsNTFExecute(Sender: TObject);
 begin
  try
  Application.CreateForm(TFormObsNTF,FormObsNTF);
  FormObsNTF.ShowModal;
  finally
  FreeAndNil(FormObsNTF);
  end;
 end;

procedure TFormPrincipal.AcPLNPGTExecute(Sender: TObject);
begin
 try
 Application.CreateForm(TFormCadPlanoPagamento,FormCadPlanoPagamento);
 FormCadPlanoPagamento.ShowModal;
 finally
 FreeAndNil(FormCadPlanoPagamento);
 end;
end;

procedure TFormPrincipal.ActCadCategoriaExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFormCategoria,FormCategoria);
    FormCategoria.ShowModal;
  finally
    FreeAndNil(FormCategoria);
  end;
//  AbreFormulario(TFormCategoria, FormCategoria);
end;

procedure TFormPrincipal.ActCadCepExecute(Sender: TObject);
begin
  try
   Application.CreateForm(TFormCep, FormCep);
   FormCep.ShowModal;
  finally
   FreeAndNil(FormCep);
  end;
 // AbreFormulario(TFormCep, FormCep);
end;

procedure TFormPrincipal.ActCadClientesExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormClientes, FormClientes);
  FormClientes.ShowModal;
 finally
  FreeAndNil(FormClientes);
 end;
// AbreFormulario(TFormClientes, FormClientes);
end;

procedure TFormPrincipal.ActCadEmbalagemExecute(Sender: TObject);
begin
  try
   Application.Createform(TFormEmbalagem, FormEmbalagem);
   FormEmbalagem.ShowModal;
  finally
   FreeAndNil(FormEmbalagem);
  end;
//  AbreFormulario(TFormEmbalagem, FormEmbalagem);
end;

procedure TFormPrincipal.ActCadFornecedorExecute(Sender: TObject);
begin
  try
   Application.CreateForm(TFormFornecedor, FormFornecedor);
   FormFornecedor.ShowModal;
  finally
   FreeAndNil(FormFornecedor);
  end;
end;

procedure TFormPrincipal.ActCadFuncionarioExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormFuncionario, FormFuncionario);
  FormFuncionario.ShowModal;
 finally
  FreeAndNil(FormFuncionario);
 end;
end;

procedure TFormPrincipal.ActCadGenItemExecute(Sender: TObject);
begin
  try
  Application.Createform(TFormGeneroItem,FormGeneroItem);
  FormGeneroItem.ShowModal;
  finally
  FreeAndNil(FormGeneroItem);
  end;
//  AbreFormulario(TFormGeneroItem, FormGeneroItem);
end;

procedure TFormPrincipal.ActCadSetorExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormCadSetor, FormCadSetor);
  FormCadSetor.ShowModal;
 finally
  FreeAndNil(FormCadSetor);
 end;
end;

procedure TFormPrincipal.ActCadTransportadoraExecute(Sender: TObject);
begin
  try
   Application.CreateForm(TFormTransportadora, FormTransportadora);
   FormTransportadora.ShowModal;
  finally
   FreeAndNil(FormTransportadora);
  end;
end;

procedure TFormPrincipal.ActCadUsuariosExecute(Sender: TObject);
begin
  try
   Application.CreateForm(TFormUsuario, FormUsuario);
   FormUsuario.ShowModal;
  finally
   FreeAndNil(FormUsuario);
  end;
end;

procedure TFormPrincipal.ActCestExecute(Sender: TObject);
begin
  try
   Application.CreateForm(TFormCest, FormCest);
   FormCest.ShowModal;
  finally
   FreeAndNil(FormCest);
  end;
end;

procedure TFormPrincipal.ActCidadesExecute(Sender: TObject);
begin
  try
   Application.CreateForm(TFormCidades, FormCidades);
   FormCidades.ShowModal;
  finally
   FreeAndNil(FormCidades);
  end;
end;

procedure TFormPrincipal.ActContasPagarExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormContasPagar,FormContasPagar);
  FormContasPagar.ShowModal;
 finally
  FreeAndNil(FormContasPagar);
 end;
end;

procedure TFormPrincipal.ActContasReceberExecute(Sender: TObject);
begin
 try
   Application.CreateForm(TFormContasReceber,FormContasReceber);
   FormContasReceber.ShowModal;
 finally
   FreeAndNil(FormContasReceber);
 end;
//AbreFormulario(TFormContasReceber, FormContasReceber);
end;

procedure TFormPrincipal.ActCoresExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormCores,FormCores);
  FormCores.ShowModal;
 finally
  FreeAndNil(FormCores);
 end;
end;


procedure TFormPrincipal.ActLocalCobrancaExecute(Sender: TObject);
begin
  try
   Application.CreateForm(TFormLocalCobranca, FormLocalCobranca);
   FormLocalCobranca.ShowModal;
  finally
   FreeAndNil(FormLocalCobranca);
  end;
end;

procedure TFormPrincipal.ActPaisExecute(Sender: TObject);
begin
  try
   Application.CreateForm(TFormPaises, FormPaises);
   FormPaises.ShowModal;
  finally
   FreeAndNil(FormPaises);
  end;
end;

procedure TFormPrincipal.ActRepresentantesExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormRepresentante, FormRepresentante);
  FormRepresentante.ShowModal;
 finally
   FreeAndNil(FormRepresentante);
 end;
end;


procedure TFormPrincipal.ActUFederativaExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormUnidadeFederativa, FormUnidadeFederativa);
  FormUnidadeFederativa.ShowModal;
 finally
  FreeAndNil(FormUnidadeFederativa);
 end;
end;

procedure TFormPrincipal.Act_CFOPExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormCFOP, FormCFOP);
  FormCFOP.ShowModal;
 finally
  FreeAndNil(FormCFOP);
 end;
end;

procedure TFormPrincipal.Act_chqpdtAbertoExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormChqPdt, FormChqPdt);
  STCheque := 'PD';
  FormChqPdt.Caption := 'Cadastro de Cheques Pré-datados Abertos';
  FormChqPdt.ShowModal;
 finally
  FreeAndNil(FormChqPdt);
 end;
end;

procedure TFormPrincipal.Act_NBMExecute(Sender: TObject);
begin
 try
  Application.CreateForm(TFormNBM,FormNBM);
  FormNBM.ShowModal;
 finally
  FreeAndNil(FormNBM);
 end;
end;

procedure TFormPrincipal.AlquotadeICMS1Click(Sender: TObject);
begin
  try
   Application.CreateForm(TFormAliquota,FormAliquota);
   FormAliquota.ShowModal;
  finally
   FreeAndNil(FormAliquota);
end;

end;

procedure TFormPrincipal.ActCadUnidadeProdutoExecute(Sender: TObject);
begin
   try
    Application.CreateForm(TFormUnidadeProduto, FormUnidadeProduto);
    FormUnidadeProduto.ShowModal;
   finally
    freeandnil(FormUnidadeProduto);

   end;
end;

procedure TFormPrincipal.dxBarButton15Click(Sender: TObject);
begin
  FormCep.ShowModal;
end;

procedure TFormPrincipal.dxTileControl1Item3Click(Sender: TdxTileControlItem);
begin
  ActCadUsuarios.Execute;
end;

procedure TFormPrincipal.dxTileControl1Item6Click(Sender: TdxTileControlItem);
begin
ActCadFornecedor.Execute;
end;

procedure TFormPrincipal.dxTileControl_ContasPagarClick(
  Sender: TdxTileControlItem);
begin
 try
  Application.CreateForm(TFormContasPagar,FormContasPagar);
  FormContasPagar.ShowModal;
 finally
  FreeAndNil(FormContasPagar);
 end;
end;

procedure TFormPrincipal.FamliadeProdutos1Click(Sender: TObject);
begin
  try
   Application.CreateForm(TFormFamProduto,FormFamProduto);
   FormFamProduto.Showmodal;
  finally
   FreeandNil(FormFamProduto);
  end;
end;

procedure TFormPrincipal.FormPaint(Sender: TObject);
begin
//  Application.CreateForm(TFormLogin, FormLogin);
//  FormLogin.ShowModal;
end;

procedure TFormPrincipal.FormResize(Sender: TObject);
begin
 dxTileControl.Left  := (cxGroupBoxCentral.ClientWidth  div 2) - (dxTileControl.Width  div 2);
 dxTileControl.top   := (cxGroupBoxCentral.ClientHeight div 2) - (dxTileControl.Height div 2);
end;

procedure TFormPrincipal.FormShow(Sender: TObject);
begin
 Top := 0;
 Left := 0;
 Width := Screen.Width;
 Height := Screen.Height;

 StatusBarPrincipal.Panels[1].Text := 'Data: '+FormatDateTime('dddddd',now);
 dxTileControl.Left  := (cxGroupBoxCentral.ClientWidth  div 2) - (dxTileControl.Width  div 2);
 dxTileControl.top   := (cxGroupBoxCentral.ClientHeight div 2) - (dxTileControl.Height div 2);
 try
  Application.CreateForm(TFormLogin,FormLogin);
  FormLogin.ShowModal;
 finally
  FreeandNil(FormLogin);
 end;
end;


procedure TFormPrincipal.GrupodeMetasdeVendas1Click(Sender: TObject);
begin
  try
   Application.CreateForm(TFormMetaVenda, FormMetaVenda);
   FormMetaVenda.ShowModal;
  finally
   FreeandNil(FormMetaVenda);
  end;
end;

procedure TFormPrincipal.GrupodeProdutos1Click(Sender: TObject);
begin
  try
   Application.CreateForm(TFormGruProduto,FormGruProduto);
   FormGruProduto.Showmodal;
  finally
   FreeandNil(FormGruProduto);
  end;
end;

procedure TFormPrincipal.Produtos2Click(Sender: TObject);
begin
  try
  Application.CreateForm(TFormCadProduto,FormCadProduto);
  FormCadProduto.ShowModal;
  finally
  FreeAndNil(FormCadProduto);
  end;

end;

procedure TFormPrincipal.Vendedor2Click(Sender: TObject);
begin
  try
   Application.CreateForm(TFormVendedor,FormVendedor);
   FormVendedor.ShowModal;
  finally
   FreeandNil(FormVendedor);
  end;
end;

end.
