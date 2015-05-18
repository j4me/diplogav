unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RVScroll, RichView,
  RVStyle;

type
  TForm10 = class(TForm)
    RichView1: TRichView;
    Button1: TButton;
    RVStyle1: TRVStyle;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  rs: TResourceStream;

implementation

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm10.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    begin
      ExStyle := ExStyle or WS_EX_TOOLWINDOW;
      WndParent := GetDesktopWindow;
    end;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
   RichView1.Clear;
   rs := TResourceStream.Create(hinstance, 'Resource_10', RT_RCDATA);
   RichView1.LoadRTFFromStream(rs);
   RichView1.Format;
end;

end.
