unit uFolhaPagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBClient, ExtCtrls, Grids, DBGrids;

type
  TfrFolhaPagamento = class(TForm)
    gbFuncionario: TGroupBox;
    gbProventos: TGroupBox;
    gbDescontos: TGroupBox;
    gbResultado: TGroupBox;
    lbNome: TLabel;
    cbNome: TComboBox;
    lbCargo: TLabel;
    edCargo: TEdit;
    btCadastrarFuncionario: TButton;
    lbSalarioBase: TLabel;
    edSalarioBase: TEdit;
    lbHorasExtras: TLabel;
    lbOutros: TLabel;
    lbTotal: TLabel;
    edHoraExtra: TEdit;
    edOutros: TEdit;
    edTotalProventos: TEdit;
    lbInss: TLabel;
    edInss: TEdit;
    lbIrrf: TLabel;
    edIrrf: TEdit;
    lbValeTransp: TLabel;
    lbTotalD: TLabel;
    edValeTransp: TEdit;
    edTotalDescontos: TEdit;
    lbSalarioLiquido: TLabel;
    edSalarioLiquido: TEdit;
    btCalcular: TButton;
    btSalvar: TButton;
    btLimpar: TButton;
    pnFuncionario: TPanel;
    lbTituloPnFuncionario: TLabel;
    lbCodigo: TLabel;
    edCodigo: TEdit;
    lbNomeCadatro: TLabel;
    edNomeCadastro: TEdit;
    lbCargoCadastro: TLabel;
    cbCargo: TComboBox;
    lbEndereco: TLabel;
    edEndereco: TEdit;
    lbTelefone: TLabel;
    edTelefone: TEdit;
    btSalvarCadastro: TButton;
    btFechar: TButton;
    dsFuncionario: TDataSource;
    cdsFuncionario: TClientDataSet;
    cdsFuncionariobdCODIGO: TIntegerField;
    cdsFuncionariobdNOME: TStringField;
    cdsFuncionariobdCARGO: TIntegerField;
    cdsFuncionariobdENDERECO: TStringField;
    cdsFuncionariobdTELEFONE: TStringField;
    lbCodigoFuncionario: TLabel;
    edCodigoFuncionario: TEdit;
    grFuncionario: TDBGrid;
    btConsultar: TButton;
    cbMes: TComboBox;
    lbMes: TLabel;
    dsFolha: TDataSource;
    btDeletar: TButton;
    edAno: TEdit;
    lbAno: TLabel;
    cdsFolha: TClientDataSet;
    cdsFolhabdIDFOLHA: TIntegerField;
    cdsFolhabdIDFUNCIONARIO: TIntegerField;
    cdsFolhabdMES: TStringField;
    cdsFolhabdANO: TIntegerField;
    cdsFolhabdSALARIOBASE: TCurrencyField;
    cdsFolhabdHORAEXTRA: TCurrencyField;
    cdsFolhabdOUTROS: TCurrencyField;
    cdsFolhabdINSS: TCurrencyField;
    cdsFolhabdIRRF: TCurrencyField;
    cdsFolhabdVALETRANSP: TCurrencyField;
    cdsFolhabdTOTALPROVENTOS: TCurrencyField;
    cdsFolhabdTOTALDESCONTOS: TCurrencyField;
    cdsFolhabdNOMEFUNCIONARIO: TStringField;
    cdsFolhabdSALARIOLIQUIDO: TCurrencyField;
    grFolha: TDBGrid;
    btDeletarFuncionario: TButton;
    btCadastrarCargo: TButton;
    pnCargo: TPanel;
    lbCargoCad: TLabel;
    edCargoCad: TEdit;
    btSalvarCargo: TButton;
    btFecharCargo: TButton;
    procedure btFecharClick(Sender: TObject);
    procedure btCadastrarFuncionarioClick(Sender: TObject);
    procedure btSalvarCadastroClick(Sender: TObject);
    procedure cbNomeSelect(Sender: TObject);
    procedure edSalarioBaseExit(Sender: TObject);
    procedure edHoraExtraExit(Sender: TObject);
    procedure edOutrosExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edInssChange(Sender: TObject);
    procedure edIrrfChange(Sender: TObject);
    procedure btCalcularClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure edCodigoExit(Sender: TObject);
    procedure btConsultarClick(Sender: TObject);
    procedure edValeTranspChange(Sender: TObject);
    procedure grFuncionarioCellClick(Column: TColumn);
    procedure grFolhaCellClick(Column: TColumn);
    procedure btDeletarClick(Sender: TObject);
    procedure edAnoExit(Sender: TObject);
    procedure cbMesSelect(Sender: TObject);
    procedure btDeletarFuncionarioClick(Sender: TObject);
    procedure btCadastrarCargoClick(Sender: TObject);
    procedure btSalvarCargoClick(Sender: TObject);
    procedure btFecharCargoClick(Sender: TObject);
    procedure grFolhaDblClick(Sender: TObject);
    procedure grFuncionarioTitleClick(Column: TColumn);
    procedure grFolhaTitleClick(Column: TColumn);
    procedure grFuncionarioDblClick(Sender: TObject);
  private
    wGeradorIDFolha:Integer;
    procedure pLimpaCamposFuncionario;
    procedure pLimpaCamposFolhaPagamento;
    procedure pCalculaProventos;
    procedure pCalculaDescontos;
    function  fValidaCamposFolha:Boolean;
    function  fValidaCamposCadastro:Boolean;
    function  fGeradorIdFolha:Integer;
    function fCalculaINSS:Currency;
    function fValidaCadastroCargo:Boolean;
  public
    { Public declarations }
  end;

