unit uOperacaoMultiplicacao;

interface

uses
  uCalculaOperacao;
  
type
  TOperacaoMultiplicacao = class(TInterfacedObject, ICalculaOperacao)
    function Executa(const AValorEsquerda, AValorDireita: Double): Double;
  end;
implementation

{ TOperacaoMultiplicacao }

function TOperacaoMultiplicacao.Executa(const AValorEsquerda, AValorDireita: Double): Double;
begin
  Result := AValorEsquerda * AValorDireita;
end;

end.
