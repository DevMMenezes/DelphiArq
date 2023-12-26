unit Controller.Client;

interface

uses
  Model.Client, DAO.Client, FireDAC.Comp.Client,
  Data.DB;

type
  IControllerClient = interface
    ['{7BA8060E-92B7-4965-851E-E3248B7647FC}']
    function Insert(aClient: TClient): Boolean;
    function Delete: Boolean;
    function Select: TDataSet;
  end;

  TControllerClient = class(TInterfacedObject, IControllerClient)
  private
  public
    class function New: IControllerClient;
    function Insert(aClient: TClient): Boolean;
    function Delete: Boolean;
    function Select: TDataSet;
  end;

implementation

function TControllerClient.Delete: Boolean;
var
  objdClient: TDAOClient;
begin
  objdClient := TDAOClient.Create;
  try
    objdClient.New.Delete;

    Result := True;
  finally
    objdClient.Free;
  end;
end;

function TControllerClient.Insert(aClient: TClient): Boolean;
var
  objdClient: TDAOClient;
begin
  objdClient := TDAOClient.Create;
  try
    objdClient.New.Insert(aClient);

    Result := True;
  finally
    objdClient.Free;
  end;
end;

class function TControllerClient.New: IControllerClient;
begin
  Result := Self.Create;
end;

function TControllerClient.Select: TDataSet;
var
  objdClient: TDAOClient;
begin
  objdClient := TDAOClient.Create;
  try
    Result := objdClient.New.Select;
  finally
    objdClient.Free;
  end;
end;

end.
