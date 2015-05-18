unit Unit3;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  Winapi.DwmApi,
  Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ExtCtrls;


type
  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    StaticText1: TStaticText;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
  public
      count:integer;
  end;

var
  Form3: TForm3;
   pvAttribute: Integer;
   iPercentage:integer;
   i:integer;

implementation

{$R *.dfm}

uses Unit1, Unit4, Unit6, Unit7;
const
ScreenWidth: LongInt = 800;
ScreenHeight: LongInt = 800;




procedure TForm3.Button1Click(Sender: TObject);
begin
  FormStyle:= fsNormal;
  close;
  Form7.ShowModal;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form3.FormStyle:= fsNormal;
  Form4.FormStyle:= fsStayOnTop;
  Form4.ShowModal;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  Form6.FormStyle:= fsStayOnTop;
  Form3.FormStyle:= fsNormal;
  Form6.ShowModal;
end;


procedure TForm3.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    begin
      ExStyle := ExStyle or WS_EX_TOOLWINDOW;
      WndParent := GetDesktopWindow;
    end;
end;


procedure TForm3.FormCreate(Sender: TObject);
begin

statictext1.Caption:='  ������ ������� �������� 30 �������� � ��������� ������������������. ��� ���������� ������ �� 26-30'+' �������� ������������ ������ �5�. ��� ���������� ������ �� 23-25  �������� ������ �4�. ��� ���������� ������ �� 20-22  �������� ������ �3�. ��� ���������� ����������'+' ������� ������ 19 �������� ������ �2�.  �� ��������� ������������ ��������� ��������� �����. ��� ������������� ������ ������� ������� �� ��������� ��� ��������� �� ������� �������� �����.'+' ��� ������������� ������ ������������ � ���������� ��� ���������� �������� �������������� ���������, ����� ���� �������� �������� ����.';
statictext1.Font.Size:=15;
BorderStyle := bsNone;
WindowState:=wsMaximized;
pvAttribute:= DWMFLIP3D_EXCLUDEABOVE;
if DwmCompositionEnabled then
     DwmSetWindowAttribute(Handle, DWMWA_FLIP3D_POLICY, @pvAttribute, Sizeof(Integer));

     scaled := true;
     if count=2 then
           begin
             end
              else
              begin

if (screen.width <> ScreenWidth) then
begin
      count:=2;
height := longint(height) * longint(screen.height) div ScreenHeight;
width := longint(width) * longint(screen.width) div ScreenWidth;
scaleBy(screen.width, ScreenWidth);

end;
end;
end;



procedure TForm3.Image1Click(Sender: TObject);
begin
close;
form1.Close;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
close;
form1.Close;
end;

end.
