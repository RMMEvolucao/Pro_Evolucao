unit UFrmCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  IdThreadComponent, IdBaseComponent, Vcl.StdCtrls, Vcl.Mask, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinGlassOceans, dxSkinOffice2013White,
  dxSkinVisualStudio2013Light, cxTextEdit, cxDBEdit, dxSkinWhiteprint,
  dxSkinLiquidSky, dxSkinOffice2007Black, dxSkinOffice2013LightGray;

type
  TFormCep = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DbeditID: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    procedure IdThreadComponent1Run(Sender: TIdThreadComponent);
    procedure BtConsultarClick(Sender: TObject);
    procedure cbConsultaSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cepEmpresa(sender: TObject);
    procedure cepEmpresaContador(sender: TObject);
    procedure CepRepresentante(sender:TObject);
    procedure CepFornecedor(Sender:TObject);
    procedure cepVendedor(sender : TObject);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cepTransportadora(sender: TObject);
    procedure cepFuncionario(sender: TObject);
    procedure LimparConsulta;
    procedure AcGravarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cepClientes(sender: TObject);
    procedure cepcobClientes(sender: TObject);
    procedure cepav1Clientes(sender: TObject);
    procedure cepav2Clientes(sender: TObject);



  private


    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCep: TFormCep;

implementation

{$R *.dfm}

uses UDmCadastro, UFrmEmpresa, UFrmRepresentante, UFrmFornecedor, UFrmVendedor,
  UFrmTransportadora, UFrmFuncionario, uFrmClientes;

procedure TFormCep.AcGravarExecute(Sender: TObject);
begin
  inherited;
  LimparConsulta;


end;

procedure TFormCep.BtConsultarClick(Sender: TObject);
begin
   if (cbConsulta.ItemIndex = 0) and (Edconsulta.Text <> '') then {consulta por Numero CEP}
 begin
   DMcadastro.CDSCEP.Close;
   DMcadastro.SQLCEP.CommandText := '';
   DMcadastro.SQLCEP.CommandText := 'select first 200 * from DB_CEP where db_cep.no_cep =:PConsulta';
   DMcadastro.SQLCEP.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCEP.Open;
 end;

  if (cbConsulta.ItemIndex = 1) and (Edconsulta.Text <> '') then {consulta por rua}
 begin
   DMcadastro.CDSCEP.Close;
   DMcadastro.SQLCEP.CommandText := '';
   DMcadastro.SQLCEP.CommandText := 'select first 200 * from DB_CEP where db_cep.nm_rua  containing  :pConsulta  ';
   DMcadastro.SQLCEP.ParamByName('pconsulta').AsString := EdConsulta.Text;
   DMcadastro.CDSCEP.Open;
 end;

    if (cbConsulta.ItemIndex = 3) then {consulta 200 Ultimos registros }
 begin
   DMcadastro.CDSCEP.Close;
   DMcadastro.SQLCEP.CommandText := '';
   DMcadastro.SQLCEP.CommandText := 'select first 200 * from DB_CEP order by id desc ';
   DMcadastro.CDSCEP.Open;
 end;


  inherited;

end;

procedure TFormCep.btnConsultarClick(Sender: TObject);
begin
  inherited;
cbConsultaSelect(sender);
end;

procedure TFormCep.cbConsultaSelect(Sender: TObject);
begin
  inherited;
 case cbConsulta.ItemIndex of
 0:begin
   Edconsulta.Clear;
   Edconsulta.EditMask := '00000-000;1';
   end;
 1:begin
   Edconsulta.Clear;
   Edconsulta.EditMask := '';
   end;

 2:begin
   Edconsulta.Clear;
   Edconsulta.EditMask := '';
   end;

 end;


end;

