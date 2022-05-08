unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnMostrar: TButton;
    Label3: TLabel;
    txtNum: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Memo1: TMemo;
    txtQuant: TEdit;
    procedure btnMostrarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.btnMostrarClick(Sender: TObject);
var num, i, quant, conta : Integer;
begin
   num := StrToInt(txtNum.text);
   quant := StrToInt(txtQuant.text);
   Memo1.Lines.Add('Mostrando tabuada do número ' + IntToStr(num));

   for i:=1 to quant do
     begin
        conta := num * i;
        Memo1.Lines.Add(IntToStr(num) + ' X ' + IntToStr(i) + ' = ' + IntToStr(conta));
     end;
   Memo1.Lines.Add('');
end;


end.

