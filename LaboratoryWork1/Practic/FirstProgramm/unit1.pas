unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
    BlueButton: TButton;
    PanelLoweredButton: TButton;
    PanelNoneButton: TButton;
    PanelRaisedButton: TButton;
    FrameLabel: TLabel;
    Panel1: TPanel;
    TaskButton: TButton;
    PurpleButton: TButton;
    RedButton: TButton;
    ExitButton: TButton;
    EditLabelButton: TButton;
    Label1: TLabel;
    LabelPL: TLabel;
    procedure BlueButtonClick(Sender: TObject);
    procedure PanelLoweredButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PanelNoneButtonClick(Sender: TObject);
    procedure PanelRaisedButtonClick(Sender: TObject);
    procedure PurpleButtonClick(Sender: TObject);
    procedure RedButtonClick(Sender: TObject);
    procedure EditLabelButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure LabelPLClick(Sender: TObject);
    procedure TaskButtonClick(Sender: TObject);
  private

  public

  end;

var
  MainForm: TMainForm;
implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.FormCreate(Sender: TObject);
begin

end;

procedure TMainForm.LabelPLClick(Sender: TObject);
begin

end;

procedure TMainForm.TaskButtonClick(Sender: TObject);
begin
  ShowMessage('Задача этой кнопки выводить сообщение об условии задачи.');
end;

procedure TMainForm.EditLabelButtonClick(Sender: TObject);
begin
  LabelPL.Caption := 'Система программирования';
end;

procedure TMainForm.PanelLoweredButtonClick(Sender: TObject);
begin
  Panel1.BevelInner := bvLowered;
  Panel1.BevelOuter := bvLowered;
end;

procedure TMainForm.PanelRaisedButtonClick(Sender: TObject);
begin
  Panel1.BevelInner := bvRaised;
  Panel1.BevelOuter := bvRaised;
end;

procedure TMainForm.PanelNoneButtonClick(Sender: TObject);
begin
  Panel1.BevelInner := bvNone;
  Panel1.BevelOuter := bvNone;
end;

procedure TMainForm.BlueButtonClick(Sender: TObject);
begin
  MainForm.Color := clBlue
end;

procedure TMainForm.PurpleButtonClick(Sender: TObject);
begin
  MainForm.Color := clPurple;
end;

procedure TMainForm.RedButtonClick(Sender: TObject);
begin
  MainForm.Color := clRed;
end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin
  ShowMessage('Спасибо за работу');
  Close;
end;

end.

