unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
    Image1: TImage;
    triangleRB: TRadioButton;
    squareRB: TRadioButton;
    rectRB: TRadioButton;
    rhombusRB: TRadioButton;
    procedure rectRBChange(Sender: TObject);
    procedure rhombusRBChange(Sender: TObject);
    procedure squareRBChange(Sender: TObject);
    procedure triangleRBChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.triangleRBChange(Sender: TObject);
begin
 image1.Picture.LoadFromFile('images/triangle.png');
end;

procedure TMainForm.squareRBChange(Sender: TObject);
begin
 image1.Picture.LoadFromFile('images/square.png');
end;

procedure TMainForm.rectRBChange(Sender: TObject);
begin
 image1.Picture.LoadFromFile('images/rect.png');
end;

procedure TMainForm.rhombusRBChange(Sender: TObject);
begin
 image1.Picture.LoadFromFile('images/rhombus.png');
end;

end.

