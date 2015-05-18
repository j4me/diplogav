unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RVStyle, RVScroll,
  RichView, Vcl.ButtonGroup, Vcl.Buttons;

type
  TForm9 = class(TForm)
    RichView1: TRichView;
    RVStyle1: TRVStyle;
    Button3: TButton;
    Button1: TButton;
    Button2: TButton;
    SpeedButton1: TSpeedButton;
    StaticText1: TStaticText;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  chapter: Integer;
  rs: TResourceStream;

implementation

{$R *.dfm}


procedure TForm9.Button3Click(Sender: TObject);
begin
  Form9.Close;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
  chapter := chapter - 1;
  case chapter of
  0:
  begin
  RichView1.Clear;
  Button1.Visible := False;
  StaticText1.Caption := '1.1 Цели, задачи и функции управления сетями связи';
  rs := TResourceStream.Create(hinstance, 'Resource_1', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  1:
  begin
  RichView1.Clear;
  StaticText1.Caption := '1.2 Основные принципы построения системы мониторинга';
  rs := TResourceStream.Create(hinstance, 'Resource_2', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  2:
  begin
  RichView1.Clear;
  StaticText1.Caption := '1.3 Архитектура системы мониторинга';
  rs := TResourceStream.Create(hinstance, 'Resource_3', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  3:
  begin
  RichView1.Clear;
  StaticText1.Caption := '1.4 Использование на предприятии АПК «ТЕХНОТРОНИКС.SQL»';
  rs := TResourceStream.Create(hinstance, 'Resource_4', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  4:
  begin
  RichView1.Clear;
  StaticText1.Caption := '1.5 Объектовые устройства, отвечающие за сбор информации';
  rs := TResourceStream.Create(hinstance, 'Resource_5', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  5:
  begin
  RichView1.Clear;
  StaticText1.Caption := '2.1 Сущность, задачи и функции диспетчерских служб';
  rs := TResourceStream.Create(hinstance, 'Resource_6', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  6:
  begin
  RichView1.Clear;
  StaticText1.Caption := '2.2 Организация работы при возникновении чрезвычайных ситуациях';
  rs := TResourceStream.Create(hinstance, 'Resource_7', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  7:
  begin
  RichView1.Clear;
  StaticText1.Caption := '2.3 Круглосуточный мониторинг по системе КСУ-диспетчер';
  Button2.Visible := True;
  rs := TResourceStream.Create(hinstance, 'Resource_8', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  chapter := chapter + 1;
  case chapter of
  1:
  begin
  RichView1.Clear;
  StaticText1.Caption := '1.2 Основные принципы построения системы мониторинга';
  Button1.Visible := True;
  rs := TResourceStream.Create(hinstance, 'Resource_2', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  2:
  begin
  RichView1.Clear;
  StaticText1.Caption := '1.3 Архитектура системы мониторинга';
  rs := TResourceStream.Create(hinstance, 'Resource_3', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  3:
  begin
  RichView1.Clear;
  StaticText1.Caption := '1.4 Использование на предприятии АПК «ТЕХНОТРОНИКС.SQL»';
  rs := TResourceStream.Create(hinstance, 'Resource_4', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  4:
  begin
  RichView1.Clear;
  StaticText1.Caption := '1.5 Объектовые устройства, отвечающие за сбор информации';
  rs := TResourceStream.Create(hinstance, 'Resource_5', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  5:
  begin
  RichView1.Clear;
  StaticText1.Caption := '2.1 Сущность, задачи и функции диспетчерских служб';
  rs := TResourceStream.Create(hinstance, 'Resource_6', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  6:
  begin
  RichView1.Clear;
  StaticText1.Caption := '2.2 Организация работы при возникновении чрезвычайных ситуациях';
  rs := TResourceStream.Create(hinstance, 'Resource_7', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  7:
  begin
  RichView1.Clear;
  StaticText1.Caption := '2.3 Круглосуточный мониторинг по системе КСУ-диспетчер';
  rs := TResourceStream.Create(hinstance, 'Resource_8', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  8:
  begin
  RichView1.Clear;
  StaticText1.Caption := '2.4 Алгоритм  взаимодействия служб  ГЦТ';
  Button2.Visible := False;
  rs := TResourceStream.Create(hinstance, 'Resource_9', RT_RCDATA);
  Form9.RichView1.LoadRTFFromStream(rs);
  RichView1.Format;
  end;
  end;
end;


procedure TForm9.FormCreate(Sender: TObject);
begin
if chapter = 0 then
   Button1.Visible := False;
if chapter = 8 then
   Button2.Visible := False;
end;

procedure TForm9.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    begin
      ExStyle := ExStyle or WS_EX_TOOLWINDOW;
      WndParent := GetDesktopWindow;
    end;
end;

end.

