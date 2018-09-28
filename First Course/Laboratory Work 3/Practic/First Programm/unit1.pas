unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TMainForm }

  TMainForm = class(TForm)
    priceLabel: TLabel;
    UnitLabel: TLabel;
    RunButton: TButton;
    ClearButton: TButton;
    NameEdit: TEdit;
    XLabel: TLabel;
    WeightEdit: TEdit;
    YLabel: TLabel;
    procedure ClearButtonClick(Sender: TObject);
    procedure RunButtonClick(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;
  productName:String;
  productPrice, productWeight:REAL;


implementation

{$R *.lfm}

{ TMainForm }

procedure TMainForm.RunButtonClick(Sender: TObject);
begin
 productName := NameEdit.Text; //Название конфет
 productWeight := StrToFloat(WeightEdit.Text);  //Вес конфет
 productPrice := 0; //Итоговая цена конфет

// Начало условия
//Красная шапочка
 if productName = 'Красная шапочка' then
  begin
   productPrice := 350 * productWeight;
   priceLabel.Caption := 'Стоимость конфет: ' + FloatToStr(productPrice)
  end

// Алые паруса
 else if productName = 'Алые паруса' then
  begin
   productPrice := 380 * productWeight;
   priceLabel.Caption := 'Стоимость конфет: ' + FloatToStr(productPrice)
  end

//Воронежские
 else if productName = 'Воронежские' then
  begin
   productPrice := 240 * productWeight;
   priceLabel.Caption := 'Стоимость конфет: ' + FloatToStr(productPrice)
  end

// Чародейка
 else if productName = 'Чародейка' then
  begin
   productPrice := 270 * productWeight;
   priceLabel.Caption := 'Стоимость конфет: ' + FloatToStr(productPrice)
  end
 else
  begin
   priceLabel.Caption := 'Ошибка в названии конфет';
  end

//Конец условия
end;

procedure TMainForm.ClearButtonClick(Sender: TObject);
begin
  NameEdit.Clear;
  WeightEdit.Clear;
end;



end.