var
  frFolhaPagamento: TfrFolhaPagamento;

implementation

uses Math;

{$R *.dfm}

procedure TfrFolhaPagamento.btFecharClick(Sender: TObject);
begin
  pLimpaCamposFuncionario;
  pnFuncionario.Visible := False;
  btConsultar.Visible := True;
end;

procedure TfrFolhaPagamento.btCadastrarFuncionarioClick(Sender: TObject);
begin
  pnFuncionario.Visible := True;
  pnFuncionario.Left := 40;
  //O botão continunava aparecendo em cima da tela
  btConsultar.Visible := False;
end;

procedure TfrFolhaPagamento.btSalvarCadastroClick(Sender: TObject);
var
  wIndexParaEditar:Integer;
begin
  if not fValidaCamposCadastro then
     Begin
       Exit;
     End;
  cdsFuncionario.IndexFieldNames := 'bdCODIGO';

  if not cdsFuncionario.FindKey([edCodigo.Text]) then
     Begin
       cdsFuncionario.Insert;
       cbNome.Items.Add(edNomeCadastro.Text);
     End
  else
     Begin
       cdsFuncionario.Edit;
       wIndexParaEditar := cbNome.Items.IndexOf(cdsFuncionariobdNOME.AsString);
       cbNome.Items[wIndexParaEditar] := edNomeCadastro.Text;
     End;

  cdsFuncionariobdCODIGO.AsInteger := StrToInt(edCodigo.Text);
  cdsFuncionariobdNOME.AsString := edNomeCadastro.Text;
  cdsFuncionariobdCARGO.AsInteger := cbCargo.ItemIndex;
  cdsFuncionariobdENDERECO.AsString := edEndereco.Text;
  cdsFuncionariobdTELEFONE.AsString := edTelefone.Text;
  cdsFuncionario.Post;
  showMessage('Funcionário cadastrado com sucesso!');
  //Adicionando o funcionário no comboBox da tela principal.
  pLimpaCamposFuncionario;
  edCodigo.SetFocus;
end;

procedure TfrFolhaPagamento.pLimpaCamposFuncionario;
begin
  edCodigo.Text := '';
  edNomeCadastro.Text := '';
  cbCargo.ItemIndex := 0;
  edEndereco.Text := '';
  edTelefone.Text := '';
end;

procedure TfrFolhaPagamento.cbNomeSelect(Sender: TObject);
begin
  btSalvar.Enabled := False;
  pLimpaCamposFolhaPagamento;
  cdsFuncionario.IndexFieldNames := 'bdNOME';
  if not cdsFuncionario.FindKey([cbNome.Items[cbNome.ItemIndex]]) then
     Begin
       showMessage('Funcionário não encontrado');
       Exit
     End
  else
     Begin
       edCargo.Text := cbCargo.Items[cdsFuncionariobdCARGO.AsInteger];
       edCodigoFuncionario.Text := IntToStr(cdsFuncionariobdCODIGO.AsInteger);
     End;
  cbMes.SetFocus;
