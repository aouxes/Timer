program Semenov_Timer;

uses
  Vcl.Forms,
  Timer in '..\��������\Timer.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormTimer, FormTimer);
  Application.Run;
end.
