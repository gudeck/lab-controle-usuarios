program Project2;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uBD in 'uBD.pas' {DataModule1: TDataModule},
  uBase in 'uBase.pas' {FormBase},
  uCRUD in 'uCRUD.pas' {fCrud};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormBase, FormBase);
  Application.CreateForm(TfCrud, fCrud);
  Application.Run;
end.
