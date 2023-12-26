unit DAO.Client;

interface

uses Connection.DM, Model.Client, System.SysUtils, Data.DB;

type
  IDAOClient = interface
    ['{72D756E7-9DB4-4EC2-87BA-1CB9A591F117}']
    function Insert(aClient: TClient): Boolean;
    function Delete: Boolean;
    function Select: TDataSet;
  end;

  TDAOClient = class(TInterfacedObject, IDAOClient)
  private
  public
    class function New: IDAOClient;
    function Insert(aClient: TClient): Boolean;
    function Delete: Boolean;
    function Select: TDataSet;
  end;

implementation

function TDAOClient.Delete: Boolean;
begin
    try
    try
      uConnectionDM.MemClient.Delete;
      Result := True;
    except
      on E: Exception do
        raise Exception.Create('Erro ao Deletar o Cliente. ' + E.Message);
    end;
  finally
  end;
end;

function TDAOClient.Insert(aClient: TClient): Boolean;
begin
  try
    try
      uConnectionDM.MemClient.Open;
      uConnectionDM.MemClient.Insert;
      uConnectionDM.MemClientCodigo.AsInteger := aClient.Codigo;
      uConnectionDM.MemClientNome.AsString := aClient.Nome;
      uConnectionDM.MemClientCPFCNPJ.AsString := aClient.CPFCNPJ;
      uConnectionDM.MemClient.Post;

      Result := True;
    except
      on E: Exception do
        raise Exception.Create('Erro ao Inserir o Cliente. ' + E.Message);
    end;
  finally
  end;

end;

class function TDAOClient.New: IDAOClient;
begin
  Result := Self.Create;
end;

function TDAOClient.Select: TDataSet;
begin

  try
    try
      Result := uConnectionDM.MemClient;
    except
      on E: Exception do
        raise Exception.Create('Erro ao Buscar os Clientes. ' + E.Message);
    end;
  finally
  end;

end;

end.