end;

procedure TfrFolhaPagamento.pCalculaProventos;
begin
  btSalvar.Enabled := False;
  edSalarioLiquido.Text := '0,00';
  //Soma todos os campos de proventos para pegar o novo valor
  edTotalProventos.Text := CurrToStr(StrToCurr(edSalarioBase.Text) +
                                     StrToCurr(edHoraExtra.Text) +
                                     StrToCurr(edOutros.Text));
end;

procedure TfrFolhaPagamento.pCalculaDescontos;
begin
  //Soma todos os campos de descontos para pegar o novo valor
  edTotalDescontos.Text := CurrToStr(StrToCurr(edInss.Text) +
                                     StrToCurr(edIrrf.Text) +
                                     StrToCurr(edValeTransp.Text));
end;

procedure TfrFolhaPagamento.edSalarioBaseExit(Sender: TObject);
begin

  if (Trim(edSalarioBase.Text) = '') OR (RoundTo(StrToCurrDef(edSalarioBase.Text, 0), -2) <= 0) then
     Begin
       Exit
     End;
  pCalculaProventos;
  //Calculo de desconto do INSS
  edInss.Text := CurrToStr(RoundTo(fCalculaINSS, -2));
  //Calculo de desconto do IRRF
  edIrrf.Text := CurrToStr(RoundTo(StrToCurr(edSalarioBase.Text) * 0.15, -2));
  //Calculo de desconto do Vale Transporte
  edValeTransp.Text := CurrToStr(RoundTo(StrToCurr(edSalarioBase.Text) * 0.06, -2));
  pCalculaDescontos;
end;

procedure TfrFolhaPagamento.edHoraExtraExit(Sender: TObject);
begin
  pCalculaProventos;
  //Calculo de desconto do INSS
  edInss.Text := CurrToStr(fCalculaINSS);
end;

procedure TfrFolhaPagamento.edOutrosExit(Sender: TObject);
begin
  pCalculaProventos;
  //Calculo de desconto do INSS
  edInss.Text := CurrToStr(fCalculaINSS);
end;

procedure TfrFolhaPagamento.FormCreate(Sender: TObject);
begin
  //Inicialização da váriavel como 1 poís será o ID do primeiro índice no cdsFolha
  wGeradorIDFolha := 1;
  cdsFuncionario.Insert;
  cbNome.Items.Add('Lucas Edson Machado');
  cdsFuncionariobdCODIGO.AsInteger := 1;
  cdsFuncionariobdNOME.AsString := 'Lucas Edson Machado';
  cdsFuncionariobdCARGO.AsInteger := 0;
  cdsFuncionariobdENDERECO.AsString := 'Rua das Palmeiras';
  cdsFuncionariobdTELEFONE.AsString := '4798899-7878';
  cdsFuncionario.Post;
  
end;

function TfrFolhaPagamento.fValidaCamposFolha:Boolean;
begin
  Result := False;
  if cbNome.ItemIndex < 0 then
     Begin
       showMessage('O funcionário precisa estar selecionado');
       Exit
     End
  else if cbMes.ItemIndex < 0 then
     Begin
       showMessage('O mês de referência precisa estar selecionado');
       cbMes.SetFocus;
     End
  else if (Trim(edAno.Text) = '') OR (StrToInt(edAno.Text) < 2026) then
     Begin
       showMessage('Ano inválido');
       edAno.SetFocus;
     End
  else if (Trim(edSalarioBase.Text) = '') OR (StrToCurrDef(edSalarioBase.Text, 0) <= 0) then
     Begin
       showMessage('Salário base inválido');
       edSalarioBase.SetFocus;
     End
  else if StrToCurrDef(Trim(edHoraExtra.Text), 0) < 0 then
     Begin
       showMessage('O campo hora extra está inválido');
       edHoraExtra.SetFocus;
     End
  else if StrToCurrDef(Trim(edOutros.Text), 0) < 0 then
     Begin
       showMessage('O campo outros está inválido');
       edOutros.SetFocus;
     End
  Else
     Result := True;
end;

procedure TfrFolhaPagamento.edInssChange(Sender: TObject);
begin
  pCalculaDescontos;
end;

procedure TfrFolhaPagamento.edIrrfChange(Sender: TObject);
begin
  pCalculaDescontos; 
end;

