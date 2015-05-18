unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit9,  Winapi.DwmApi;

type
  TForm8 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;
  pvAttribute: Integer;
  iPercentage: Integer;
  rs: TResourceStream;



implementation

{$R *.dfm}

const

ScreenWidth: LongInt = 800;
ScreenHeight: LongInt = 800;

procedure TForm8.Button10Click(Sender: TObject);
begin
 Form8.Close;
end;

procedure TForm8.Button1Click(Sender: TObject);
begin
  chapter := 0;
  Form9.StaticText1.Caption := '1.1 Цели, задачи и функции управления сетями связи';
  Form9.Show;
  Form9.RichView1.Clear;
  rs := TResourceStream.Create(hinstance, 'Resource_1', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  Form9.RichView1.Format;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  chapter := 1;
  Form9.StaticText1.Caption := '1.2 Основные принципы построения системы мониторинга';
  Form9.Show;
  Form9.RichView1.Clear;
  rs := TResourceStream.Create(hinstance, 'Resource_2', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  Form9.RichView1.Format;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
  chapter := 2;
  Form9.StaticText1.Caption := '1.3 Архитектура системы мониторинга';
  Form9.Show;
  Form9.RichView1.Clear;
  rs := TResourceStream.Create(hinstance, 'Resource_3', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  Form9.RichView1.Format;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
  chapter := 3;
  Form9.StaticText1.Caption := '1.4 Использование на предприятии АПК «ТЕХНОТРОНИКС.SQL»';
  Form9.Show;
  Form9.RichView1.Clear;
  rs := TResourceStream.Create(hinstance, 'Resource_4', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  Form9.RichView1.Format;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
  chapter := 4;
  Form9.StaticText1.Caption := '1.5 Объектовые устройства, отвечающие за сбор информации';
  Form9.Show;
  Form9.RichView1.Clear;
  rs := TResourceStream.Create(hinstance, 'Resource_5', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  Form9.RichView1.Format;
end;

procedure TForm8.Button6Click(Sender: TObject);
begin
  chapter := 5;
  Form9.StaticText1.Caption := '2.1 Сущность, задачи и функции диспетчерских служб';
  Form9.Show;
  Form9.RichView1.Clear;
  rs := TResourceStream.Create(hinstance, 'Resource_6', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  Form9.RichView1.Format;
end;

procedure TForm8.Button7Click(Sender: TObject);
begin
  chapter := 6;
  Form9.StaticText1.Caption := '2.2 Организация работы при возникновении чрезвычайных ситуациях';
  Form9.Show;
  Form9.RichView1.Clear;
  rs := TResourceStream.Create(hinstance, 'Resource_7', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  Form9.RichView1.Format;
end;

procedure TForm8.Button8Click(Sender: TObject);
begin
  chapter := 7;
  Form9.StaticText1.Caption := '2.3 Круглосуточный мониторинг по системе КСУ-диспетчер';
  Form9.Show;
  Form9.RichView1.Clear;
  rs := TResourceStream.Create(hinstance, 'Resource_8', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  Form9.RichView1.Format;
end;

procedure TForm8.Button9Click(Sender: TObject);
begin
  chapter := 8;
  Form9.StaticText1.Caption := '2.4 Алгоритм  взаимодействия служб  ГЦТ';
  Form9.Show;
  Form9.RichView1.Clear;
  rs := TResourceStream.Create(hinstance, 'Resource_9', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  Form9.RichView1.Format;
end;

procedure TForm8.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    begin
      ExStyle := ExStyle or WS_EX_TOOLWINDOW;
      WndParent := GetDesktopWindow;
    end;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
  pvAttribute:= DWMFLIP3D_EXCLUDEABOVE;
  if DwmCompositionEnabled then
     DwmSetWindowAttribute(Handle, DWMWA_FLIP3D_POLICY, @pvAttribute, Sizeof(Integer));

     scaled := true;
if (screen.width <> ScreenWidth) then
begin
height := longint(height) * longint(screen.height) div ScreenHeight;
width := longint(width) * longint(screen.width) div ScreenWidth;
scaleBy(screen.width, ScreenWidth);
end;
end;

end.
