inherited fCrud: TfCrud
  Caption = 'fCrud'
  ClientHeight = 294
  ExplicitHeight = 333
  PixelsPerInch = 96
  TextHeight = 13
  inherited GroupCabecalho: TGroupBox
    object Label2: TLabel
      Left = 10
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label3: TLabel
      Left = 227
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 10
      Top = 32
      Width = 199
      Height = 21
      TabStop = False
      Color = 15832817
      DataField = 'ID'
      DataSource = DataSource1
      Enabled = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 227
      Top = 32
      Width = 550
      Height = 21
      DataField = 'NOME'
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  inherited pageControl: TPageControl
    Height = 190
    ActivePage = tbFiltros
    Anchors = [akLeft, akTop, akRight, akBottom]
    ExplicitHeight = 190
    inherited tbInformacoes: TTabSheet
      ExplicitHeight = 162
      inherited GroupInformacoes: TGroupBox
        Height = 162
        ExplicitHeight = 162
        object Label4: TLabel
          Left = 6
          Top = 8
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 6
          Top = 53
          Width = 28
          Height = 13
          Caption = 'M'#233'dia'
          FocusControl = DBEdit4
        end
        object Label6: TLabel
          Left = 6
          Top = 118
          Width = 48
          Height = 13
          Caption = 'Criado em'
          FocusControl = DBEdit5
        end
        object DBEdit3: TDBEdit
          Left = 6
          Top = 24
          Width = 500
          Height = 21
          DataField = 'DESCRICAO'
          DataSource = DataSource1
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 6
          Top = 69
          Width = 134
          Height = 21
          DataField = 'MEDIA'
          DataSource = DataSource1
          TabOrder = 1
        end
        object DBCheckBox1: TDBCheckBox
          Left = 6
          Top = 96
          Width = 97
          Height = 17
          Caption = 'Opcional'
          DataField = 'OPCIONAL'
          DataSource = DataSource1
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 6
          Top = 134
          Width = 238
          Height = 21
          DataField = 'DATA_CRIACAO'
          DataSource = DataSource1
          TabOrder = 3
        end
      end
    end
    inherited tbFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 790
      ExplicitHeight = 162
      inherited GroupFiltros: TGroupBox
        Height = 65
        ExplicitTop = 0
        ExplicitHeight = 65
      end
      inherited gridFiltros: TDBGrid
        Top = 65
        Height = 115
        Align = alTop
        Anchors = [akLeft, akTop, akRight, akBottom]
      end
      inherited StatusBar1: TStatusBar
        Top = 143
        ExplicitTop = 143
        ExplicitWidth = 790
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = DataModule1.MDisciplina
  end
end
