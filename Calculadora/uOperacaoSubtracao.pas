unit uOperacaoSubtracao;

interface

uses
  uCalculaOperacao;

type
  TOperacaoSubtracao = class(TInterfacedObject, ICalculaOperacao)
  public
    function Executa(const AValorEsquerda, AValorDireita: Double): Double;
  end;
  
implementation

{ TOperacaoSubtracao }

function TOperacaoSubtracao.Executa(const AValorEsquerda, AValorDireita: Double): Double;
begin
  Result := AValorEsquerda - AValorDireita;
end;

end.
