unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm2 = class(TForm)
    StaticText1: TStaticText;
    DBCheckBox1: TDBCheckBox;
    StaticText2: TStaticText;
    DBCheckBox2: TDBCheckBox;
    Button1: TButton;
    StaticText3: TStaticText;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  count:integer;
   i,s:integer;

implementation

{$R *.dfm}

 {
procedure TForm1.Button1Click(Sender: TObject);
begin

 s:=s+1;


case s of
1:
begin
StaticText1.Caption := 'кноюрю';
Button3.Caption := 'кноюрю';
end;
2:StaticText1.Caption := 'GAVNO2';
3:StaticText1.Caption := 'GAVNO3';
4:StaticText1.Caption := 'GAVNO4';
5:StaticText1.Caption := 'GAVNO5';
else      StaticText1.Caption := 'AGON';
end;


end;
     }
end.
