object frFolhaPagamento: TfrFolhaPagamento
  Left = 387
  Top = 103
  Width = 497
  Height = 513
  Caption = 'Folha de Pagamento'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btDeletar: TButton
    Left = 384
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Deletar'
    Enabled = False
    TabOrder = 9
    OnClick = btDeletarClick
  end
  object gbFuncionario: TGroupBox
    Left = 8
    Top = 16
    Width = 468
    Height = 81
    Caption = 'Funcion'#225'rio'
    TabOrder = 0
    object lbNome: TLabel
      Left = 15
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lbCargo: TLabel
      Left = 271
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Cargo:'
    end
    object lbCodigoFuncionario: TLabel
      Left = 353
      Top = 52
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lbMes: TLabel
      Left = 151
      Top = 52
      Width = 23
      Height = 13
      Caption = 'M'#234's:'
    end
    object lbAno: TLabel
      Left = 280
      Top = 52
      Width = 22
      Height = 13
      Caption = 'Ano:'
    end
    object cbNome: TComboBox
      Left = 48
      Top = 20
      Width = 217
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnSelect = cbNomeSelect
    end
    object edCargo: TEdit
      Left = 304
      Top = 20
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object btCadastrarFuncionario: TButton
      Left = 48
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 2
      OnClick = btCadastrarFuncionarioClick
    end
    object edCodigoFuncionario: TEdit
      Left = 392
      Top = 48
      Width = 57
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object cbMes: TComboBox
      Left = 176
      Top = 48
      Width = 89
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      OnSelect = cbMesSelect
      Items.Strings = (
        'Janeiro'
        'Feveiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outrubro'
        'Novembro'
        'Dezembro')
    end
    object edAno: TEdit
      Left = 304
      Top = 48
      Width = 41
      Height = 21
      TabOrder = 5
      OnExit = edAnoExit
    end
  end
  object gbProventos: TGroupBox
    Left = 8
    Top = 104
    Width = 185
    Height = 137
    Caption = 'Proventos'
    TabOrder = 1
    object lbSalarioBase: TLabel
      Left = 15
      Top = 26
      Width = 62
      Height = 13
      Caption = 'Sal'#225'rio Base:'
    end
    object lbHorasExtras: TLabel
      Left = 14
      Top = 51
      Width = 63
      Height = 13
      Caption = 'Horas Extras:'
    end
    object lbOutros: TLabel
      Left = 44
      Top = 74
      Width = 34
      Height = 13
      Caption = 'Outros:'
    end
    object lbTotal: TLabel
      Left = 43
      Top = 112
      Width = 34
      Height = 13
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edSalarioBase: TEdit
      Left = 80
      Top = 24
      Width = 89
      Height = 21
      TabOrder = 0
      Text = '0,00'
      OnExit = edSalarioBaseExit
    end
    object edHoraExtra: TEdit
      Left = 80
      Top = 47
      Width = 89
      Height = 21
      TabOrder = 1
      Text = '0,00'
      OnExit = edHoraExtraExit
    end
    object edOutros: TEdit
      Left = 80
      Top = 70
      Width = 89
      Height = 21
      TabOrder = 2
      Text = '0,00'
      OnExit = edOutrosExit
    end
    object edTotalProventos: TEdit
      Left = 80
      Top = 108
      Width = 89
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = '0,00'
    end
  end
  object gbDescontos: TGroupBox
    Left = 195
    Top = 104
    Width = 281
    Height = 137
    Caption = 'Descontos'
    TabOrder = 2
    object lbInss: TLabel
      Left = 54
      Top = 26
      Width = 28
      Height = 13
      Caption = 'INSS:'
    end
    object lbIrrf: TLabel
      Left = 54
      Top = 49
      Width = 28
      Height = 13
      Caption = 'IRRF:'
    end
    object lbValeTransp: TLabel
      Left = 4
      Top = 73
      Width = 78
      Height = 13
      Caption = 'Vale Transporte:'
    end
    object lbTotalD: TLabel
      Left = 48
      Top = 112
      Width = 34
      Height = 13
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edInss: TEdit
      Left = 85
      Top = 22
      Width = 175
      Height = 21
      BiDiMode = bdLeftToRight
      Enabled = False
      ParentBiDiMode = False
      TabOrder = 0
      Text = '0,00'
      OnChange = edInssChange
    end
    object edIrrf: TEdit
      Left = 85
      Top = 45
      Width = 175
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = '0,00'
      OnChange = edIrrfChange
    end
    object edValeTransp: TEdit
      Left = 85
      Top = 69
      Width = 175
      Height = 21
      Enabled = False
      TabOrder = 2
      Text = '0,00'
      OnChange = edValeTranspChange
    end
    object edTotalDescontos: TEdit
      Left = 85
      Top = 108
      Width = 175
      Height = 21
      Enabled = False
      TabOrder = 3
      Text = '0,00'
    end
  end
  object gbResultado: TGroupBox
    Left = 8
    Top = 240
    Width = 468
    Height = 65
    Caption = 'Resultado'
    TabOrder = 3
    object lbSalarioLiquido: TLabel
      Left = 10
      Top = 32
      Width = 91
      Height = 13
      Caption = 'Sal'#225'rio L'#237'quido:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edSalarioLiquido: TEdit
      Left = 104
      Top = 28
      Width = 345
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = '0,00'
    end
  end
  object btCalcular: TButton
    Left = 112
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = btCalcularClick
  end
  object btSalvar: TButton
    Left = 200
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Enabled = False
    TabOrder = 5
    OnClick = btSalvarClick
  end
  object btLimpar: TButton
    Left = 288
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 6
    OnClick = btLimparClick
  end
  object pnFuncionario: TPanel
    Left = 528
    Top = 8
    Width = 401
    Height = 393
    BorderWidth = 1
    BorderStyle = bsSingle
    TabOrder = 7
    Visible = False
    object lbTituloPnFuncionario: TLabel
      Left = 136
      Top = 16
      Width = 139
      Height = 13
      Caption = 'Cadastro de Funcion'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCodigo: TLabel
      Left = 40
      Top = 54
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object lbNomeCadatro: TLabel
      Left = 45
      Top = 77
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object lbCargoCadastro: TLabel
      Left = 45
      Top = 98
      Width = 31
      Height = 13
      Caption = 'Cargo:'
    end
    object lbEndereco: TLabel
      Left = 27
      Top = 123
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object lbTelefone: TLabel
      Left = 31
      Top = 147
      Width = 45
      Height = 13
      Caption = 'Telefone:'
    end
    object edCodigo: TEdit
      Left = 80
      Top = 50
      Width = 73
      Height = 21
      TabOrder = 0
      OnExit = edCodigoExit
    end
    object edNomeCadastro: TEdit
      Left = 80
      Top = 73
      Width = 305
      Height = 21
      TabOrder = 1
    end
    object cbCargo: TComboBox
      Left = 80
      Top = 96
      Width = 201
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'Analista'
      Items.Strings = (
        'Analista'
        'L'#237'der'
        'Programador'
        'PO'
        'QA')
    end
    object edEndereco: TEdit
      Left = 80
      Top = 119
      Width = 305
      Height = 21
      TabOrder = 3
    end
    object edTelefone: TEdit
      Left = 80
      Top = 143
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object btSalvarCadastro: TButton
      Left = 80
      Top = 182
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 5
      OnClick = btSalvarCadastroClick
    end
    object btFechar: TButton
      Left = 160
      Top = 182
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 6
      OnClick = btFecharClick
    end
    object grFuncionario: TDBGrid
      Left = 16
      Top = 224
      Width = 369
      Height = 120
      DataSource = dsFuncionario
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = grFuncionarioCellClick
      OnDblClick = grFuncionarioDblClick
      OnTitleClick = grFuncionarioTitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'bdCODIGO'
          Title.Caption = 'C'#243'digo'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bdNOME'
          Title.Caption = 'Nome Funcion'#225'rio'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bdCARGO'
          Title.Caption = 'Cargo'
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bdENDERECO'
          Title.Caption = 'Endere'#231'o'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bdTELEFONE'
          Title.Caption = 'Telefone'
          Visible = True
        end>
    end
    object btDeletarFuncionario: TButton
      Left = 240
      Top = 182
      Width = 75
      Height = 25
      Caption = 'Deletar'
      Enabled = False
      TabOrder = 8
      OnClick = btDeletarFuncionarioClick
    end
    object btCadastrarCargo: TButton
      Left = 288
      Top = 96
      Width = 97
      Height = 20
      Caption = 'Cadastrar Cargo'
      Constraints.MaxHeight = 50
      TabOrder = 9
      OnClick = btCadastrarCargoClick
    end
  end
  object btConsultar: TButton
    Left = 24
    Top = 320
    Width = 75
    Height = 25
    Caption = 'Consultar'
    TabOrder = 8
    OnClick = btConsultarClick
  end
  object grFolha: TDBGrid
    Left = 8
    Top = 352
    Width = 468
    Height = 120
    DataSource = dsFolha
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = grFolhaCellClick
    OnDblClick = grFolhaDblClick
    OnTitleClick = grFolhaTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'bdIDFOLHA'
        Title.Alignment = taRightJustify
        Title.Caption = 'ID Folha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdIDFUNCIONARIO'
        Title.Alignment = taRightJustify
        Title.Caption = 'ID Funcion'#225'rio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdNOMEFUNCIONARIO'
        Title.Caption = 'Nome Funcion'#225'rio'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdMES'
        Title.Caption = 'M'#234's'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdANO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Ano'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdSALARIOBASE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Sal'#225'rio Base'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdHORAEXTRA'
        Title.Alignment = taRightJustify
        Title.Caption = 'Hora Extra'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdOUTROS'
        Title.Alignment = taRightJustify
        Title.Caption = 'Outros'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTOTALPROVENTOS'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total Proventos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdINSS'
        Title.Alignment = taRightJustify
        Title.Caption = 'INSS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdIRRF'
        Title.Alignment = taRightJustify
        Title.Caption = 'IRRF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdVALETRANSP'
        Title.Alignment = taRightJustify
        Title.Caption = 'Vale Transporte'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdTOTALDESCONTOS'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total Descontos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bdSALARIOLIQUIDO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Sal'#225'rio L'#237'quido'
        Visible = True
      end>
  end
  object pnCargo: TPanel
    Left = 976
    Top = 32
    Width = 185
    Height = 113
    TabOrder = 11
    Visible = False
    object lbCargoCad: TLabel
      Left = 16
      Top = 32
      Width = 31
      Height = 13
      Caption = 'Cargo:'
    end
    object edCargoCad: TEdit
      Left = 56
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btSalvarCargo: TButton
      Left = 16
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btSalvarCargoClick
    end
    object btFecharCargo: TButton
      Left = 96
      Top = 72
      Width = 75
      Height = 25
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = btFecharCargoClick
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 488
    Top = 48
  end
  object cdsFuncionario: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdCODIGO'
        DataType = ftInteger
      end
      item
        Name = 'bdNOME'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'bdCARGO'
        DataType = ftInteger
      end
      item
        Name = 'bdENDERECO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'bdTELEFONE'
        DataType = ftString
        Size = 14
      end>
    IndexDefs = <
      item
        Name = 'iCODIGO'
        Fields = 'bdCODIGO'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'iCODIGO'
    Params = <>
    StoreDefs = True
    Left = 488
    Top = 16
    Data = {
      940000009619E0BD010000001800000005000000000003000000940008626443
      4F4449474F04000100000000000662644E4F4D45010049000000010005574944
      5448020002003200076264434152474F04000100000000000A6264454E444552
      45434F01004900000001000557494454480200020032000A626454454C45464F
      4E450100490000000100055749445448020002000E000000}
    object cdsFuncionariobdCODIGO: TIntegerField
      FieldName = 'bdCODIGO'
    end
    object cdsFuncionariobdNOME: TStringField
      FieldName = 'bdNOME'
      Size = 50
    end
    object cdsFuncionariobdCARGO: TIntegerField
      FieldName = 'bdCARGO'
    end
    object cdsFuncionariobdENDERECO: TStringField
      FieldName = 'bdENDERECO'
      Size = 50
    end
    object cdsFuncionariobdTELEFONE: TStringField
      FieldName = 'bdTELEFONE'
      Size = 14
    end
  end
  object dsFolha: TDataSource
    DataSet = cdsFolha
    Left = 488
    Top = 392
  end
  object cdsFolha: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'bdIDFOLHA'
        DataType = ftInteger
      end
      item
        Name = 'bdIDFUNCIONARIO'
        DataType = ftInteger
      end
      item
        Name = 'bdNOMEFUNCIONARIO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'bdMES'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'bdANO'
        DataType = ftInteger
      end
      item
        Name = 'bdSALARIOBASE'
        DataType = ftCurrency
      end
      item
        Name = 'bdHORAEXTRA'
        DataType = ftCurrency
      end
      item
        Name = 'bdOUTROS'
        DataType = ftCurrency
      end
      item
        Name = 'bdINSS'
        DataType = ftCurrency
      end
      item
        Name = 'bdIRRF'
        DataType = ftCurrency
      end
      item
        Name = 'bdVALETRANSP'
        DataType = ftCurrency
      end
      item
        Name = 'bdTOTALPROVENTOS'
        DataType = ftCurrency
      end
      item
        Name = 'bdTOTALDESCONTOS'
        DataType = ftCurrency
      end
      item
        Name = 'bdSALARIOLIQUIDO'
        DataType = ftCurrency
      end>
    IndexDefs = <
      item
        Name = 'iIDFOLHA'
        Fields = 'bdIDFOLHA'
        Options = [ixPrimary, ixUnique]
      end>
    IndexName = 'iIDFOLHA'
    Params = <>
    StoreDefs = True
    Left = 488
    Top = 360
    Data = {
      FF0100009619E0BD01000000180000000E000000000003000000FF0109626449
      44464F4C484104000100000000000F6264494446554E43494F4E4152494F0400
      0100000000001162644E4F4D4546554E43494F4E4152494F0100490000000100
      0557494454480200020032000562644D45530100490000000100055749445448
      020002000A00056264414E4F04000100000000000D626453414C4152494F4241
      5345080004000000010007535542545950450200490006004D6F6E6579000B62
      64484F5241455854524108000400000001000753554254595045020049000600
      4D6F6E6579000862644F5554524F530800040000000100075355425459504502
      00490006004D6F6E657900066264494E53530800040000000100075355425459
      50450200490006004D6F6E657900066264495252460800040000000100075355
      42545950450200490006004D6F6E6579000C626456414C455452414E53500800
      04000000010007535542545950450200490006004D6F6E657900106264544F54
      414C50524F56454E544F53080004000000010007535542545950450200490006
      004D6F6E657900106264544F54414C444553434F4E544F530800040000000100
      07535542545950450200490006004D6F6E65790010626453414C4152494F4C49
      515549444F080004000000010007535542545950450200490006004D6F6E6579
      000000}
    object cdsFolhabdIDFOLHA: TIntegerField
      FieldName = 'bdIDFOLHA'
    end
    object cdsFolhabdIDFUNCIONARIO: TIntegerField
      FieldName = 'bdIDFUNCIONARIO'
    end
    object cdsFolhabdNOMEFUNCIONARIO: TStringField
      FieldName = 'bdNOMEFUNCIONARIO'
      Size = 50
    end
    object cdsFolhabdMES: TStringField
      FieldName = 'bdMES'
      Size = 10
    end
    object cdsFolhabdANO: TIntegerField
      FieldName = 'bdANO'
    end
    object cdsFolhabdSALARIOBASE: TCurrencyField
      FieldName = 'bdSALARIOBASE'
    end
    object cdsFolhabdHORAEXTRA: TCurrencyField
      FieldName = 'bdHORAEXTRA'
    end
    object cdsFolhabdOUTROS: TCurrencyField
      FieldName = 'bdOUTROS'
    end
    object cdsFolhabdINSS: TCurrencyField
      FieldName = 'bdINSS'
    end
    object cdsFolhabdIRRF: TCurrencyField
      FieldName = 'bdIRRF'
    end
    object cdsFolhabdVALETRANSP: TCurrencyField
      FieldName = 'bdVALETRANSP'
    end
    object cdsFolhabdTOTALPROVENTOS: TCurrencyField
      FieldName = 'bdTOTALPROVENTOS'
    end
    object cdsFolhabdTOTALDESCONTOS: TCurrencyField
      FieldName = 'bdTOTALDESCONTOS'
    end
    object cdsFolhabdSALARIOLIQUIDO: TCurrencyField
      FieldName = 'bdSALARIOLIQUIDO'
    end
  end
end
