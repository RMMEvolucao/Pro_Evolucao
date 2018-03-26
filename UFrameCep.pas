unit UFrameCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Mask, Vcl.StdCtrls,
  Vcl.DBCtrls, Data.DB, Datasnap.DBClient,sqlexpr;

type
  TFrameCep = class(TFrame)
    CDS_CEP: TClientDataSet;
    DSCEP: TDataSource;
    CDS_CEPID_CEP: TIntegerField;
    CDS_CEPNM_RUA: TStringField;
    CDS_CEPNM_BAI: TStringField;
    CDS_CEPNM_CID: TStringField;
    CDS_CEPUF_CID: TStringField;
    Label2: TLabel;
    DbEditEndereco: TDBEdit;
    Label3: TLabel;
    DbeditBairro: TDBEdit;
    Label4: TLabel;
    DbeditCidade: TDBEdit;
    Label5: TLabel;
    DbeditUF: TDBEdit;
    EditCep: TMaskEdit;
    Label1: TLabel;
    DsPadraoCep: TDataSource;
    LbcepInformacao: TLabel;
    procedure EditCepExit(Sender: TObject);
    procedure EditCepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditCepEnter(Sender: TObject);
  private
    { Private declarations }
  public
     procedure  CepCadastro(sender: TObject);


    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UDmCadastro;


procedure TFrameCep.CepCadastro(sender: TObject);
var query : TSQLQuery;
begin
    if EditCep.text <> '     -   ' then
     begin
     DsPadraoCep.DataSet.FieldByName('ID_CEP').AsInteger := 0;
     query :=  TSQLQuery.Create(nil);
     query.SQLConnection := DMcadastro.SQLConnection1;
     query.SQL.Clear;
     query.SQL.Add('select * from db_cep where no_cep =:PCEP');
     query.ParamByName('PCEP').AsString := EditCep.Text;
     query.open;
     query.First;
     CDS_CEP.Close;
     CDS_CEP.CreateDataSet;
     CDS_CEP.Open;

         while not query.Eof do
         begin
           CDS_CEP.insert;
           CDS_CEPID_CEP.AsInteger := query.FieldByName('ID').AsInteger;    // cep
           CDS_CEPUF_CID.AsString  := query.FieldByName('UF_CID').AsString; // UF
           CDS_CEPNM_BAI.AsString  := query.FieldByName('NM_BAI').AsString; // Bairro
           CDS_CEPNM_CID.AsString  := query.FieldByName('NM_CID').AsString; // Cidade
           CDS_CEPNM_RUA.AsString  := query.FieldByName('NM_RUA').AsString; // Rua, ou End..
           CDS_CEP.Post;
           query.Next
         end;

//       if CDS_CEP.RecordCount >1 then
//       begin
//         PanelCEP.Visible := true;
//         PanelCEP.Enabled := True;
//         PanelCEP.BringToFront;
//       end;

       if CDS_CEP.RecordCount =1 then
       begin
          DsPadraoCep.DataSet.FieldByName('ID_CEP').AsInteger := CDS_CEPID_CEP.AsInteger;
       end;

       end;

    end;




procedure TFrameCep.EditCepEnter(Sender: TObject);
begin
LbcepInformacao.Visible := true;
end;

procedure TFrameCep.EditCepExit(Sender: TObject);
begin
//CepCadastro(sender);
LbcepInformacao.Visible := false;
end;

procedure TFrameCep.EditCepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key =  VK_F3) AND (ssCtrl in Shift) then
   CepCadastro(sender);
end;

end.
