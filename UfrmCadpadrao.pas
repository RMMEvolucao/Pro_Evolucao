unit UfrmCadpadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, DBAccess, Uni, Vcl.Buttons,dbclient,
  Vcl.ExtCtrls, Data.FMTBcd, Data.SqlExpr, Vcl.StdCtrls, Vcl.Mask, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinGlassOceans, dxSkinOffice2013White, dxSkinWhiteprint, cxButtons,
  dxSkinLiquidSky, dxSkinOffice2007Black, dxSkinOffice2013LightGray, cxClasses,
  dxSkinsForm,StrUtils, Vcl.ToolWin,DateUtils;

type
TExemploThread = class(TThread)
private
{ Private declarations }
FCount: integer;
W,H,T,L : integer;
procedure atualizaForm;
protected
procedure Execute; override;
end;



type
  TFormCadPadrao = class(TForm)
    PageControl1: TPageControl;
    TabConsulta: TTabSheet;
    TabCadastro: TTabSheet;
    ImageList1: TImageList;
    ActionList1: TActionList;
    AcIncluir: TAction;
    AcEditar: TAction;
    AcDeletar: TAction;
    AcPesquisar: TAction;
    AcFechar: TAction;
    AcGravar: TAction;
    AcCancelar: TAction;
    DSpadrao: TDataSource;
    SP_GEN_PADRAO: TSQLStoredProc;
    PanelConsulta: TPanel;
    LbFiltro: TLabel;
    lbConsulta: TLabel;
    cbConsulta: TComboBox;
    BtConsultar: TButton;
    Edconsulta: TMaskEdit;
    AcImprimir: TAction;
    Panel1: TPanel;
    bbtnFechar: TSpeedButton;
    bbtnImprimir: TSpeedButton;
    bbtnExcluir: TSpeedButton;
    bbtnModificar: TSpeedButton;
    bbtnIncluir: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    bbtnConsultar: TSpeedButton;
    DBGrid1: TDBGrid;
    AcTeste: TAction;
    ToolBar1: TToolBar;
    btnFechar: TToolButton;
    btnIncluir: TToolButton;
    btnModificar: TToolButton;
    btnExcluir: TToolButton;
    btnImprimir: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    btnConsultar: TToolButton;
    ToolButton12: TToolButton;
    ToolBar2: TToolBar;
    btnGravar: TToolButton;
    btnCancelar: TToolButton;
    ToolButton16: TToolButton;
    cxImagePadrao: TcxImageList;
    LbH: TLabel;
    LbW: TLabel;
    procedure AcGravarExecute(Sender: TObject);
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
    procedure AcDeletarExecute(Sender: TObject);
    procedure AcFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AcCancelarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure bbtnConsultarClick(Sender: TObject);
    procedure BtConsultarClick(Sender: TObject);
    procedure AcPesquisarExecute(Sender: TObject);
    procedure AcImprimirExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    function TiraPonto(valor: string): string;
    procedure TabConsultaShow(Sender: TObject);
    procedure FormCadastro(sender : TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure AcTesteExecute(Sender: TObject);
    function Verifica_Campos_Em_Branco: Boolean;

  private
    procedure AjusteTabCadastro;


    { Private declarations }
  public
    { Public declarations }


  end;

var
  FormCadPadrao: TFormCadPadrao;

implementation

{$R *.dfm}

uses dm, UDmCadastro, UFrmPrincipal, uFrmLogin, UFuncoes;


function TFormCadPadrao.Verifica_Campos_Em_Branco: Boolean;
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

procedure TFormCadPadrao.AjusteTabCadastro;
begin
  Height := strtoint(LbH.Caption);
  Width := strtoint(LbW.Caption);
 //top := (Screen.DesktopHeight - Height) div 2;
 // Left := (Screen.DesktopWidth - Width) div 2;
end;



procedure TFormCadPadrao.AcCancelarExecute(Sender: TObject);
begin
   if Dspadrao.DataSet.State in [dsEdit,dsInsert]
     then
       begin
        TClientDataSet(DsPadrao.DataSet).CancelUpdates;
        PageControl1.ActivePage := TabConsulta;
        //DSpadrao.DataSet.Close;
       end;
end;



procedure TFormCadPadrao.AcDeletarExecute(Sender: TObject);
begin
    if not DSpadrao.DataSet.IsEmpty then

 if MessageDlg('Deseja mesmo deletar o registro ??', mtConfirmation,[mbYes, mbNo], 0) = mrYes
    then
     begin
       DsPadrao.DataSet.Delete;
       if dsPadrao.DataSet is TClientDataSet then
       TClientDataSet(dsPadrao.DataSet).ApplyUpdates(0);
       PageControl1.ActivePage := TabConsulta;
     end;
end;

procedure TFormCadPadrao.AcEditarExecute(Sender: TObject);
begin
 if (dsPadrao.DataSet.State in[dsBrowse]) and (not Dspadrao.DataSet.IsEmpty)
  then  begin
       dsPadrao.DataSet.Edit;
       PageControl1.ActivePage := TabCadastro;
       end else
          begin
            ShowMessage('Não Existe Registro para ser Editado.');
            Abort;
          end;
end;

procedure TFormCadPadrao.AcFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TFormCadPadrao.AcGravarExecute(Sender: TObject);
begin
  if dsPadrao.DataSet.State in [dsEdit,dsInsert]
  then begin
       DSpadrao.DataSet.FieldByName('CD_USU').AsString := idUsuario+ ' ' +  user +' '+ DateTimeToStr(now) ;
       dsPadrao.DataSet.Post;
       TClientDataSet(DSpadrao.DataSet).ApplyUpdates(0);
       PageControl1.ActivePage := TabConsulta;
       end else
           begin
              ShowMessage('Favor confirmar ou Cancelar o registro');
              Abort;
           end;
end;

procedure TFormCadPadrao.AcImprimirExecute(Sender: TObject);
begin
;
end;

procedure TFormCadPadrao.AcIncluirExecute(Sender: TObject);
var Vid: integer;
begin
    DsPadrao.DataSet.Open;
 if dsPadrao.DataSet.State in[dsBrowse]
  then begin
         WITH SP_GEN_PADRAO do
          begin
           Prepared := true;
           ExecProc;
           Prepared := false;
           Vid := ParamByName('ID').AsInteger;
           close;
          end;
       dsPadrao.DataSet.Insert;
       Dspadrao.DataSet.FieldByName('ID').AsInteger := Vid;
       PageControl1.ActivePage := TabCadastro;
       end else
          begin
            ShowMessage('Favor confirmar ou Cancelar o registro');
            Abort;
          end;
end;

procedure TFormCadPadrao.AcPesquisarExecute(Sender: TObject);
begin
if PanelConsulta.Visible = false then
   begin
   PanelConsulta.Visible := true;
   end else
   PanelConsulta.Visible := false;
end;

procedure TFormCadPadrao.AcTesteExecute(Sender: TObject);
begin
;
end;

procedure TFormCadPadrao.BtConsultarClick(Sender: TObject);
begin
PanelConsulta.Visible := false;
end;

procedure TFormCadPadrao.bbtnConsultarClick(Sender: TObject);
begin
if PanelConsulta.Visible = false then
PanelConsulta.Visible := true
else
PanelConsulta.Visible := false
end;

procedure TFormCadPadrao.DBGrid1DblClick(Sender: TObject);
begin
btnModificar.OnClick(sender);
end;

procedure TFormCadPadrao.FormCadastro(sender: TObject);

begin
// FormH := Height;
// FormW := Width;
end;

procedure TFormCadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if dsPadrao.DataSet.State in [dsBrowse,dsInactive]
  then
   begin
   dsPadrao.DataSet.Close;
   FormCadastro(sender);
   end else
       begin
        ShowMessage('Favor Cancelar ou gravar o registro antes de sair !!');
        abort;
       end;
   end;

procedure TFormCadPadrao.FormCreate(Sender: TObject);
begin
LbH.Caption := inttostr(Height);
LbW.Caption := inttostr(Width);


FormCadastro(sender);
PageControl1.ActivePage := TabConsulta;
end;

procedure TFormCadPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and (screen.ActiveControl.Name = DBGrid1.Name) then
  begin
  key := #0;
  btnModificar.OnClick(sender);
  exit;
  end;


 if key = #13 then
 begin
   key := #0;
   PostMessage(handle, WM_KEYDOWN, VK_TAB, 1);
 end;
end;

procedure TFormCadPadrao.FormShow(Sender: TObject);
begin
DSpadrao.DataSet.DisableControls;
dsPadrao.DataSet.open;
DSpadrao.DataSet.EnableControls;
TabCadastro.TabVisible  :=  false;
TabConsulta.TabVisible  :=  false;
PageControl1.ActivePage :=  TabConsulta;

//PanelConsulta.Visible   :=  true;
end;

procedure TFormCadPadrao.TabCadastroShow(Sender: TObject);
begin
 //   Thread := TThread.CreateAnonymousThread(true);
//   Thread.Priority := tpHighest;
//   Thread.Start;

 Height := strtoint(LbH.Caption);
 Width := strtoint(LbW.Caption);
 top  := (Screen.DesktopHeight - Height) div 2;
 Left := (Screen.DesktopWidth - Width)   div 2;

end;

procedure TFormCadPadrao.TabConsultaShow(Sender: TObject);
begin
// mudar o tamanho da tela
 Width   :=  round(Screen.Width  - 30);
 Height  :=  round(Screen.Height - 70);
 Top     := (Screen.DesktopHeight - Height) DIV 2;
 Left    := (Screen.DesktopWidth  - Width)  DIV 2;
end;

function TFormCadPadrao.TiraPonto(valor: string): string;
var i: integer;
begin
    if valor <> '' then
   for i := 0 to Length(valor) do
     begin
     if valor[i]='.' then
        begin
        delete(valor,i,1);
        end
       end;
    Result := valor;
end;

{ TAjustFormThread }




{ TExemploThread }

procedure TExemploThread.atualizaForm;
begin

end;

procedure TExemploThread.Execute;
begin
  inherited;

end;

end.
