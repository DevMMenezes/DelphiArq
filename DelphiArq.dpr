program DelphiArq;

uses
  Vcl.Forms,
  View.Main in 'Src\View\View.Main.pas' {uViewMain} ,
  View.Client in 'Src\View\View.Client.pas' {uViewClient} ,
  Model.Client in 'Src\Model\Model.Client.pas',
  Controller.Client in 'Src\Controller\Controller.Client.pas',
  DAO.Client in 'Src\DAO\DAO.Client.pas',
  Connection.DM
    in 'Src\Connection\Connection.DM.pas' {uConnectionDM: TDataModule};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TuViewMain, uViewMain);
  Application.CreateForm(TuViewClient, uViewClient);
  Application.CreateForm(TuConnectionDM, uConnectionDM);
  Application.Run;

end.
