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
button1.Caption:='Далее';
end;

2:
  begin
StaticText3.Caption := inttostr(sum);

StaticText1.Caption:='За что несет ответственность диспетчерская служба:';
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

     CheckBox1.Caption:='за достоверность, своевременность передачи и полноту собираемой и передаваемой информации;';
     CheckBox2.Caption:='за целесообразность предпринимаемых ею мер по регулированию производства;';
     CheckBox3.Caption:='только за достоверность, своевременность передачи и полноту собираемой и передаваемой информации;';
     CheckBox4.Caption:='за оперативность в ликвидации простоев, неполадок и выполнение аварийных заказов;';
     CheckBox5.Caption:='ни несет никакой ответственности;';
     CheckBox6.Caption:='за своевременность оповещения лиц, ответственных за мероприятия.';

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
 StaticText1.Caption:='Какие функции выполняет диспетчер, при решении задачи № 2:';
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



     CheckBox1.Caption:='ведет техническую, учетную и отчетную документацию	в соответствии утвержденным перечнем;';
     CheckBox2.Caption:='принимает экстренные меры  по предупреждению и устранению   аварийных ситуаций на ГЦТ;';
     CheckBox3.Caption:='организует сбор аварийных бригад;';
     CheckBox4.Caption:='контролирует выезд бригад и проведение аварийно-восстановительных работ;';
     CheckBox5.Caption:='оперативно передает информацию об авариях на сетях связи руководству ГЦТ,' +#10+
    ' ОДС  регионального центра управления сетями связи Филиала.';

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
 StaticText1.Caption:='  Диспетчерская служба - это централизованная форма оперативного управления на основе применения технических средств связи, сбора информации, ее обработки и осуществления оперативного контроля и регулирования производства:';
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
       Radiobutton1.Caption:='да;';
       Radiobutton2.Caption:='нет.';


end;

5:
begin
if Radiobutton1.Checked then
     sum:=Sum+1;
     StaticText3.Caption := inttostr(sum);
    StaticText2.Caption := inttostr(s)+'/30';
    Radiobutton1.Checked:=False;
    Radiobutton2.Checked:=False;
      Radiobutton1.Caption:='да;';
      Radiobutton2.Caption:='нет.';
 StaticText1.Caption:='  Компрессорно-сигнальная установка КСУ–10(15)Э-ИК предназначена для  выработки  сухого  воздуха,'+'  распределения  его  по  кабельным  оболочкам,  измерения расхода воздуха в каждой  из  них и автоматического контроля  за  превышением  допустимого  предела  этого  расхода:';
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
                CheckBox1.Caption:='контроль за состоянием элементов;';
     CheckBox2.Caption:='контроль за состоянием сети;';
     CheckBox3.Caption:='контроль и управление обслуживанием;';
     CheckBox4.Caption:='административное управление;';
     CheckBox5.Caption:='все выше перечисленные.';
 StaticText1.Caption:='  Какие уровни содержит система мониторинга:   ';
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
 StaticText1.Caption:='  Сколько уровней содержит система мониторинга по иерархическому принципу:  ';
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
      Radiobutton1.Caption:='сборе;';
      Radiobutton2.Caption:='планировании услуг;';
      Radiobutton3.Caption:='управлении защитой информации.';
 StaticText1.Caption:='  Общие задачи  Международного Союза Электросвязи (МСЭ-Т) по TMN состоят в:   ';
end;
9:
begin
  if Radiobutton1.Checked then
     sum:=Sum+1;
 StaticText3.Caption := inttostr(sum);
 Radiobutton1.Visible:=true;
 Radiobutton2.Visible:=true;
 Radiobutton3.Visible:=true;
 StaticText1.Caption:=' 	Сколько выделяется типов объектов мониторинга:';
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
StaticText1.Caption:=' 	Какие типы пользователей имеются в комплексе  «ТЕХНОТРОНИКС. SQL»:';
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

     CheckBox1.Caption:='Администратор;';
     CheckBox2.Caption:='Диспетчер;';
     CheckBox3.Caption:='Программист;';
     CheckBox4.Caption:='Оператор.';

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
StaticText1.Caption:='  Для просмотра, какой информации предназначено «окно дополнительной информации»:';
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
CheckBox1.Caption:='просмотр дополнительной информации о сигнале;';
CheckBox2.Caption:='просмотр дополнительной информации о сигнале;';
CheckBox3.Caption:='группе контроллеров;';
CheckBox4.Caption:='о состоянии сигнала;';
CheckBox5.Caption:='объектовом устройстве;';
CheckBox6.Caption:='просмотр и заполнение журнала по сообщению;';
CheckBox7.Caption:='о сбоях оборудования.';
 end;
