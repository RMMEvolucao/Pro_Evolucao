unit uFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, UniProvider, MySQLUniProvider, Data.DB, DBAccess, Uni,
  MemDS, Vcl.StdCtrls, dxGDIPlusClasses, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, dxSkinVisualStudio2013Light, cxGroupBox,
  dxSkinGlassOceans, SQLExpr, Vcl.DBCtrls, dxSkinWhiteprint, dxSkinLiquidSky,
  dxSkinOffice2007Black, dxSkinOffice2013LightGray;

type
  TFormLogin = class(TForm)
    cxGroupBox1: TcxGroupBox;
    EditSenha: TEdit;
    btnConfirma: TButton;
    EditUsuario: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    bntCancelar: TButton;
    Image1: TImage;
    DS_Empresa: TDataSource;
    DS_Usuario: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bntCancelarClick(Sender: TObject);
  private
    { Private declarations }
    Vezes_Login : integer;
  public
    { Public declarations }

  end;

var
  FormLogin: TFormLogin;

implementation

{$R *.dfm}

uses UFrmPrincipal, UDmCadastro;

procedure TFormLogin.btnConfirmaClick(Sender: TObject);
var Query : TSQLQuery;
begin

  Query := TSQLQuery.Create(nil);
  Query.SQLConnection := DMCadastro.SQLConnection1;
  Query.SQL.Clear;
  Query.SQL.Add('select * from DB_USUARIO where NM_USU=:PUsuario and DS_SNH=:PSenha and ID_Empresa =:PEmpresa');
  Query.ParamByName('PUsuario').AsString := EditUSuario.Text;
  Query.ParamByName('PSenha').AsString := EditSenha.Text;
  Query.ParamByName('PEmpresa').AsInteger := DS_Usuario.DataSet.FieldByName('ID_EMPRESA').AsInteger;
  Query.Open;

  if Query.IsEmpty then
  begin
  showmessage('Você deve informar o nome do usuário para prosseguir!');
    inc(Vezes_Login);
    if Vezes_Login > 2 then begin
      showmessage('Foi ultrapassado 3 tentativas de login'+chr(13)+chr(13)+
                  'Sistema será abortado !!');
      Application.Terminate;
    end;
  end
  Else begin
    idUsuario  :=  Format('%.3d', [query.FieldByName('ID').AsInteger]);
    user       :=  query.FieldByName('NM_USU').AsString;
    empresa    :=  query.FieldByName('ID_EMPresa').AsInteger;
    NM_empresa :=  DBLookupComboBox1.Text;

    // FormLogin.Hide;
   //     Application.CreateForm(TFormPrincipal, FormPrincipal);
  //    FormPrincipal.ShowModal;

    close;
    FormLogin.Close;
    FormPrincipal.StatusBarPrincipal.Panels[2].Text := 'Usuário Logado: '+user+' ('+idUsuario+')';
    FormPrincipal.StatusBarPrincipal.Panels[3].Text := 'Empresa: '+DBLookupComboBox1.Text;
   // FormLogin.Free;
    query.Destroy;
  end;
end;

procedure TFormLogin.bntCancelarClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TFormLogin.FormShow(Sender: TObject);
begin
DS_Empresa.DataSet.Open;
DS_Usuario.DataSet.Open;
ds_usuario.DataSet.First;    // apagar depois
EditUsuario.Text :=   DMcadastro.CDSUsuariosNM_USU.AsString;
EditSenha.Text   :=   DMcadastro.CDSUsuariosDS_SNH.AsString;


end;

end.