procedure TfrFolhaPagamento.btCalcularClick(Sender: TObject);
begin
  btSalvar.Enabled := True;
  if not fValidaCamposFolha then
     Begin
       btSalvar.Enabled := False;
       Exit
     End
  else
     Begin
       edSalarioLiquido.Text := CurrToStr(
         StrToCurr(edTotalProventos.Text) - StrToCurr(edTotalDescontos.Text))
     End;
end;

procedure TfrFolhaPagamento.pLimpaCamposFolhaPagamento;
begin
  edSalarioBase.Text := '0,00';
  edHoraExtra.Text := '0,00';
  edOutros.Text := '0,00';
  edTotalProventos.Text := '0,00';
  edTotalDescontos.Text := '0,00';
  edValeTransp.Text := '0,00';
  edInss.Text := '0,00';
  edIrrf.Text := '0,00';
  edSalarioLiquido.Text := '0,00';
  cbNome.SetFocus;
end;

procedure TfrFolhaPagamento.btLimparClick(Sender: TObject);
begin
  btSalvar.Enabled := False;
  pLimpaCamposFolhaPagamento;
end;

function TfrFolhaPagamento.fGeradorIdFolha: Integer;
begin
  Result := wGeradorIDFolha;
  Inc(wGeradorIDFolha)
end;

procedure TfrFolhaPagamento.btSalvarClick(Sender: TObject);
begin
  if not fValidaCamposFolha then
     Exit;

  cdsFolha.IndexFieldNames := 'bdIDFUNCIONARIO';
  if cdsFolha.FindKey([edCodigoFuncionario.Text]) then
     Begin
       cdsFolha.IndexFieldNames := 'bdMES';
       if cdsFolha.FindKey([cbMes.Items[cbMes.ItemIndex]]) then
          Begin
            cdsFolha.IndexFieldNames := 'bdANO';
            if cdsFolha.FindKey([edAno.Text]) then
               Begin
                 cdsFolha.Edit;
               End
            else
               Begin
                 cdsFolha.Insert;
                 cdsFolhabdIDFOLHA.AsInteger := fGeradorIdFolha;
               End
          End
       else
          Begin
            cdsFolha.Insert;
            cdsFolhabdIDFOLHA.AsInteger := fGeradorIdFolha;
          End;
     End
  else
     Begin
       cdsFolha.Insert;
       cdsFolhabdIDFOLHA.AsInteger := fGeradorIdFolha;
     end;
  cdsFolhabdANO.AsInteger := StrToInt(edAno.Text);
  cdsFolhabdMES.AsString := cbMes.Items[cbMes.ItemIndex];
  cdsFolhabdIDFUNCIONARIO.AsInteger := StrToInt(edCodigoFuncionario.Text);
  cdsFolhabdNOMEFUNCIONARIO.AsString := cbNome.Items[cbNome.ItemIndex];
  cdsFolhabdSALARIOBASE.AsCurrency := StrToCurr(edSalarioBase.Text);
  cdsFolhabdHORAEXTRA.AsCurrency := StrToCurr(edHoraExtra.Text);
  cdsFolhabdOUTROS.AsCurrency := StrToCurr(edOutros.Text);
  cdsFolhabdTOTALPROVENTOS.AsCurrency := StrToCurr(edTotalProventos.Text);
  cdsFolhabdINSS.AsCurrency := StrToCurr(edInss.Text);
  cdsFolhabdIRRF.AsCurrency := StrToCurr(edIrrf.Text);
  cdsFolhabdVALETRANSP.AsCurrency := StrToCurr(edValeTransp.Text);
  cdsFolhabdTOTALDESCONTOS.AsCurrency := StrToCurr(edTotalDescontos.Text);
  cdsFolhabdSALARIOLIQUIDO.AsCurrency := StrToCurr(edSalarioLiquido.Text);
  cdsFolha.Post;
  ShowMessage('Folha salva com sucesso!');
end;

