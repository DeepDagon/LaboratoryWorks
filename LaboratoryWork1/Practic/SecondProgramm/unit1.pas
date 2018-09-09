unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TInfoForm }

  TInfoForm = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
  private

  public

  end;

var
  InfoForm: TInfoForm;

implementation

{$R *.lfm}

{ TInfoForm }

procedure TInfoForm.Button1Click(Sender: TObject);
begin
  ShowMessage('Компонент Button используется для задания реакции на событие');
end;

procedure TInfoForm.Panel1Click(Sender: TObject);
begin
  ShowMessage('Компонент Panel используется для размещения на ней сгруппированных компонент');
end;

end.

