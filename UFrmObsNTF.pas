unit UFrmObsNTF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls;

type
  TFormObsNTF = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit_ID: TDBEdit;
    Memo_DS_OBS: TDBMemo;
    Label2: TLabel;
    procedure TabCadastroShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormObsNTF: TFormObsNTF;

implementation

{$R *.dfm}

uses UDmCadastro;

procedure TFormObsNTF.TabCadastroShow(Sender: TObject);
begin
  inherited;
  FormObsNTF.Width := 694;
  FormObsNTF.Height := 446;
  FormObsNTF.Top := (Screen.DesktopHeight - FormObsNTF.Height) DIV 2;
  FormObsNTF.Left := (Screen.DesktopWidth - FormObsNTF.Width) DIV 2;
end;

procedure TFormObsNTF.TabConsultaShow(Sender: TObject);
begin
  inherited;
  FormObsNTF.Width := 1179;
  FormObsNTF.Height := 644;
  FormObsNTF.Top := (Screen.DesktopHeight - FormObsNTF.Height) DIV 2;
  FormObsNTF.Left := (Screen.DesktopWidth - FormObsNTF.Width) DIV 2;
end;

end.
