object uViewMain: TuViewMain
  Left = 0
  Top = 0
  ClientHeight = 60
  ClientWidth = 151
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object BtnCliente: TButton
    Left = 8
    Top = 8
    Width = 129
    Height = 41
    Caption = 'Cadastrar Cliente'
    TabOrder = 0
    OnClick = BtnClienteClick
  end
end
