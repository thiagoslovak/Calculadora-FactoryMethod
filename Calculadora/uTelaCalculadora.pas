unit uTelaCalculadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, uCalculadora;

type
  TFCalculadora = class(TForm)
    btn00: TBitBtn;
    btn01: TBitBtn;
    btn02: TBitBtn;
    btn03: TBitBtn;
    btn04: TBitBtn;
    btn05: TBitBtn;
    btn06: TBitBtn;
    btn07: TBitBtn;
    btn08: TBitBtn;
    btn09: TBitBtn;
    EdtVisor: TEdit;
    btnClear: TBitBtn;
    btnIgual: TBitBtn;
    btnMenos: TBitBtn;
    btnMultiplicacao: TBitBtn;
    btnDivisao: TBitBtn;
    btnMais: TBitBtn;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn00Click(Sender: TObject);
    procedure btn01Click(Sender: TObject);
    procedure btn02Click(Sender: TObject);
    procedure btn03Click(Sender: TObject);
    procedure btn04Click(Sender: TObject);
    procedure btn05Click(Sender: TObject);
    procedure btn06Click(Sender: TObject);
    procedure btn07Click(Sender: TObject);
    procedure btn08Click(Sender: TObject);
    procedure btn09Click(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnDivisaoClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnMaisClick(Sender: TObject);
    procedure btnMenosClick(Sender: TObject);
    procedure btnMultiplicacaoClick(Sender: TObject);
  private
    FCalculadora: TOperacao;
    function GetValorVisor: Double;
  end;

var
  FCalculadora: TFCalculadora;
  vgValor_Atual: Double;
  vgOperacao: Integer;

implementation
  
{$R *.dfm}

procedure TFCalculadora.FormCreate(Sender: TObject);
begin
  Self.FCalculadora := TOperacao.Create;
end;

procedure TFCalculadora.FormDestroy(Sender: TObject);
begin
  Self.FCalculadora.Free;
end;

procedure TFCalculadora.btn00Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '0';
end;

procedure TFCalculadora.btn01Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '1';
end;

procedure TFCalculadora.btn02Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '2';
end;

procedure TFCalculadora.btn03Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '3';
end;

procedure TFCalculadora.btn04Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '4';
end;

procedure TFCalculadora.btn05Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '5';
end;

procedure TFCalculadora.btn06Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '6';
end;

procedure TFCalculadora.btn07Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '7';
end;

procedure TFCalculadora.btn08Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '8';
end;

procedure TFCalculadora.btn09Click(Sender: TObject);
begin
  EdtVisor.Text := EdtVisor.Text + '9';
end;

procedure TFCalculadora.btnClearClick(Sender: TObject);
begin
  EdtVisor.Text := '';
end;

procedure TFCalculadora.btnDivisaoClick(Sender: TObject);
begin
  Self.FCalculadora.IsDivisaoValor(Self.GetValorVisor);
  EdtVisor.Text := '';
end;

procedure TFCalculadora.btnIgualClick(Sender: TObject);
var
  vValor_Retorno: Double;
begin
  vValor_Retorno := Self.FCalculadora.Resultado(Self.GetValorVisor);

  EdtVisor.Text := FloatToStr(vValor_Retorno);
end;

procedure TFCalculadora.btnMaisClick(Sender: TObject);
begin
  Self.FCalculadora.IsAdicionaValor(Self.GetValorVisor);
  EdtVisor.Text := '';
end;

procedure TFCalculadora.btnMenosClick(Sender: TObject);
begin
  Self.FCalculadora.IsSubtraiValor(Self.GetValorVisor);
  EdtVisor.Text := '';
end;

procedure TFCalculadora.btnMultiplicacaoClick(Sender: TObject);
begin
  Self.FCalculadora.IsMultiplicaoValor(Self.GetValorVisor);
  EdtVisor.Text := '';
end;

function TFCalculadora.GetValorVisor: Double;
begin
  Result := StrToFloatDef(EdtVisor.Text, 0);
end;

end.
