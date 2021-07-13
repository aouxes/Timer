unit Timer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ComCtrls;

type
  TFormTimer = class(TForm)
    LabelTimer: TLabel;
    ButtonSet: TButton;
    Timer: TTimer;
    Hours: TEdit;
    Minutes: TEdit;
    Seconds: TEdit;
    ButtonStartStop: TButton;
    ButtonClear: TButton;
    StaticTextHours: TStaticText;
    StaticTextMinutes: TStaticText;
    StaticTextSeconds: TStaticText;
    procedure TimerTimer(Sender: TObject);
    procedure ButtonStartStopClick(Sender: TObject);
    procedure ButtonSetClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTimer: TFormTimer;
  StartTime: TDateTime;
  Time: string;
  HH,MM,SS:integer;

implementation

{$R *.dfm}


procedure TFormTimer.ButtonSetClick(Sender: TObject);
begin
  HH:=StrToInt(Hours.Text);
  MM:=StrToInt(Minutes.Text);
  SS:=StrToInt(Seconds.Text);
  Time:=IntToStr(HH)+':'+IntToStr(MM)+':'+IntToStr(SS);
  StartTime:=StrToTime(Time);
  LabelTimer.Caption := TimeToStr(StartTime);
  Timer.Enabled:=False;
end;

procedure TFormTimer.ButtonStartStopClick(Sender: TObject);
begin
  Timer.Enabled:=not Timer.Enabled;
end;

procedure TFormTimer.ButtonClearClick(Sender: TObject);
begin
  Timer.Enabled:=False;
  HH:=0;
  MM:=0;
  SS:=0;
  Hours.Text:='0';
  Minutes.Text:='0';
  Seconds.Text:='0';
  Time:=IntToStr(HH)+':'+IntToStr(MM)+':'+IntToStr(SS);
  StartTime:=StrToTime(Time);
  LabelTimer.Caption := TimeToStr(StartTime);
end;

procedure TFormTimer.TimerTimer(Sender: TObject);
begin
  if SS > 0 then
  begin
    dec(SS);
  end
  else begin
    if MM > 0 then
    begin
      SS := 59;
      dec(MM);
    end
    else begin
      if HH > 0 then
      begin
        MM := 59;
        SS := 59;
        dec(HH);
      end
      else begin
        Timer.Enabled:=False;
      end;
    end;
  end;
  Time:=IntToStr(HH)+':'+IntToStr(MM)+':'+IntToStr(SS);
  StartTime:=StrToTime(Time);
  LabelTimer.Caption := TimeToStr(StartTime);
end;

end.
