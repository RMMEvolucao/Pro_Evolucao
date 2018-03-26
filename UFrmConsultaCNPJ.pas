unit UFrmConsultaCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase, ACBrDFe, ACBrNFe, Vcl.Mask,
  Vcl.StdCtrls, Vcl.ExtCtrls,DBXJSON, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope,sqlexpr;


type
  TFormConsultaCNPJ = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EditTipo: TEdit;
    EditRazaoSocial: TEdit;
    EditAbertura: TEdit;
    EditEndereco: TEdit;
    EditNumero: TEdit;
    EditComplemento: TEdit;
    EditBairro: TEdit;
    EditCidade: TEdit;
    EditUF: TEdit;
    EditCEP: TEdit;
    EditSituacao: TEdit;
    EditFantasia: TEdit;
    ListCNAE2: TListBox;
    EditCNAE1: TEdit;
    EditEmail: TEdit;
    EditTelefone: TEdit;
    EditCNPJ: TMaskEdit;
    ACBrNFe1: TACBrNFe;
    IdHTTP1: TIdHTTP;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure FormShow(Sender: TObject);
    procedure alimentaCNPJ;
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaCNPJ: TFormConsultaCNPJ;

implementation

uses rest.types,system.json, uFrmClientes, UFrmFornecedor, System.AnsiStrings,
  UDmCadastro;

{$R *.dfm}





procedure TFormConsultaCNPJ.alimentaCNPJ;
var cnpj      : string;
    objeto    : TJSONObject;
    parRows   : TJSONPair;
    ArrayRows : TJSONArray;
    ObjeRown  : TJSONObject;
    cont,I : integer;
    ArrayElemento :TJSONArray;
    objElemento : TJSONObject;
    objArray : TJSONArray;
    q : tsqlquery;
    cep: string;
    contsql : integer;
begin

   try

     if FormClientes   <> nil then
     begin
     cnpj := FormClientes.DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString;
     q := TSQLQuery.Create(nil);
     q.SQLConnection := DMcadastro.SQLConnection1;
     q.SQL.Clear;
     q.SQL.Add('SELECT db_cliente.id, db_cliente.nm_cli, Count(*) FROM db_cliente where db_cliente.no_cnp_cpf =:pCPF group by id,nm_cli');
     q.ParamByName('pCPF').AsString := cnpj;
     q.Open;

      if (q.FieldByName('count').AsInteger >= 1) and (q.FieldByName('id').AsInteger <> FormClientes.DSpadrao.DataSet.FieldByName('ID').AsInteger) then
      begin
      ShowMessage('CPF/CNPJ ja cadastrado no cliente, código: '+q.FieldByName('id').AsString +' Nome: '+ q.FieldByName('nm_cli').AsString + ' !!! ');
      PostMessage(FormConsultaCNPJ.Handle, WM_CLOSE, 0, 0);
      FormClientes.DBEdit_NO_CNP_CPF.Clear;
      FormClientes.DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString := '';
      FormClientes.DBEdit_NO_CNP_CPF.SetFocus;
      abort;
      end;

    end;
    finally
      if q <> nil then
          FreeAndNil(q);
    end;


   try
   if FormFornecedor <> nil then
     begin
     cnpj := FormFornecedor.DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString;
     q := TSQLQuery.Create(nil);
     q.SQLConnection := DMcadastro.SQLConnection1;
     q.SQL.Clear;
     q.SQL.Add('SELECT db_fornecedor.id, db_fornecedor.nm_for, Count(*) FROM db_fornecedor where db_fornecedor.no_cnp_cpf =:pCPF group by id,nm_for');
     q.ParamByName('pCPF').AsString := cnpj;
     q.Open;

      if (q.FieldByName('count').AsInteger >= 1) and (q.FieldByName('id').AsInteger <> FormFornecedor.DSpadrao.DataSet.FieldByName('ID').AsInteger) then
      begin
      ShowMessage('CPF/CNPJ ja cadastrado no fornecedor, código: '+q.FieldByName('id').AsString +' Nome: '+ q.FieldByName('nm_for').AsString + ' !!! ');
      FormFornecedor.DBEdit_NO_CNP_CPF.SetFocus;
      FormFornecedor.DSpadrao.DataSet.FieldByName('NO_CNP_CPF').AsString := '';
      PostMessage(FormConsultaCNPJ.Handle, WM_CLOSE, 0, 0);
      //FormFornecedor.DBEdit_NO_CNP_CPF.Clear;
      abort;
      end;
     end;
   finally
     if q <> nil then
        FreeAndNil(q);
   end;

