unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
    runButton: TButton;
    clearButton: TButton;
    XEdit: TEdit;
    XLabel: TLabel;
    resultLabel: TLabel;
    procedure clearButtonClick(Sender: TObject);
    procedure runButtonClick(Sender: TObject);
  private

  public

  end;

var
  MainForm: TMainForm;
  x, y: integer;
implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.runButtonClick(Sender: TObject);
begin

 x := StrToInt(XEdit.Text);

 if (x < -3) then
  begin
   y := 3;
   resultLabel.Caption := 'Y= ' + inttostr(y);
  end

 else if (x >= -3) and (x < 2) then
  begin
   y := 4;
   resultLabel.Caption := 'Y= ' + inttostr(y);
  end

 else if (x >= 2) then
  begin
   y := 1;
   resultLabel.Caption := 'Y= ' + inttostr(y);
  end

 else
  resultLabel.Caption := 'Вы ввели не существующий промежуток';

end;

procedure TMainForm.clearButtonClick(Sender: TObject);
begin
 XEdit.Clear;
 resultLabel.Caption := '';
end;

end.

