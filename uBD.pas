unit uBD;

interface

uses
  System.SysUtils, System.Classes, Datasnap.Provider, Datasnap.DBClient,
  Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    QDisciplina: TADOQuery;
    MDisciplina: TClientDataSet;
    PDisciplina: TDataSetProvider;
    MDisciplinaID: TLargeintField;
    MDisciplinaNOME: TStringField;
    MDisciplinaDESCRICAO: TStringField;
    MDisciplinaMEDIA: TIntegerField;
    MDisciplinaOPCIONAL: TBooleanField;
    MDisciplinaDATA_CRIACAO: TDateTimeField;
    procedure MDisciplinaAfterPost(DataSet: TDataSet);
    procedure MDisciplinaAfterDelete(DataSet: TDataSet);
    procedure MDisciplinaAfterCancel(DataSet: TDataSet);
    procedure MDisciplinaAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDataModule1.MDisciplinaAfterCancel(DataSet: TDataSet);
begin
  MDisciplina.CancelUpdates;
end;

procedure TDataModule1.MDisciplinaAfterDelete(DataSet: TDataSet);
begin
  MDisciplina.ApplyUpdates(-1);
end;

procedure TDataModule1.MDisciplinaAfterInsert(DataSet: TDataSet);
begin
  MDisciplinaDATA_CRIACAO.AsDateTime := now;
  MDisciplinaOPCIONAL.AsBoolean := false;
end;

procedure TDataModule1.MDisciplinaAfterPost(DataSet: TDataSet);
begin
  MDisciplina.ApplyUpdates(-1);
end;

end.
