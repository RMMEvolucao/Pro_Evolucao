unit UFrmAlicota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UfrmCadpadrao, Data.DB, Data.FMTBcd,
  Data.SqlExpr, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, cxGraphics, Vcl.ToolWin;

type
  TFormAliquota = class(TFormCadPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBComboBoxOri: TDBComboBox;
    Label2: TLabel;
    DBComboBoxDst: TDBComboBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    DBEdit_AL_ICM: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAliquota: TFormAliquota;

implementation

{$R *.dfm}

uses UDmCadastro;
//CbBox.items.Value[´Sim´] :=´S´
end.
