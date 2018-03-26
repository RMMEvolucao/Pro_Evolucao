unit UFrmCadRotas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Vcl.DBCtrls, Vcl.StdCtrls, Data.SqlExpr, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls, Datasnap.DBClient;

type
  TFormCadRotas = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit_ID: TDBEdit;
    DBEdit_NM_ROT: TDBEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    CB_VEN: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    CB_CTG: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    DsVenRota: TDataSource;
    DsVendedor: TDataSource;
    DsCtg: TDataSource;
    GB_controle: TGroupBox;
    cdsCidades: TClientDataSet;
    CB_UF: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    cdsCidadesid: TIntegerField;
    cdsCidadesnm_cid: TStringField;
    cdsCidadesuf_cid: TStringField;
    DsCidades: TDataSource;
    CB_CIDADES: TDBComboBox;
    BtIncluir: TButton;
    BtGravar: TButton;
    BtCancelar: TButton;
    BtExcluir: TButton;
    procedure CB_UFSelect(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabConsultaShow(Sender: TObject);
    procedure TabCadastroShow(Sender: TObject);
    procedure ControleBtnVenRotas(Sender: TObject);
    procedure BtIncluirClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtExcluirClick(Sender: TObject);
    procedure CB_CIDADESExit(Sender: TObject);
    procedure alimentaParRotas;
    procedure AcIncluirExecute(Sender: TObject);
    procedure AcEditarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadRotas: TFormCadRotas;

implementation

{$R *.dfm}

uses UDmCadastro;

procedure TFormCadRotas.AcEditarExecute(Sender: TObject);
begin
  inherited;
alimentaParRotas;
ControleBtnVenRotas(sender);
end;

procedure TFormCadRotas.AcIncluirExecute(Sender: TObject);
begin
  inherited;
alimentaParRotas;
ControleBtnVenRotas(sender);
end;

procedure TFormCadRotas.alimentaParRotas;
begin
 DMcadastro.CDSVenRotas.Close;
 DMcadastro.SQLVenRotas.ParamByName('pidRotas').AsInteger := DMcadastro.CDSRotasID.AsInteger;
 DMcadastro.CDSVenRotas.Open;

end;

procedure TFormCadRotas.BtCancelarClick(Sender: TObject);
begin
  inherited;
  if DsVenRota.DataSet.State in [dsEdit,dsInsert] then
  begin
   DMcadastro.CDSVenRotas.CancelUpdates;
   ControleBtnVenRotas(sender);
   DsVenRota.DataSet.Refresh;
  end;
end;

procedure TFormCadRotas.BtExcluirClick(Sender: TObject);
begin
  inherited;
if (DsVenRota.DataSet.State in [dsBrowse]) and (DsVenRota.DataSet.IsEmpty = false) then
   begin
   if Application.MessageBox('Deseja realmente excluir o registro ? ','Excluir Registro',MB_YESNO) = IDYES then
     begin
      DMcadastro.CDSVenRotas.Delete;
     end;
   end;
end;

procedure TFormCadRotas.BtGravarClick(Sender: TObject);
begin
  inherited;
if DsVenRota.DataSet.State in [dsEdit,dsInsert] then
  begin
   DMcadastro.CDSVenRotas.ApplyUpdates(0);
   ControleBtnVenRotas(sender);
   DsVenRota.DataSet.Refresh;
  end;
end;

procedure TFormCadRotas.BtIncluirClick(Sender: TObject);
begin
  inherited;
  if DsVenRota.DataSet.State in [dsBrowse] then
  begin
  DsVenRota.DataSet.Insert;
  ControleBtnVenRotas(sender);
  end;

end;

procedure TFormCadRotas.CB_CIDADESExit(Sender: TObject);
begin
  inherited;
// ShowMessage(DsCidades.DataSet.FieldByName('id').AsString + ' ' + DsCidades.DataSet.FieldByName('nm_cid').AsString + ' ' + DsCidades.DataSet.FieldByName('UF_cid').AsString );
end;

procedure TFormCadRotas.CB_UFSelect(Sender: TObject);
var q : tsqlquery;
begin
  inherited;
   CB_Cidades.Clear;
   q :=  TSQLQuery.Create(nil);
   q.SQLConnection := DMcadastro.SQLConnection1;
   q.SQL.Clear;
   q.SQL.Add('select db_cidades.id,db_cidades.nm_cid,db_cidades.uf_cid '+
             'from db_cidades where db_cidades.uf_cid =:pUF ');

   q.ParamByName('pUF').AsString := CB_UF.Text;
   q.Open;

     if q.IsEmpty =  false then
    begin
      cdsCidades.Close;
      cdsCidades.CreateDataSet;
      cdsCidades.Open;
      try
       while not q.Eof do
        begin
        cdsCidades.Append;
        cdsCidadesid.AsInteger    :=  q.FieldByName('id').AsInteger;
        cdsCidadesnm_cid.AsString :=  q.FieldByName('nm_cid').AsString;
        cdsCidadesuf_cid.AsString :=  q.FieldByName('uf_cid').AsString;
        CB_CIDADES.Items.Add(q.FieldByName('nm_cid').AsString);
        cdsCidades.Post;
        q.Next;
        end;

      finally
       q.Free;
      end;
    end;
end;

procedure TFormCadRotas.ControleBtnVenRotas(Sender: TObject);
begin
  inherited;

  if DsVenRota.DataSet.State in [dsBrowse] then
    begin
     BtIncluir.Enabled   := true;
     BtExcluir.Enabled   := true;
     BtGravar.Enabled    := false;
     BtCancelar.Enabled  := false;
     GB_controle.Enabled := false;
    end;

    if DsVenRota.DataSet.State in [dsInsert,dsEdit] then
    begin
     BtIncluir.Enabled   := false;
     BtExcluir.Enabled   := false;
     BtGravar.Enabled    := true;
     BtCancelar.Enabled  := true;
     GB_controle.Enabled := true;
    end;

end;

procedure TFormCadRotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 DsVenRota.DataSet.close;
 DsVendedor.DataSet.close;
 DsCtg.DataSet.close;
end;

procedure TFormCadRotas.FormShow(Sender: TObject);
begin
  inherited;
// DsVenRota.DataSet.Open;
 DsVendedor.DataSet.Open;
 DsCtg.DataSet.Open;
end;

procedure TFormCadRotas.TabCadastroShow(Sender: TObject);
begin
  inherited;
 FormCadRotas.Width  :=  580;
 FormCadRotas.Height :=  867;
 FormCadRotas.Top    :=  (Screen.DesktopHeight - FormCadRotas.Height) DIV 2;
 FormCadRotas.Left   :=  (Screen.DesktopWidth  - FormCadRotas.Width)  DIV 2;
 ControleBtnVenRotas(sender);
end;

procedure TFormCadRotas.TabConsultaShow(Sender: TObject);
begin
  inherited;
 FormCadRotas.Width  :=  round(Screen.Width  - 30);
 FormCadRotas.Height :=  round(Screen.Height - 70);
 FormCadRotas.Top    :=  (Screen.DesktopHeight - FormCadRotas.Height) DIV 2;
 FormCadRotas.Left   :=  (Screen.DesktopWidth  - FormCadRotas.Width)  DIV 2;

end;

end.
