object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 553
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 24
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Configuraes1: TMenuItem
        Caption = 'Configura'#231#245'es'
      end
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
        object CriarNovoUsurio1: TMenuItem
          Caption = 'Criar Novo Usu'#225'rio'
        end
        object rocardeUsurios1: TMenuItem
          Caption = 'Trocar de Usu'#225'rios'
        end
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        ShortCut = 119
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
      object Produtos2: TMenuItem
        Caption = 'Funcion'#225'rios'
      end
      object N2: TMenuItem
        Caption = '-'
      end
    end
    object N3: TMenuItem
      Caption = 'Consultas'
      object Clientes2: TMenuItem
        Caption = 'Clientes'
      end
      object Produtos3: TMenuItem
        Caption = 'Produtos'
      end
    end
  end
end
