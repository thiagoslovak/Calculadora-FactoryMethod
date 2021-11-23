program Calculadora;

uses
  ExceptionLog,
  Forms,
  uTelaCalculadora in 'uTelaCalculadora.pas' {FCalculadora},
  uCalculadora in 'uCalculadora.pas',
  uTipoOperacao in 'uTipoOperacao.pas',
  uOperacaoSubtracao in 'uOperacaoSubtracao.pas',
  uCalculaOperacao in 'uCalculaOperacao.pas',
  uOperacaoAdicao in 'uOperacaoAdicao.pas',
  uOperacaoMultiplicacao in 'uOperacaoMultiplicacao.pas',
  uOperacaoDivisao in 'uOperacaoDivisao.pas',
  uCalculaOperacaoFactory in 'uCalculaOperacaoFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFCalculadora, FCalculadora);
  Application.Run;
end.