procedure TfrFolhaPagamento.edCodigoExit(Sender: TObject);
begin
  if (Trim(edCodigo.Text) = '') OR (StrToIntDef(Trim(edCodigo.Text), 0) <= 0) then
     Begin
       Exit
     End;
  cdsFuncionario.IndexFieldNames := 'bdCODIGO';
  if not cdsFuncionario.FindKey([edCodigo.Text]) then
     Begin
       Exit
     End
  else
     Begin
       edNomeCadastro.Text := cdsFuncionariobdNOME.AsString;
       cbCargo.ItemIndex := cdsFuncionariobdCARGO.AsInteger;
       edEndereco.Text := cdsFuncionariobdENDERECO.AsString;
       edTelefone.Text := cdsFuncionariobdTELEFONE.AsString;
       btDeletarFuncionario.Enabled := True;
     End;
end;

function TfrFolhaPagamento.fValidaCamposCadastro: Boolean;
begin
  Result := False;
  if (Trim(edCodigo.Text) = '') OR (StrToIntDef(Trim(edCodigo.Text), 0) <= 0) then
     Begin
       ShowMessage('Campo código inválido');
       Exit
     End
  else if Trim(edNomeCadastro.Text) = '' then
     Begin
       ShowMessage('Campo nome inválido');
       Exit
     End
  else if cbCargo.ItemIndex < 0 then
     Begin
       ShowMessage('Selecione o Cargo');
       Exit
     End
  else if Trim(edEndereco.Text) = '' then
     Begin
       ShowMessage('Campo endereço inválido');
       Exit
     End
  else if Trim(edTelefone.Text) = '' then
     Begin
       ShowMessage('Campo telefone inválido');
       Exit
     End
  else
     Result := True;
end;

procedure TfrFolhaPagamento.btConsultarClick(Sender: TObject);
var
  wMensagem: String;
begin
  if cdsFolha.IsEmpty then
     Begin
       showMessage('Não há folhas cadastradas');
       Exit
     End;
     
  wMensagem :=  'ID FUNCIONÁRIO | Salário Líquido' + #13;
  cdsFolha.IndexFieldNames := 'bdIDFOLHA';
  cdsFolha.First;
  while not cdsFolha.Eof do
    Begin
      wMensagem := wMensagem + IntToStr(cdsFolhabdIDFUNCIONARIO.AsInteger) + ' | ' +
                    CurrToStr(cdsFolhabdSALARIOLIQUIDO.AsCurrency) + #13;
      cdsFolha.Next;
    End;
  showMessage(wMensagem);
end;

procedure TfrFolhaPagamento.edValeTranspChange(Sender: TObject);
begin
  pCalculaDescontos;             
end;

procedure TfrFolhaPagamento.grFuncionarioCellClick(Column: TColumn);
begin
  edCodigo.Text := IntToStr(cdsFuncionariobdCODIGO.AsInteger);
  edNomeCadastro.Text := cdsFuncionariobdNOME.AsString;
  cbCargo.ItemIndex := cdsFuncionariobdCARGO.AsInteger;
  edEndereco.Text := cdsFuncionariobdENDERECO.AsString;
  edTelefone.Text := cdsFuncionariobdTELEFONE.AsString;
  btDeletarFuncionario.Enabled := True;
end;

procedure TfrFolhaPagamento.grFolhaCellClick(Column: TColumn);
begin
  //Valida se tem um valor na coluna clicada para não jogar erro
  if Column.Field.AsString = '' then
     Begin
       Exit
     End;
  //Carrega os dados nos campos
  cbNome.ItemIndex := cbNome.Items.IndexOf(cdsFolhabdNOMEFUNCIONARIO.AsString);
  cbMes.ItemIndex := cbMes.Items.IndexOf(cdsFolhabdMES.AsString);
  edAno.Text := cdsFolhabdANO.AsString;
  edSalarioBase.Text := cdsFolhabdSALARIOBASE.AsString;
  edHoraExtra.Text := cdsFolhabdHORAEXTRA.AsString;
  edOutros.Text := cdsFolhabdOUTROS.AsString;
  edInss.Text := cdsFolhabdINSS.AsString;
  edIrrf.Text := cdsFolhabdIRRF.AsString;
  edValeTransp.Text := cdsFolhabdVALETRANSP.AsString;
  edTotalProventos.Text := cdsFolhabdTOTALPROVENTOS.AsString;
  edTotalDescontos.Text := cdsFolhabdTOTALDESCONTOS.AsString;
  edSalarioLiquido.Text := cdsFolhabdSALARIOLIQUIDO.AsString;
  btDeletar.Enabled := True;
end;

