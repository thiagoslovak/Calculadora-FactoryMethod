# Factory Method :factory:

É um padrão de projeto, é usado para sair um pouco da questão procedural ou um codigo com muitos IFs, e trabalhar mais com orientação a objeto. O indicado é cada IF ser uma classe.  



## Pequeno Exemplo em Delphi :older_man:

**1º Criar uma Interface**   
```	
unit uCalculaOperacao; 

interface  

type  
  ICalculaOperacao = interface  
 	 ['{9614BEE9-A0C8-4315-A9A1-19B2F5E739C4}']  
  	function Executa(const AvalorEsquerda, AvalorDireita: Double): Double;  
  end;       

implementation  

end. 
```

**2º Que as classes tenha como errança a Interface**  

```	
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
```

**3º Na implementação criar o OBJ com retorno da Interface.** 

```	
type  
  TCalculaOperacaoFactory = class  
  public  
    class function GetInstance(const ATipoOperacao: TTipoOperacao): ICalculaOperacao;  
  end;  

class function TCalculaOperacaoFactory.GetInstance
	(const ATipoOperacao:TTipoOperacao):ICalculaOperacao;  
begin  
  case AtipoOperacao of  
    toAdicao: Result := TOperacaoAdicao.Create;  
    toSubtracao: Result := TOperacaoSubtracao.Create;  
    toMultiplicacao: Result := TOperacaoMultiplicacao.Create;  
    toDivisao: Result := TOperacaoDivisao.Create;  
end;

end.
```