RESTClient1.BaseURL := 'https://www.receitaws.com.br/v1/cnpj/'+cnpj;
RESTRequest1.Execute;

//ShowMessage( RESTResponse1.JSONText);

objeto :=  RESTResponse1.JSONValue as TJSONObject;

EditRazaoSocial.Text := objeto.GetValue('nome').Value;
EditEndereco.Text    := objeto.GetValue('logradouro').Value;
EditNumero.Text      := objeto.GetValue('numero').Value;
EditCEP.Text         := objeto.GetValue('cep').Value;
EditFantasia.Text    := objeto.GetValue('fantasia').Value;
EditCidade.Text      := objeto.GetValue('municipio').Value;
EditComplemento.Text := objeto.GetValue('complemento').Value;
EditTelefone.Text    := objeto.GetValue('telefone').Value;
EditBairro.Text      := objeto.GetValue('bairro').Value;
EditSituacao.Text    := objeto.GetValue('situacao').Value;
EditTipo.Text        := objeto.GetValue('tipo').Value;
EditAbertura.Text    := objeto.GetValue('abertura').Value;
EditCNPJ.Text        := objeto.GetValue('cnpj').Value;
EditEmail.Text       := objeto.GetValue('email').Value;
EditUF.Text          := objeto.GetValue('uf').Value;


