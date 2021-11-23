unit uOperacaoDivisao;

interface

uses
  uCalculaOperacao;

type
  TOperacaoDivisao = class(TInterfacedObject, ICalculaOperacao)
    function Executa(const AValorEsquerda, AValorDireita: Double): Double;
  end;
implementation

{ TOperacaoDivisao }

function TOperacaoDivisao.Executa(const AValorEsquerda, AValorDireita: Double): Double;
begin
  Result := AValorEsquerda / AValorDireita;
end;

end.
 