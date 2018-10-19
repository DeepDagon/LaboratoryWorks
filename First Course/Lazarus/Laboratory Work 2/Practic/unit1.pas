(* 1. Обменять значения двух переменных, используя третью переменную *)
(* 2. Найти значение функции для выражения 1 из таблицы *)

unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
    Button1: TButton;
    XEdit: TEdit;
    InfoLabelA: TLabel;
    InfoLabelB: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RunButton: TButton;
    AEdit: TEdit;
    BEdit: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure RunButtonClick(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;
  a, b, c, x: integer;
  y :real;
  s :string;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.RunButtonClick(Sender: TObject);
begin
 (* Переменные принимают значения заданные в соответствующих полях ввода *)
 a := strtoint(AEdit.Text);
 b := strtoint(BEdit.Text);

 (* Выполнение условия задачи *)
 (* c - это буфферная переменная *)
 c := a;
 a := b;
 b := c;

 (* Информация о значении переменных в реальном времени *)
 InfoLabelA.Caption := 'Переменная a равна: ' + inttostr(a);
 InfoLabelB.Caption := 'Переменная b равна: ' + inttostr(b);

end;

 (* Второе задание *)
procedure TMainForm.Button1Click(Sender: TObject);
begin
 x := strtoint(XEdit.Text);
 y := ln(Exp(x) + Sqrt(1+Exp(2*x)));
 Str(y : 5 : 2, s);
 Label3.Caption := 'Выражение равняется: ' + s;
end;

end.

