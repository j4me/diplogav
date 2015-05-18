unit ABOUT1;

interface

uses WinApi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TAboutBox1 = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure OKButtonClick(Sender: TObject);

    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox1: TAboutBox1;

implementation

{$R *.dfm}

uses Unit1;

procedure TAboutBox1.FormCreate(Sender: TObject);
begin

   BorderStyle := bsNone;
end;

procedure TAboutBox1.OKButtonClick(Sender: TObject);
begin
close;
Form1.FormStyle:= fsStayOnTop;
end;



end.

