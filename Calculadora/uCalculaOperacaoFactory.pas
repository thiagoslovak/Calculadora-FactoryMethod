unit uCalculaOperacaoFactory;

interface

uses
  uCalculaOperacao,
  uTipoOperacao;

type
  TCalculaOperacaoFactory = class
  public
    class function GetInstance(const ATipoOperacao: TTipoOperacao): ICalculaOperacao;
  end;
  
implementation

uses
  uOperacaoAdicao,
  uOperacaoSubtracao,
  uOperacaoMultiplicacao,
  uOperacaoDivisao;
  
{ TCalculaOperacaoFactory }

class function TCalculaOperacaoFactory.GetInstance(const ATipoOperacao: TTipoOperacao): ICalculaOperacao;
begin
  case AtipoOperacao of
    toAdicao: Result := TOperacaoAdicao.Create;
    toSubtracao: Result := TOperacaoSubtracao.Create;
    toMultiplicacao: Result := TOperacaoMultiplicacao.Create;
    toDivisao: Result := TOperacaoDivisao.Create;
  end;
end;

end.