procedure TFormCep.cepEmpresaContador(sender: TObject);
   begin
       DMcadastro.CDSEmpresa.FieldByName('ID_CEP_Contador').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
       DMcadastro.CDSEmpresa.FieldByName('NM_BAI_CON').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
       DMcadastro.CDSEmpresa.FieldByName('NM_RUA_CON').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
       DMcadastro.CDSEmpresa.FieldByName('NM_CID_CON').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
       DMcadastro.CDSEmpresa.FieldByName('UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
       DMcadastro.CDSEmpresa.FieldByName('NO_CEP_CON').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
       close;
   end;

procedure TFormCep.CepFornecedor(Sender: TObject);
begin
  DMcadastro.CDSFornecedor.FieldByName('ID_CEP').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
  DMcadastro.CDSFornecedor.FieldByName('NM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
  DMcadastro.CDSFornecedor.FieldByName('NM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
  DMcadastro.CDSFornecedor.FieldByName('NM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
  DMcadastro.CDSFornecedor.FieldByName('UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
  DMcadastro.CDSFornecedor.FieldByName('NO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
   close;
end;

procedure TFormCep.CepRepresentante(sender: TObject);
begin
  DMcadastro.CDSRepresentante.FieldByName('ID_CEP').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
  DMcadastro.CDSRepresentante.FieldByName('NM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
  DMcadastro.CDSRepresentante.FieldByName('NM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
  DMcadastro.CDSRepresentante.FieldByName('NM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
  DMcadastro.CDSRepresentante.FieldByName('UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
  DMcadastro.CDSRepresentante.FieldByName('NO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
   close;
end;

procedure TFormCep.cepVendedor(sender: TObject);  // verificar
begin
    DMcadastro.CDSVendedor.FieldByName('ID_CEP').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSVendedor.FieldByName('NM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSVendedor.FieldByName('NM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSVendedor.FieldByName('NM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSVendedor.FieldByName('UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSVendedor.FieldByName('NO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
    close;
end;

procedure TFormCep.cepEmpresa(sender: TObject);
begin
    DMcadastro.CDSEmpresa.FieldByName('ID_CEP').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSEmpresa.FieldByName('NM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSEmpresa.FieldByName('NM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSEmpresa.FieldByName('NM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSEmpresa.FieldByName('UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSEmpresa.FieldByName('NO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
    close;
 end;

procedure TFormCep.cepTransportadora(sender: TObject);
begin
    DMcadastro.CDSTransportadora.FieldByName('ID_CEP').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSTransportadora.FieldByName('NM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSTransportadora.FieldByName('NM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSTransportadora.FieldByName('NM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSTransportadora.FieldByName('UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSTransportadora.FieldByName('NO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
    close;
end;



procedure TFormCep.cepFuncionario(sender: TObject);
begin
    DMcadastro.CDSFuncionario.FieldByName('ID_CEP').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSFuncionario.FieldByName('NM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSFuncionario.FieldByName('NM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSFuncionario.FieldByName('NM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSFuncionario.FieldByName('UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSFuncionario.FieldByName('NO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
    close;
end;


procedure TFormCep.cepav1Clientes(sender: TObject);
begin
    DMcadastro.CDSClientes.FieldByName('ID_CEP_av1').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSClientes.FieldByName('av1NM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSClientes.FieldByName('av1NM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSClientes.FieldByName('av1NM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSClientes.FieldByName('av1UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSClientes.FieldByName('av1NO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
    close;
end;

procedure TFormCep.cepav2Clientes(sender: TObject);
begin
    DMcadastro.CDSClientes.FieldByName('ID_CEP_AV2').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSClientes.FieldByName('AV2NM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSClientes.FieldByName('AV2NM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSClientes.FieldByName('AV2NM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSClientes.FieldByName('AV2UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSClientes.FieldByName('AV2NO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
    close;
end;

procedure TFormCep.cepClientes(sender: TObject);  // cep cadastro
begin
    DMcadastro.CDSClientes.FieldByName('ID_CEP').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSClientes.FieldByName('NM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSClientes.FieldByName('NM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSClientes.FieldByName('NM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSClientes.FieldByName('UF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSClientes.FieldByName('NO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
    close;
end;



procedure TFormCep.cepcobClientes(sender: TObject); // cep cobrança
begin
    DMcadastro.CDSClientes.FieldByName('ID_CEP_COB').AsInteger := DSpadrao.DataSet.FieldByName('ID').AsInteger;
    DMcadastro.CDSClientes.FieldByName('cobNM_BAI').AsString  := DSpadrao.DataSet.FieldByName('NM_BAI').AsString;
    DMcadastro.CDSClientes.FieldByName('cobNM_RUA').AsString  := DSpadrao.DataSet.FieldByName('NM_RUA').AsString;
    DMcadastro.CDSClientes.FieldByName('cobNM_CID').AsString  := DSpadrao.DataSet.FieldByName('NM_CID').AsString;
    DMcadastro.CDSClientes.FieldByName('cobUF_CID').AsString  := DSpadrao.DataSet.FieldByName('UF_CID').AsString;
    DMcadastro.CDSClientes.FieldByName('cobNO_CEP').AsString  := DSpadrao.DataSet.FieldByName('NO_CEP').AsString;
    close;
end;

procedure TFormCep.DBGrid1DblClick(Sender: TObject);
begin

  if (FormCadEmpresa <> nil) and (FormCadEmpresa.PageControl2.ActivePage = FormCadEmpresa.TabDadosCadastro) then
    begin
    cepEmpresa(sender);
    exit;
    end;
  if (FormCadEmpresa <> nil) and (FormCadEmpresa.PageControl2.ActivePage =  FormCadEmpresa.TabContador) then
    begin
    cepEmpresaContador(sender);
    exit;
    end;
  if (FormRepresentante <> nil) and (FormRepresentante.PageControl2.ActivePage = FormRepresentante.TabSheet1) then
    begin
    CepRepresentante(sender);
    exit;
    end;
  if (FormFornecedor <> nil) then
    begin
    CepFornecedor(Sender);
    exit;
    end;
  if FormVendedor <> nil then
    begin
     cepVendedor(sender);
     exit;
    end;

  if FormTransportadora <> nil then
    begin
     cepTransportadora(sender);
     exit;
    end;

    if FormFuncionario <> nil then
    begin
     cepFuncionario(sender);
     exit;
    end;
    if (FormClientes <> nil) and (FormClientes.PageControl2.ActivePage = FormClientes.TabCadastro2) then
    begin
     cepClientes(sender);
     exit;
    end;
    if (FormClientes <> nil) and (FormClientes.PageControl2.ActivePage = FormClientes.tabEndCob) then
    begin
     cepcobClientes(sender);
     exit;
    end;
    if (FormClientes <> nil) and (FormClientes.PageControl2.ActivePage = FormClientes.TabAvalista1) then
    begin
     cepav1Clientes(sender);
     exit;
    end;
    if (FormClientes <> nil) and (FormClientes.PageControl2.ActivePage = FormClientes.TabAvalista2) then
    begin
     cepav2Clientes(sender);
     exit;
    end;



  inherited;
end;

procedure TFormCep.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = VK_DOWN) or (key = VK_UP) or (key = VK_LEFT)or (key = VK_RIGHT) then
   begin
     if DSpadrao.DataSet.Eof then
      begin
        DMcadastro.SQLCEP.CommandText:='select first 200 * from DB_CEP  where id >=:pID  order by id';
        DMcadastro.SQLCEP.ParamByName('pID').AsInteger :=  DSpadrao.DataSet.FieldByName('ID').AsInteger;
        DSpadrao.DataSet.Close;
        DSpadrao.DataSet.Open;
        exit;
      end;

   if DSpadrao.DataSet.RecNo = 1 then
     begin
      DMcadastro.SQLCEP.CommandText:='select first 200 * from DB_CEP  where id <=:pID  order by id';
      DMcadastro.SQLCEP.ParamByName('pID').AsInteger :=  DSpadrao.DataSet.FieldByName('ID').AsInteger;
      DSpadrao.DataSet.Close;
      DSpadrao.DataSet.Open;
      DSpadrao.DataSet.Last;
     end;
   end;
end;

procedure TFormCep.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 if (FormCadEmpresa <> nil) and (DSpadrao.DataSet.State in [dsBrowse]) then
     close else
  inherited;
  if FormFornecedor <> nil then
    begin
     FormFornecedor.Enabled :=  true;
     FormFornecedor.dxCalloutPopup1.Close;
     FormFornecedor.Img_fundo.Visible := false;
     FormFornecedor.Img_fundo.SendToBack;
    end;
end;

procedure TFormCep.FormKeyPress(Sender: TObject; var Key: Char);
begin

 if (Screen.ActiveControl.Name = DBGrid1.Name) and (key = #13)then
 begin
   if (FormCadEmpresa <> nil) and (FormCadEmpresa.PageControl2.ActivePage = FormCadEmpresa.TabDadosCadastro) then
    begin
    cepEmpresa(sender);
    exit;
    end;
  if (FormCadEmpresa <> nil) and (FormCadEmpresa.PageControl2.ActivePage =  FormCadEmpresa.TabContador) then
    begin
    cepEmpresaContador(sender);
    exit;
    end;
  if (FormRepresentante <> nil) and (FormRepresentante.PageControl2.ActivePage = FormRepresentante.TabSheet1) then
    begin
    CepRepresentante(sender);
    exit;
    end;
  if (FormFornecedor <> nil) then
    begin
    CepFornecedor(Sender);
    exit;
    end;
  if FormVendedor <> nil then
    begin
     cepVendedor(sender);
     exit;
    end;

  if FormTransportadora <> nil then
    begin
     cepTransportadora(sender);
     exit;
    end;

    if FormFuncionario <> nil then
    begin
     cepFuncionario(sender);
     exit;
    end;
   end;


  inherited;

end;

procedure TFormCep.FormShow(Sender: TObject);
begin
  inherited;
  cbConsulta.OnSelect(sender);
   if FormCadEmpresa <> nil then
   begin
   btnConsultarClick(sender);
   Edconsulta.SetFocus;
   end;

end;

procedure TFormCep.IdThreadComponent1Run(Sender: TIdThreadComponent);
begin
  inherited;
DSpadrao.DataSet.Open;
DSpadrao.Enabled := true;

end;

procedure TFormCep.LimparConsulta;
begin
  DMcadastro.SQLCEP.CommandText:='select first 200 * from DB_CEP  where id <=:pID  order by id desc';
  DMcadastro.SQLCEP.ParamByName('pID').AsInteger :=  DSpadrao.DataSet.FieldByName('ID').AsInteger;
  DSpadrao.DataSet.Close;
  DSpadrao.DataSet.Open;
end;

end.

