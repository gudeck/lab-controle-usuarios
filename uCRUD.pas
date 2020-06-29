unit uCRUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, uBD, uBase, Vcl.DBCtrls, Vcl.Mask;

type
  TfCrud = class(TFormBase)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    procedure btNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCrud: TfCrud;

implementation

{$R *.dfm}

procedure TfCrud.btNovoClick(Sender: TObject);
begin
  inherited;
  DBEdit2.SetFocus;
end;

end.
