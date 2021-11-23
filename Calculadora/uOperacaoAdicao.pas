unit uOperacaoAdicao;

interface

uses
  uCalculaOperacao;
  
type
  TOperacaoAdicao = class(TInterfacedObject, ICalculaOperacao)
  public
    function Executa(const AValorEsquerda, AValorDireita: Double): Double;
  end;
implementation

{ TOperacaoAdicao }

function TOperacaoAdicao.Executa(const AValorEsquerda, AValorDireita: Double): Double;
begin
  Result := AValorEsquerda + AValorDireita;
end;

end.