12:
begin
 if ((CheckBox1.Checked) and (CheckBox2.Checked) and (CheckBox3.Checked) and (CheckBox5.Checked) and (CheckBox6.Checked)) then
sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  Что входит в состав программного обеспечения «ТЕХНОТРОНИКС.SQL»:';
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
CheckBox1.Caption:='«Опрос»;';
CheckBox2.Caption:='«Квитирование»;';
CheckBox3.Caption:='«Просмотр»;';
CheckBox4.Caption:='«Настройка»;';
CheckBox5.Caption:='все выше перечисленные.';
end;
13:
begin
   if ((CheckBox5.Checked)) then
     sum:=Sum+1;
StaticText1.Caption:='  Согласно аварийному алгоритму сигнал может пребывать в одном из 2х состояний:';
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
Radiobutton1.Caption:='«норма» или «авария»;';
Radiobutton2.Caption:='«КЗ» или «Обр»;';
Radiobutton3.Caption:='«Защ.» или «Откл.».';
end;
14:
begin
   if ((Radiobutton1.Checked)) then
     sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  В каких случаях составляется акт представителем предприятия:';
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
CheckBox1.Caption:='в случае отсутствия письменного согласия на проведение работ в охранной зоне линии связи или линии радиофикации;';
CheckBox2.Caption:='по результатам работы по уточнению трассы кабельной линии связи или линии радиофикации;';
CheckBox3.Caption:='в случае повреждения линий связи или линий радиофикации;';
CheckBox4.Caption:='все выше перечисленные.';
end;
15:
begin

   if CheckBox4.Checked then
     sum:=Sum+1;

StaticText1.Caption:='  Для квитирования, какого сообщения предназначена кнопка «Квитировать»:';
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
Radiobutton1.Caption:='квитирование только нормальных сообщений;';
Radiobutton2.Caption:='квитирование одного сообщения, выделенного в списке сообщений;';
Radiobutton3.Caption:='квитирование всех сообщений.';

end;
16:
begin
   if Radiobutton2.Checked then
     sum:=Sum+1;
     StaticText1.Caption:='  Что включает в себя 3ий тип объектов мониторинга:';
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
Radiobutton1.Caption:='вторичные сети связи;';
Radiobutton2.Caption:='первичные сети связи;';
Radiobutton3.Caption:='среды распространения сигналов.';

end;
17:
begin
   if Radiobutton1.Checked then
     sum:=Sum+1;

     StaticText1.Caption:='  Ключевым фактором на третьем уровне системы мониторинга является:';
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
Radiobutton1.Caption:='состояние всей сети;';
Radiobutton2.Caption:='обеспечение качества обслуживания;';
Radiobutton3.Caption:='обеспечение качества обслуживания;';
end;
18:
begin
if Radiobutton2.Checked then
     sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  Кто из пользователей может удалять записи из «журнала действий пользователей»:';
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
CheckBox1.Caption:='Диспетчер;';
CheckBox2.Caption:='Администратор;';
CheckBox3.Caption:='Оператор.';
end;
19:
begin
    if CheckBox2.Checked then
     sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  Какие типы дочерних окон имеет приложение «Просмотр»:';
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
CheckBox1.Caption:='Контроль сигналов;';
CheckBox2.Caption:='Архив;';
CheckBox3.Caption:='Системные сообщения;';
CheckBox4.Caption:='Состояние направлений;';
CheckBox5.Caption:='Статистика сигнала.';

end;
20:
begin
       if ((CheckBox1.Checked) and (CheckBox2.Checked) and (CheckBox4.Checked) and (CheckBox5.Checked)) then
     sum:=Sum+1;
StaticText1.Caption:='  Какое одно общее окно используется в приложениях «Квитирование» и «Просмотр»:';
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
Radiobutton1.Caption:='Окно дополнительной информации;';
Radiobutton2.Caption:='Окно «Все сообщения»;';
Radiobutton3.Caption:='Окно «Перезапрос».';
end;

21:
begin
  if Radiobutton1.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  Какой режим предусмотрен в окне «Состояние направлений»:';
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
Radiobutton1.Caption:='только текстовый;';
Radiobutton2.Caption:='графический и текстовый;';
Radiobutton3.Caption:='только графический.';
end;
22:
begin
   if Radiobutton2.Checked then
     sum:=Sum+1;

