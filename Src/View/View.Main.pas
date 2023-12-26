unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, View.Client;

type
  TuViewMain = class(TForm)
    BtnCliente: TButton;
    procedure BtnClienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  uViewMain: TuViewMain;

implementation

{$R *.dfm}

procedure TuViewMain.BtnClienteClick(Sender: TObject);
begin

  try
    Application.CreateForm(TuViewClient, uViewClient);
    uViewClient.ShowModal;
  finally
    uViewClient.Free;
  end;

end;

end.