if FormClientes <> nil then
 begin
  FormClientes.DSpadrao.DataSet.FieldByName('NM_CLI').AsString   := objeto.GetValue('nome').Value;
  FormClientes.DSpadrao.DataSet.FieldByName('NM_FAN').AsString   := objeto.GetValue('fantasia').Value;
  FormClientes.DSpadrao.DataSet.FieldByName('NO_EDR').AsString   := objeto.Getvalue('numero').Value;
  FormClientes.DSpadrao.DataSet.FieldByName('DS_CPL').AsString   := objeto.GetValue('complemento').Value;
  FormClientes.DSpadrao.DataSet.FieldByName('DT_ABT').AsDateTime := strtodate(objeto.GetValue('abertura').Value);


  q :=  TSQLQuery.Create(nil);  // consulta do cep do cliente
  q.SQLConnection := DMcadastro.SQLConnection1;
  q.SQL.Clear;

  q.SQL.Add('select count(*) as contador  from db_cep where db_cep.no_cep =:pCEp'); {sql para contar a quantidade de registro};
  cep := ansireplacestr(objeto.GetValue('cep').Value,'.','');
  q.ParamByName('pCEP').AsString := cep;
  q.Open;
  contsql := q.FieldByName('contador').AsInteger;

  if q.FieldByName('contador').AsInteger = 1 then
     begin
      q.SQL.Clear;
      q.SQL.Add('select * from db_cep where db_cep.no_cep =:pCEp');
      cep := ansireplacestr(objeto.GetValue('cep').Value,'.','');
      q.ParamByName('pCEP').AsString := cep;
      q.Open;
      DMcadastro.CDSClientes.FieldByName('ID_CEP').AsInteger := q.FieldByName('ID').AsInteger;
      DMcadastro.CDSClientes.FieldByName('NM_BAI').AsString  := q.FieldByName('NM_BAI').AsString;
      DMcadastro.CDSClientes.FieldByName('NM_RUA').AsString  := q.FieldByName('NM_RUA').AsString;
      DMcadastro.CDSClientes.FieldByName('NM_CID').AsString  := q.FieldByName('NM_CID').AsString;
      DMcadastro.CDSClientes.FieldByName('UF_CID').AsString  := q.FieldByName('UF_CID').AsString;
      DMcadastro.CDSClientes.FieldByName('NO_CEP').AsString  := q.FieldByName('NO_CEP').AsString;
     end;
     if contsql > 1 then
     begin
      ShowMessage('Existe mais de um endereço cadastrado com esse cep ...'+#13+'Favor cadastrar endereço manualmente !!!');
     end;
     q.Free;
 end;

 if FormFornecedor <> nil then
 begin
  FormFornecedor.DSpadrao.DataSet.FieldByName('NM_FOR').AsString   := objeto.GetValue('nome').Value;
  FormFornecedor.DSpadrao.DataSet.FieldByName('NM_FAN').AsString   := objeto.GetValue('fantasia').Value;
  FormFornecedor.DSpadrao.DataSet.FieldByName('NO_EDR').AsString   := objeto.Getvalue('numero').Value;
  FormFornecedor.DSpadrao.DataSet.FieldByName('DS_CPL').AsString   := objeto.GetValue('complemento').Value;
//  FormFornecedor.DSpadrao.DataSet.FieldByName('DT_ABT').AsDateTime := strtodate(objeto.GetValue('abertura').Value);


  q :=  TSQLQuery.Create(nil);  // consulta do cep do cliente
  q.SQLConnection := DMcadastro.SQLConnection1;
  q.SQL.Clear;

  q.SQL.Add('select count(*) as contador  from db_cep where db_cep.no_cep =:pCEp'); {sql para contar a quantidade de registro};
  cep := ansireplacestr(objeto.GetValue('cep').Value,'.','');
  q.ParamByName('pCEP').AsString := cep;
  q.Open;
  contsql := q.FieldByName('contador').AsInteger;

  if q.FieldByName('contador').AsInteger = 1 then
     begin
      q.SQL.Clear;
      q.SQL.Add('select * from db_cep where db_cep.no_cep =:pCEp');
      cep := ansireplacestr(objeto.GetValue('cep').Value,'.','');
      q.ParamByName('pCEP').AsString := cep;
      q.Open;
      DMcadastro.CDSFornecedor.FieldByName('ID_CEP').AsInteger := q.FieldByName('ID').AsInteger;
      DMcadastro.CDSFornecedor.FieldByName('NM_BAI').AsString  := q.FieldByName('NM_BAI').AsString;
      DMcadastro.CDSFornecedor.FieldByName('NM_RUA').AsString  := q.FieldByName('NM_RUA').AsString;
      DMcadastro.CDSFornecedor.FieldByName('NM_CID').AsString  := q.FieldByName('NM_CID').AsString;
      DMcadastro.CDSFornecedor.FieldByName('UF_CID').AsString  := q.FieldByName('UF_CID').AsString;
      DMcadastro.CDSFornecedor.FieldByName('NO_CEP').AsString  := q.FieldByName('NO_CEP').AsString;
     end;
     if contsql > 1 then
     begin
      ShowMessage('Existe mais de um endereço cadastrado com esse cep ...'+#13+'Favor cadastrar endereço manualmente !!!');
     end;
     q.Free;
 end;


try

parRows := objeto.Get('atividades_secundarias');

ArrayRows := parRows.JsonValue as TJSONArray;

cont := ArrayRows.Count;

     for I := 0 to cont-1 do
      begin
         objElemento := ArrayRows.Items[I] as TJSONObject;
         ListCNAE2.Items.Add(objElemento.GetValue('code').Value + '  ' + objElemento.GetValue('text').Value);

      end;

parRows := objeto.Get('atividade_principal');
ArrayRows := parRows.JsonValue as TJSONArray;
cont := ArrayRows.Count;

     for I := 0 to cont-1 do
      begin
         objElemento := ArrayRows.Items[I] as TJSONObject;
         EditCNAE1.Text := objElemento.GetValue('code').Value + '  ' + objElemento.GetValue('text').Value;
      end;

except
ShowMessage('ocorreu um erro, fecha e abre novamente a consulta');
end;
end;

procedure TFormConsultaCNPJ.FormCreate(Sender: TObject);
begin
DeleteMenu(GetSystemMenu(Handle,False),SC_MOVE,MF_BYCOMMAND);DeleteMenu(GetSystemMenu(Handle,False),SC_MAXIMIZE,MF_BYCOMMAND);
end;

procedure TFormConsultaCNPJ.FormShow(Sender: TObject);
begin
alimentaCNPJ;
end;

end.
