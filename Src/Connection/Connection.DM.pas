unit Connection.DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TuConnectionDM = class(TDataModule)
    MemClient: TFDMemTable;
    MemClientCodigo: TIntegerField;
    MemClientNome: TStringField;
    MemClientCPFCNPJ: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uConnectionDM: TuConnectionDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
