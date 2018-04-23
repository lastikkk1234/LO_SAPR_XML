unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Xml: TStringList;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
// создаем объект
   Xml := TStringList. Create;

   // формируем документ
   Xml. Add ('<?xml version="1.0" encoding="UTF-8"?>');
   Xml. Add ('<response>');
   Xml. Add ('    <osmp_txn_id>123456789</osmp_txn_id>');
   Xml. Add ('    <result>0</result>');
   Xml. Add ('    <comment></comment>');
   Xml. Add ('    <pay_id>XXXX</pay_id>');
   Xml. Add ('</response>');

   // записываем
   Xml. SaveToFile ('C:\Example2.xml');

   // освобождаем память
   FreeAndNil (Xml);
end;



end.