function TfrFolhaPagamento.fCalculaINSS: Currency;
var
  wSalarioBase: Currency;
  wAliquotaFaixa1:Currency;
  wAliquotaFaixa2:Currency;
  wAliquotaFaixa3: Currency;
  wAliquotaFaixa4: Currency;
  wValorFinal: Currency;
begin
  wValorFinal := 0;
  wSalarioBase := StrToCurr(edTotalProventos.Text);
  //7,5%
  wAliquotaFaixa1 := 0.075;
  //9,0%
  wAliquotaFaixa2 := 0.09;
  //12%
  wAliquotaFaixa3 := 0.12;
  //14%
  wAliquotaFaixa4 := 0.14;

  if wSalarioBase <= 1621 then
     wValorFinal := wSalarioBase * wAliquotaFaixa1
  else if (wSalarioBase > 1621) AND (wSalarioBase <= 2902.84) then
     Begin
       wValorFinal := 1621 * wAliquotaFaixa1;
       wValorFinal := wValorFinal + ((wSalarioBase - 1621.01) * wAliquotaFaixa2)
     End
  else if (wSalarioBase > 2902.84) AND (wSalarioBase <= 4354.27) then
     Begin
       wValorFinal := 1621 * wAliquotaFaixa1;
       wValorFinal := wValorFinal + ((2902.84 - 1621.01) * wAliquotaFaixa2);
       wValorFinal := wValorFinal + ((wSalarioBase - 2902.84) * wAliquotaFaixa3)
     End
  else if wSalarioBase > 4354.28 then
     Begin
       wValorFinal := 1621 * wAliquotaFaixa1;
       wValorFinal := wValorFinal + ((2902.84 - 1621.01) * wAliquotaFaixa2);
       wValorFinal := wValorFinal + ((4354.27 - 2902.84) * wAliquotaFaixa3);
       wValorFinal := wValorFinal + ((8475.55 - 4354.27) * wAliquotaFaixa4);
     End;
  Result := RoundTo(wValorFinal, -2);
end;

procedure TfrFolhaPagamento.btDeletarClick(Sender: TObject);
begin
  cdsFolha.Delete;
  btDeletar.Enabled := False;
  pLimpaCamposFolhaPagamento;
end;

procedure TfrFolhaPagamento.edAnoExit(Sender: TObject);
begin
//Pesquisa por Id, Mes e depois ano para achar os dados para editar
  cdsFolha.IndexFieldNames := 'bdIDFUNCIONARIO';
  if cdsFolha.FindKey([edCodigoFuncionario.Text]) then
     Begin
       cdsFolha.IndexFieldNames := 'bdMES';
       if (cdsFolha.FindKey([cbMes.Items[cbMes.ItemIndex]])) then
          Begin
            cdsFolha.IndexFieldNames := 'bdANO';
            if (cdsFolha.FindKey([edAno.Text])) then
               Begin
                 edSalarioBase.Text := cdsFolhabdSALARIOBASE.AsString;
                 edHoraExtra.Text := cdsFolhabdHORAEXTRA.AsString;
                 edOutros.Text := cdsFolhabdOUTROS.AsString;
                 edInss.Text := cdsFolhabdINSS.AsString;
                 edIrrf.Text := cdsFolhabdIRRF.AsString;
                 edValeTransp.Text := cdsFolhabdVALETRANSP.AsString;
                 edTotalProventos.Text := cdsFolhabdTOTALPROVENTOS.AsString;
                 edTotalDescontos.Text := cdsFolhabdTOTALDESCONTOS.AsString;
                 edSalarioLiquido.Text := cdsFolhabdSALARIOLIQUIDO.AsString;
               End
            else
               Begin
                 pLimpaCamposFolhaPagamento;
               End
          End
      else
         Begin
           pLimpaCamposFolhaPagamento;
        End;
    End;
  edSalarioBase.SetFocus;
  edSalarioBase.SelectAll;
end;