StaticText1.Caption:='  Гарантируемая  максимальная  протяженность  физической  пары проводов для УСИ 60СЛ:';
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
Radiobutton1.Caption:='7км;';
Radiobutton2.Caption:='3км;';
Radiobutton3.Caption:='5км.';
end;
23:
begin
if Radiobutton3.Checked then
     sum:=Sum+1;
   StaticText1.Caption:='  Сколько внешних блоков БИК при связи с центром через сеть передачи данных Ethernet, можно подключить к основному блоку БИК:';
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
StaticText1.Caption:='  Сколько кабелей может обслуживать компрессорно-сигнальная установка (КСУ):';
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
Radiobutton1.Caption:='15  кабелей  емкостью  от 100х2  до 1200х2;';
Radiobutton2.Caption:='10  кабелей  емкостью  от 100х2  до 1200х2;';
Radiobutton3.Caption:='20  кабелей  емкостью  от 100х2  до 1200х2;';
end;
25:
begin
if Radiobutton1.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  Для чего предназначен внешний модуль расширения ЭПУ485:';
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
Radiobutton1.Caption:='для снятия показаний с водосчетчика и других приборов учета;';
Radiobutton2.Caption:='для измерения напряжения на фазах трехфазного ввода, снятие показаний с электросчетчика;';
Radiobutton3.Caption:='для измерения температуры и относительной влажности в помещении.';
end;
26:
begin
if Radiobutton2.Checked then
     sum:=Sum+1;
StaticText3.Caption := inttostr(sum);
Radiobutton1.Visible:=false;
Radiobutton2.Visible:=false;
Radiobutton3.Visible:=false;
StaticText1.Caption:='  Какие каналы может использовать устройство УСИ60СЛ для обмена информацией с центром:';
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
CheckBox1.Caption:='по физическим линиям;';
CheckBox2.Caption:='сеть  Ethernet  с  протоколом  TCP/IP;';
CheckBox3.Caption:='только сеть  Ethernet  с  протоколом  TCP/IP;';
CheckBox4.Caption:='каналы тональной частоты систем передач;';
CheckBox5.Caption:='интерфейс  RS-232/RS-485  –  в  качестве  технологического;';
CheckBox6.Caption:='каналы тональной частоты систем передач и коммутируемые телефонные каналы ТФОП;';
CheckBox7.Caption:='коммутируемые телефонные каналы ТФОП.';
end;
27:
begin
  if ((CheckBox1.Checked) and (CheckBox2.Checked) and (CheckBox4.Checked) and (CheckBox5.Checked)and (CheckBox7.Checked)) then
     sum:=Sum+1;

StaticText1.Caption:='  Какие данные указываются в акте при повреждении линии связи или лини радиофикации (для физических лиц):';
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
Checkbox1.Caption:='ФИО (виновника повреждения);';
Checkbox2.Caption:='характер, место и время происшествия;';
Checkbox3.Caption:='место жительства (виновника повреждения);';
Checkbox4.Caption:='все выше перечисленные.';
end;
28:
begin
if Checkbox4.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  Что является обязательным после открытия дочернего окна «Архив»:';
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
Radiobutton1.Caption:='выбор объекта;';
Radiobutton2.Caption:='выбор типа диспетчера;';
Radiobutton3.Caption:='выбор направления.';
end;
29:
begin
if Radiobutton2.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  Прикладные задачи Международного Союза Электросвязи (МСЭ-Т) по TMN состоят в: ';
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
Radiobutton1.Caption:='управлении  конфигурацией	сети;';
Radiobutton2.Caption:='выдаче информации управления;';
Radiobutton3.Caption:='регулировании трафика.';
end;
30:
begin
if Radiobutton2.Checked then
     sum:=Sum+1;
StaticText1.Caption:='  Какое из приложений предназначено для получения данных с контроллеров и объектовых устройств,'+' обнаружения состояния сигналов и записи нового состояния в базу дынных:';
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
Radiobutton1.Caption:='Приложение «Настройка»;';
Radiobutton2.Caption:='Приложение «Квитирование;';
Radiobutton2.Caption:='Приложение «Опрос».';
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
label1.Caption:='Ты сдал на: '+inttostr(sum);
button2.Visible:=true;
button3.Visible:=false;
button1.Visible:=false;
button2.caption:='Выход';
button3.caption:='Обнулить результат для пересдачи'+inttostr(s);
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
button1.Caption:='Готов?';
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
   StaticText1.Caption:='  Чрезвычайная ситуация (ЧС) – это обстановка на определенной территории, сложившаяся в результате аварии, опасного природного явления, катастрофы,' +' стихийного бедствия, которые могут повлечь или повлекли за собой человеческие жертвы, ущерб здоровью людей или окружающей природной среде, значительные материальные потери и нарушение жизнедеятельности людей:';
   Statictext1.Font.Size :=18;
    Statictext1.Width :=640;
    Statictext1.Height :=480;
    Radiobutton1.Caption:='нет;';
    Radiobutton2.Caption:='да.';
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
