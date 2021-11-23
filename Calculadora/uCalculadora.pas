unit uCalculadora;

interface

uses
  uTipoOperacao;

type
  TOperacao = class
  private
    FValor_Atual: Double;
    FTipo_Operacao: TTipoOperacao;
  public
    procedure IsAdicionaValor(const AValor: Double);
    procedure IsSubtraiValor(const AValor: Double);
    procedure IsMultiplicaoValor(const AValor: Double);
    procedure IsDivisaoValor(const AValor: Double);
    function Resultado(const AValor: Double): Double;
  end;
implementation

uses
  uCalculaOperacao,
  uCalculaOperacaoFactory;
{ TAdicao }

procedure TOperacao.IsAdicionaValor(const AValor: Double);
begin
  Self.FValor_Atual := AValor;
  Self.FTipo_Operacao := toAdicao;
end;

procedure TOperacao.IsDivisaoValor(const AValor: Double);
begin
  Self.FValor_Atual := AValor;
  Self.FTipo_Operacao := toDivisao;
end;

procedure TOperacao.IsMultiplicaoValor(const AValor: Double);
begin
  Self.FValor_Atual := AValor;
  Self.FTipo_Operacao := toMultiplicacao;
end;

procedure TOperacao.IsSubtraiValor(const AValor: Double);
begin
  Self.FValor_Atual := AValor;
  Self.FTipo_Operacao := toSubtracao;
end;

function TOperacao.Resultado(const AValor: Double): Double;
var
  vCalculaOperacao: ICalculaOperacao;
begin
  vCalculaOperacao := TCalculaOperacaoFactory.GetInstance(Self.FTipo_Operacao);
  Result := vCalculaOperacao.Executa(Self.FValor_Atual, AValor);
end;

end.