procedure TfrFolhaPagamento.cbMesSelect(Sender: TObject);
begin
//Preciso primeiro procurar pelo Funcionário e depois pelo mês
//para conseguir puxar os dados
  cdsFolha.IndexFieldNames := 'bdIDFUNCIONARIO';
  if cdsFolha.FindKey([edCodigoFuncionario.Text]) then
     Begin
       cdsFolha.IndexFieldNames := 'bdMES';
       if (cdsFolha.FindKey([cbMes.Items[cbMes.ItemIndex]])) then
          Begin
            edSalarioBase.Text := cdsFolhabdSALARIOBASE.AsString;
            edHoraExtra.Text := cdsFolhabdHORAEXTRA.AsString;
            edOutros.Text := cdsFolhabdOUTROS.AsString;
            edInss.Text := cdsFolhabdINSS.AsString;
            edIrrf.Text := cdsFolhabdIRRF.AsString;
            edValeTransp.Text := cdsFolhabdVALETRANSP.AsString;
            edTotalProventos.Text := cdsFolhabdTOTALPROVENTOS.AsString;
            edTotalDescontos.Text := cdsFolhabdTOTALDESCONTOS.AsString;
            edSalarioLiquido.Text := cdsFolhabdSALARIOLIQUIDO.AsString;
          End
       else
          Begin
            pLimpaCamposFolhaPagamento;
          End;
     End;
  if edAno.Text <> '' then
     Begin
       edSalarioBase.SetFocus;
     End
  else
     edAno.SetFocus
end;

procedure TfrFolhaPagamento.btDeletarFuncionarioClick(Sender: TObject);
begin
  cdsFuncionario.Delete;
  btDeletarFuncionario.Enabled := False;
  edCodigo.SetFocus;
  pLimpaCamposFuncionario;
end;

procedure TfrFolhaPagamento.btCadastrarCargoClick(Sender: TObject);
begin
  pnCargo.Left := 136;
  pnCargo.Visible := True;
end;

procedure TfrFolhaPagamento.btSalvarCargoClick(Sender: TObject);
var
  wContador:Integer;
begin
  if not fValidaCadastroCargo then
     Begin
       Exit
     End;

  for wContador := 0 to cbCargo.Items.Count do
    Begin
      if edCargoCad.Text = cbCargo.Items[wContador] then
         Begin
           showMessage('Cargo já cadastrado');
           Exit
         End;
    End;
  cbCargo.Items.Add(edCargoCad.Text);
  showMessage('Cargo adicionado com sucesso');
end;

procedure TfrFolhaPagamento.btFecharCargoClick(Sender: TObject);
begin
  pnCargo.Visible := False;
  edCargoCad.Text := '';
end;

procedure TfrFolhaPagamento.grFolhaDblClick(Sender: TObject);
var
  wMensagem:String;
  wContador:Integer;
begin
  if cdsFolha.IsEmpty then
     Begin
       showMessage('Não há folhas cadastradas');
       Exit
     End;

  wMensagem := '';
  for wContador := 0 to cdsFolha.FieldCount - 1 do
    Begin
      wMensagem := wMensagem + grFolha.Columns[wContador].Title.Caption + ': ' + cdsFolha.Fields[wContador].AsString + #13;
    End;

  showMessage(wMensagem);
end;

procedure TfrFolhaPagamento.grFuncionarioTitleClick(Column: TColumn);
begin
  cdsFuncionario.IndexFieldNames := Column.FieldName;
end;

procedure TfrFolhaPagamento.grFolhaTitleClick(Column: TColumn);
begin
  cdsFolha.IndexFieldNames := Column.FieldName;
end;
function TfrFolhaPagamento.fValidaCadastroCargo: Boolean;
var
  wContador:Integer;
begin
  //Validará se o campo está preenchido corretamente e se já possui o cargo
  Result := False;
  if Trim(edCargoCad.Text) = '' then
     Begin
      showMessage('Cargo inválido');
      Exit
     End;

  wContador := 0;
  while wContador < cbCargo.Items.Count do
    Begin
      if cbCargo.Items[wContador] = edCargoCad.Text then
         Begin
           showMessage('O cargo já existe');
           Exit
         End;
      Inc(wContador);
    End;
  Result := True;
end;

procedure TfrFolhaPagamento.grFuncionarioDblClick(Sender: TObject);
var
  wContador:Integer;
  wMensagem:String;
begin
  if cdsFuncionario.IsEmpty then
     Begin
       Exit
     End;
  wMensagem := '';
  for wContador := 0 to cdsFuncionario.FieldCount -1 do
    Begin
      wMensagem := wMensagem + grFuncionario.Columns[wContador].Title.Caption + ': ' + cdsFuncionario.Fields[wContador].AsString + #13;
    End;
  showMessage(wMensagem);
end;

end.
