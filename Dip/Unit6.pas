unit Unit6;

interface

uses
 Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  Winapi.DwmApi, Unit1,
  Vcl.ExtCtrls ;

type
  TForm6 = class(TForm)
    StaticText1: TStaticText;
    Button1: TButton;
    StaticText2: TStaticText;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    StaticText3: TStaticText;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormCreate2(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CreateParams(var Params: TCreateParams); override;
  private
    { Private declarations }
  public
    s:integer;
  sum:integer;
  end;

var
  Form6: TForm6;
  pvAttribute: Integer;
  iPercentage:integer;

implementation

{$R *.dfm}
const

ScreenWidth: LongInt = 800;
ScreenHeight: LongInt = 800;




procedure TForm6.Button1Click(Sender: TObject);
begin



case s of
1:
begin
if Radiobutton2.Checked then
begin
sum:=Sum+1;



end;
button1.Caption:='�����';
end;

2:
  begin
StaticText3.Caption := inttostr(sum);

StaticText1.Caption:='�� ��� ����� ��������������� ������������� ������:';
Statictext1.Font.Size :=35;


StaticText2.Caption := inttostr(s)+'/30';
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
CheckBox1.Visible:=true;
CheckBox1.Checked:=false;
CheckBox2.Visible:=true;
CheckBox2.Checked:=false;
CheckBox3.Visible:=true;
CheckBox3.Checked:=false;
CheckBox4.Visible:=true;
CheckBox4.Checked:=false;
CheckBox5.Visible:=true;
CheckBox5.Checked:=false;
CheckBox6.Visible:=true;
CheckBox6.Checked:=false;

     CheckBox1.Caption:='�� �������������, ��������������� �������� � ������� ���������� � ������������ ����������;';
     CheckBox2.Caption:='�� ���������������� ��������������� �� ��� �� ������������� ������������;';
     CheckBox3.Caption:='������ �� �������������, ��������������� �������� � ������� ���������� � ������������ ����������;';
     CheckBox4.Caption:='�� ������������� � ���������� ��������, ��������� � ���������� ��������� �������;';
     CheckBox5.Caption:='�� ����� ������� ���������������;';
     CheckBox6.Caption:='�� ��������������� ���������� ���, ������������� �� �����������.';

end;
3:
begin
     if ((CheckBox1.Checked)and (CheckBox2.Checked) and (CheckBox4.Checked) and (CheckBox6.Checked)) then
     begin
     sum:=Sum+1;
     StaticText3.Caption := inttostr(sum);

end;
 StaticText3.Caption := inttostr(sum);
 Radiobutton1.Visible:=false;
  Radiobutton2.Visible:=false;
 StaticText1.Caption:='����� ������� ��������� ���������, ��� ������� ������ � 2:';
 Statictext1.Font.Size :=35;


  StaticText2.Caption := inttostr(s)+'/30';
    CheckBox1.Visible:=true;
  CheckBox1.Checked:=false;
   CheckBox2.Visible:=true;
    CheckBox2.Checked:=false;
    CheckBox3.Visible:=true;
    CheckBox3.Checked:=false;
     CheckBox4.Visible:=true;
     CheckBox4.Checked:=false;
      CheckBox5.Visible:=true;
      CheckBox5.Checked:=false;
           CheckBox6.Visible:=false;
       CheckBox6.Checked:=false;
       CheckBox5.WordWrap:=true;



     CheckBox1.Caption:='����� �����������, ������� � �������� ������������	� ������������ ������������ ��������;';
     CheckBox2.Caption:='��������� ���������� ����  �� �������������� � ����������   ��������� �������� �� ���;';
     CheckBox3.Caption:='���������� ���� ��������� ������;';
     CheckBox4.Caption:='������������ ����� ������ � ���������� ��������-����������������� �����;';
     CheckBox5.Caption:='���������� �������� ���������� �� ������� �� ����� ����� ����������� ���,' +#10+
    ' ���  ������������� ������ ���������� ������ ����� �������.';

end;
4:
begin
  if ((CheckBox2.Checked)and (CheckBox3.Checked) and (CheckBox4.Checked) and (CheckBox5.Checked)) then
                begin
     sum:=Sum+1;
     StaticText3.Caption := inttostr(sum);

end;
    StaticText3.Caption := inttostr(sum);
 Radiobutton1.Visible:=true;
  Radiobutton2.Visible:=true;
 StaticText1.Caption:='  ������������� ������ - ��� ���������������� ����� ������������ ���������� �� ������ ���������� ����������� ������� �����, ����� ����������, �� ��������� � ������������� ������������ �������� � ������������� ������������:';
 Statictext1.Font.Size :=35;


  StaticText2.Caption := inttostr(s)+'/30';
    CheckBox1.Visible:=false;
  CheckBox1.Checked:=false;
   CheckBox2.Visible:=false;
    CheckBox2.Checked:=false;
    CheckBox3.Visible:=false;
    CheckBox3.Checked:=false;
     CheckBox4.Visible:=false;
     CheckBox4.Checked:=false;
      CheckBox5.Visible:=false;
      CheckBox5.Checked:=false;
           CheckBox6.Visible:=false;
       CheckBox6.Checked:=false;
       CheckBox5.WordWrap:=false;
       Radiobutton1.Checked:=False;
       Radiobutton2.Checked:=False;
       Radiobutton1.Caption:='��;';
       Radiobutton2.Caption:='���.';


end;

5:
begin
if Radiobutton1.Checked then
     sum:=Sum+1;
     StaticText3.Caption := inttostr(sum);
    StaticText2.Caption := inttostr(s)+'/30';
    Radiobutton1.Checked:=False;
    Radiobutton2.Checked:=False;
      Radiobutton1.Caption:='��;';
      Radiobutton2.Caption:='���.';
 StaticText1.Caption:='  ������������-���������� ��������� ��Ӗ10(15)�-�� ������������� ���  ���������  ������  �������,'+'  �������������  ���  ��  ���������  ���������,  ��������� ������� ������� � ������  ��  ��� � ��������������� ��������  ��  �����������  �����������  �������  �����  �������:';
 Statictext1.Font.Size :=35;
end;
6:
begin
  if Radiobutton1.Checked then
     sum:=Sum+1;
       StaticText2.Caption := inttostr(s)+'/30';
        StaticText3.Caption := inttostr(sum);
 Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
CheckBox1.Visible:=true;
CheckBox1.Checked:=false;
CheckBox2.Visible:=true;
CheckBox2.Checked:=false;
CheckBox3.Visible:=true;
CheckBox3.Checked:=false;
CheckBox4.Visible:=true;
CheckBox4.Checked:=false;
CheckBox5.Visible:=true;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
                CheckBox1.Caption:='�������� �� ���������� ���������;';
     CheckBox2.Caption:='�������� �� ���������� ����;';
     CheckBox3.Caption:='�������� � ���������� �������������;';
     CheckBox4.Caption:='���������������� ����������;';
     CheckBox5.Caption:='��� ���� �������������.';
 StaticText1.Caption:='  ����� ������ �������� ������� �����������:   ';
end;
7:
begin
  if CheckBox5.Checked then
     sum:=Sum+1;
     CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
       StaticText2.Caption := inttostr(s)+'/30';
        StaticText3.Caption := inttostr(sum);
    Radiobutton1.Checked:=False;
    Radiobutton2.Checked:=False;
    Radiobutton3.Checked:=False;
    Radiobutton3.Visible:=True;
       Radiobutton2.Visible:=True;
          Radiobutton1.Visible:=True;
      Radiobutton1.Caption:='5;';
      Radiobutton2.Caption:='2;';
      Radiobutton3.Caption:='4.';
 StaticText1.Caption:='  ������� ������� �������� ������� ����������� �� �������������� ��������:  ';
end;
8:
begin
  if Radiobutton3.Checked then
     sum:=Sum+1;
       StaticText2.Caption := inttostr(s)+'/30';
        StaticText3.Caption := inttostr(sum);
    Radiobutton1.Checked:=False;
    Radiobutton2.Checked:=False;
    Radiobutton3.Checked:=False;
            Radiobutton2.Visible:=True;
          Radiobutton1.Visible:=True;
      Radiobutton1.Caption:='�����;';
      Radiobutton2.Caption:='������������ �����;';
      Radiobutton3.Caption:='���������� ������� ����������.';
 StaticText1.Caption:='  ����� ������  �������������� ����� ������������ (���-�) �� TMN ������� �:   ';
end;
9:
begin
  if Radiobutton1.Checked then
     sum:=Sum+1;
 StaticText3.Caption := inttostr(sum);
 Radiobutton1.Visible:=true;
 Radiobutton2.Visible:=true;
 Radiobutton3.Visible:=true;
 StaticText1.Caption:=' 	������� ���������� ����� �������� �����������:';
 Statictext1.Font.Size :=35;


  StaticText2.Caption := inttostr(s)+'/30';
    CheckBox1.Visible:=false;
  CheckBox1.Checked:=false;
   CheckBox2.Visible:=false;
    CheckBox2.Checked:=false;
    CheckBox3.Visible:=false;
    CheckBox3.Checked:=false;
     CheckBox4.Visible:=false;
     CheckBox4.Checked:=false;
      CheckBox5.Visible:=false;
      CheckBox5.Checked:=false;
           CheckBox6.Visible:=false;
       CheckBox6.Checked:=false;

        Radiobutton1.Caption:='7;';
      Radiobutton2.Caption:='3;';
      Radiobutton3.Caption:='6.';




end;
10:
begin
     if Radiobutton2.Checked then

     sum:=Sum+1;
StaticText1.Caption:=' 	����� ���� ������������� ������� � ���������  �������������. SQL�:';
 Statictext1.Font.Size :=35;
        StaticText3.Caption := inttostr(sum);

  StaticText2.Caption := inttostr(s)+'/30';
    CheckBox1.Visible:=true;
  CheckBox1.Checked:=false;
   CheckBox2.Visible:=true;
    CheckBox2.Checked:=false;
    CheckBox3.Visible:=true;
    CheckBox3.Checked:=false;
     CheckBox4.Visible:=true;
     CheckBox4.Checked:=false;
      CheckBox5.Visible:=false;
      CheckBox5.Checked:=false;
           CheckBox6.Visible:=false;
       CheckBox6.Checked:=false;


          Radiobutton3.Visible:=false;
          Radiobutton2.Visible:=false;
           Radiobutton1.Visible:=false;

     CheckBox1.Caption:='�������������;';
     CheckBox2.Caption:='���������;';
     CheckBox3.Caption:='�����������;';
     CheckBox4.Caption:='��������.';

   end;

11:
 begin
     if ((CheckBox1.Checked) and (CheckBox2.Checked) and (CheckBox4.Checked)) then
     sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
StaticText2.Caption := inttostr(s)+'/30';
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  ��� ���������, ����� ���������� ������������� ����� �������������� ����������:';
Statictext1.Font.Size :=35;
CheckBox1.Visible:=true;
CheckBox1.Checked:=false;
CheckBox2.Visible:=true;
CheckBox2.Checked:=false;
CheckBox3.Visible:=true;
CheckBox3.Checked:=false;
CheckBox4.Visible:=true;
CheckBox4.Checked:=false;
CheckBox5.Visible:=true;
CheckBox5.Checked:=false;
CheckBox6.Visible:=true;
CheckBox6.Checked:=false;
CheckBox7.Visible:=true;
CheckBox7.Width:=500;
CheckBox7.Checked:=false;
CheckBox1.Caption:='�������� �������������� ���������� � �������;';
CheckBox2.Caption:='�������� �������������� ���������� � �������;';
CheckBox3.Caption:='������ ������������;';
CheckBox4.Caption:='� ��������� �������;';
CheckBox5.Caption:='���������� ����������;';
CheckBox6.Caption:='�������� � ���������� ������� �� ���������;';
CheckBox7.Caption:='� ����� ������������.';
 end;
12:
begin
 if ((CheckBox1.Checked) and (CheckBox2.Checked) and (CheckBox3.Checked) and (CheckBox5.Checked) and (CheckBox6.Checked)) then
sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  ��� ������ � ������ ������������ ����������� �������������.SQL�:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
CheckBox1.Visible:=true;
CheckBox1.Checked:=false;
CheckBox2.Visible:=true;
CheckBox2.Checked:=false;
CheckBox3.Visible:=true;
CheckBox3.Checked:=false;
CheckBox4.Visible:=true;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
CheckBox1.Caption:='������;';
CheckBox2.Caption:='�������������;';
CheckBox3.Caption:='���������;';
CheckBox4.Caption:='����������;';
CheckBox5.Caption:='��� ���� �������������.';
end;
13:
begin
   if ((CheckBox5.Checked)) then
     sum:=Sum+1;
StaticText1.Caption:='  �������� ���������� ��������� ������ ����� ��������� � ����� �� 2� ���������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='������ ��� ��������;';
Radiobutton2.Caption:='��ǻ ��� ����;';
Radiobutton3.Caption:='����.� ��� �����.�.';
end;
14:
begin
   if ((Radiobutton1.Checked)) then
     sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  � ����� ������� ������������ ��� �������������� �����������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
CheckBox1.Visible:=true;
CheckBox1.Checked:=false;
CheckBox2.Visible:=true;
CheckBox2.Checked:=false;
CheckBox3.Visible:=true;
CheckBox3.Checked:=false;
CheckBox4.Visible:=true;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
CheckBox1.Caption:='� ������ ���������� ����������� �������� �� ���������� ����� � �������� ���� ����� ����� ��� ����� ������������;';
CheckBox2.Caption:='�� ����������� ������ �� ��������� ������ ��������� ����� ����� ��� ����� ������������;';
CheckBox3.Caption:='� ������ ����������� ����� ����� ��� ����� ������������;';
CheckBox4.Caption:='��� ���� �������������.';
end;
15:
begin

   if CheckBox4.Checked then
     sum:=Sum+1;

StaticText1.Caption:='  ��� ������������, ������ ��������� ������������� ������ �������������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='������������ ������ ���������� ���������;';
Radiobutton2.Caption:='������������ ������ ���������, ����������� � ������ ���������;';
Radiobutton3.Caption:='������������ ���� ���������.';

end;
16:
begin
   if Radiobutton2.Checked then
     sum:=Sum+1;
     StaticText1.Caption:='  ��� �������� � ���� 3�� ��� �������� �����������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='��������� ���� �����;';
Radiobutton2.Caption:='��������� ���� �����;';
Radiobutton3.Caption:='����� ��������������� ��������.';

end;
17:
begin
   if Radiobutton1.Checked then
     sum:=Sum+1;

     StaticText1.Caption:='  �������� �������� �� ������� ������ ������� ����������� ��������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='��������� ���� ����;';
Radiobutton2.Caption:='����������� �������� ������������;';
Radiobutton3.Caption:='����������� �������� ������������;';
end;
18:
begin
if Radiobutton2.Checked then
     sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  ��� �� ������������� ����� ������� ������ �� �������� �������� �������������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
CheckBox1.Visible:=true;
CheckBox1.Checked:=false;
CheckBox2.Visible:=true;
CheckBox2.Checked:=false;
CheckBox3.Visible:=true;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
CheckBox1.Caption:='���������;';
CheckBox2.Caption:='�������������;';
CheckBox3.Caption:='��������.';
end;
19:
begin
    if CheckBox2.Checked then
     sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  ����� ���� �������� ���� ����� ���������� ���������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
CheckBox1.Visible:=true;
CheckBox1.Checked:=false;
CheckBox2.Visible:=true;
CheckBox2.Checked:=false;
CheckBox3.Visible:=true;
CheckBox3.Checked:=false;
CheckBox4.Visible:=true;
CheckBox4.Checked:=false;
CheckBox5.Visible:=true;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
CheckBox1.Caption:='�������� ��������;';
CheckBox2.Caption:='�����;';
CheckBox3.Caption:='��������� ���������;';
CheckBox4.Caption:='��������� �����������;';
CheckBox5.Caption:='���������� �������.';

end;
20:
begin
       if ((CheckBox1.Checked) and (CheckBox2.Checked) and (CheckBox4.Checked) and (CheckBox5.Checked)) then
     sum:=Sum+1;
StaticText1.Caption:='  ����� ���� ����� ���� ������������ � ����������� ������������� � ���������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='���� �������������� ����������;';
Radiobutton2.Caption:='���� ���� ����������;';
Radiobutton3.Caption:='���� �����������.';
end;

21:
begin
  if Radiobutton1.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  ����� ����� ������������ � ���� ���������� �����������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='������ ���������;';
Radiobutton2.Caption:='����������� � ���������;';
Radiobutton3.Caption:='������ �����������.';
end;
22:
begin
   if Radiobutton2.Checked then
     sum:=Sum+1;

StaticText1.Caption:='  �������������  ������������  �������������  ����������  ���� �������� ��� ��� 60��:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='7��;';
Radiobutton2.Caption:='3��;';
Radiobutton3.Caption:='5��.';
end;
23:
begin
if Radiobutton3.Checked then
     sum:=Sum+1;
   StaticText1.Caption:='  ������� ������� ������ ��� ��� ����� � ������� ����� ���� �������� ������ Ethernet, ����� ���������� � ��������� ����� ���:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='14;';
Radiobutton2.Caption:='11;';
Radiobutton3.Caption:='17.';
end;
24:
begin
 if Radiobutton1.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  ������� ������� ����� ����������� ������������-���������� ��������� (���):';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='15  �������  ��������  �� 100�2  �� 1200�2;';
Radiobutton2.Caption:='10  �������  ��������  �� 100�2  �� 1200�2;';
Radiobutton3.Caption:='20  �������  ��������  �� 100�2  �� 1200�2;';
end;
25:
begin
if Radiobutton1.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  ��� ���� ������������ ������� ������ ���������� ���485:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton2.WordWrap:=true;
Radiobutton1.Caption:='��� ������ ��������� � ������������ � ������ �������� �����;';
Radiobutton2.Caption:='��� ��������� ���������� �� ����� ����������� �����, ������ ��������� � ���������������;';
Radiobutton3.Caption:='��� ��������� ����������� � ������������� ��������� � ���������.';
end;
26:
begin
if Radiobutton2.Checked then
     sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  ����� ������ ����� ������������ ���������� ���60�� ��� ������ ����������� � �������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
CheckBox1.Visible:=true;
CheckBox1.Checked:=false;
CheckBox2.Visible:=true;
CheckBox2.Checked:=false;
CheckBox3.Visible:=true;
CheckBox3.Checked:=false;
CheckBox4.Visible:=true;
CheckBox4.Checked:=false;
CheckBox5.Visible:=true;
CheckBox5.Checked:=false;
CheckBox6.Visible:=true;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
CheckBox7.Width:=500;
Checkbox6.WordWrap:=true;
CheckBox1.Caption:='�� ���������� ������;';
CheckBox2.Caption:='����  Ethernet  �  ����������  TCP/IP;';
CheckBox3.Caption:='������ ����  Ethernet  �  ����������  TCP/IP;';
CheckBox4.Caption:='������ ��������� ������� ������ �������;';
CheckBox5.Caption:='���������  RS-232/RS-485  �  �  ��������  ����������������;';
CheckBox6.Caption:='������ ��������� ������� ������ ������� � ������������� ���������� ������ ����;';
CheckBox7.Caption:='������������� ���������� ������ ����.';
end;
27:
begin
  if ((CheckBox1.Checked) and (CheckBox2.Checked) and (CheckBox4.Checked) and (CheckBox5.Checked)and (CheckBox7.Checked)) then
     sum:=Sum+1;

StaticText1.Caption:='  ����� ������ ����������� � ���� ��� ����������� ����� ����� ��� ���� ������������ (��� ���������� ���):';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=true;
CheckBox1.Checked:=false;
CheckBox2.Visible:=true;
CheckBox2.Checked:=false;
CheckBox3.Visible:=true;
CheckBox3.Checked:=false;
CheckBox4.Visible:=true;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
Checkbox1.Caption:='��� (��������� �����������);';
Checkbox2.Caption:='��������, ����� � ����� ������������;';
Checkbox3.Caption:='����� ���������� (��������� �����������);';
Checkbox4.Caption:='��� ���� �������������.';
end;
28:
begin
if Checkbox4.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  ��� �������� ������������ ����� �������� ��������� ���� ������:';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='����� �������;';
Radiobutton2.Caption:='����� ���� ����������;';
Radiobutton3.Caption:='����� �����������.';
end;
29:
begin
if Radiobutton2.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  ���������� ������ �������������� ����� ������������ (���-�) �� TMN ������� �: ';
Statictext1.Font.Size :=35;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='����������  �������������	����;';
Radiobutton2.Caption:='������ ���������� ����������;';
Radiobutton3.Caption:='������������� �������.';
end;
30:
begin
if Radiobutton2.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  ����� �� ���������� ������������� ��� ��������� ������ � ������������ � ���������� ���������,'+' ����������� ��������� �������� � ������ ������ ��������� � ���� ������:';
Statictext1.Font.Size :=21;
StaticText2.Caption := inttostr(s)+'/30';
StaticText3.Caption := inttostr(sum);
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=true;
Radiobutton2.Visible:=true;
Radiobutton3.Visible:=true;
Radiobutton1.Caption:='���������� ����������;';
Radiobutton2.Caption:='���������� �������������;';
Radiobutton2.Caption:='���������� ������.';
end;

else
begin
 if Radiobutton3.Checked then
     sum:=Sum+1;
 StaticText1.Visible:=false;
StaticText2.visible := false;
StaticText3.visible := false;
CheckBox1.Visible:=false;
CheckBox1.Checked:=false;
CheckBox2.Visible:=false;
CheckBox2.Checked:=false;
CheckBox3.Visible:=false;
CheckBox3.Checked:=false;
CheckBox4.Visible:=false;
CheckBox4.Checked:=false;
CheckBox5.Visible:=false;
CheckBox5.Checked:=false;
CheckBox6.Visible:=false;
CheckBox6.Checked:=false;
CheckBox7.Visible:=false;
CheckBox7.Checked:=false;
Radiobutton1.Checked:=False;
Radiobutton2.Checked:=False;
Radiobutton3.Checked:=False;
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
label1.Visible:=true;
label1.Width:=500;
label1.Font.Size:=40;
label1.Caption:='�� ���� ��: '+inttostr(sum);
button2.Visible:=true;
button3.Visible:=false;
button1.Visible:=false;
button2.caption:='�����';
button3.caption:='�������� ��������� ��� ���������'+inttostr(s);
  end;


end;

 s:=s+1;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin

form6.Show;
s:=1;
sum:=0;
close;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
 s:=1;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   s:=1;
end;

procedure TForm6.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    begin
      ExStyle := ExStyle or WS_EX_TOOLWINDOW;
      WndParent := GetDesktopWindow;
    end;
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
button1.Caption:='�����?';
sum:=0;
s:=1;
label1.Visible:=false;
button2.Visible:=false;
button3.Visible:=false;
StaticText3.Caption := inttostr(0);
StaticText3.Visible:=false;
StaticText1.Visible:=true;
   StaticText2.Caption := inttostr(s)+'/30';
   Form6.FormStyle:= fsStayOnTop;
   StaticText1.Visible:=true;
   Radiobutton1.Visible:=true;
   Radiobutton3.Visible:=false;
   Radiobutton1.Width:=700;
   Radiobutton2.Width:=700;
   Radiobutton3.Width:=700;
  Radiobutton2.Visible:=true;
   StaticText1.Caption:='  ������������ �������� (��) � ��� ���������� �� ������������ ����������, ����������� � ���������� ������, �������� ���������� �������, ����������,' +' ���������� ��������, ������� ����� ������� ��� �������� �� ����� ������������ ������, ����� �������� ����� ��� ���������� ��������� �����, ������������ ������������ ������ � ��������� ����������������� �����:';
   Statictext1.Font.Size :=18;
    Statictext1.Width :=640;
    Statictext1.Height :=480;
    Radiobutton1.Caption:='���;';
    Radiobutton2.Caption:='��.';
   BorderStyle := bsNone;
 WindowState:=wsMaximized;
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
 procedure TForm6.FormCreate2(Sender: TObject);
begin
s:=1;
  end;

end.
