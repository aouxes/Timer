object FormTimer: TFormTimer
  Left = 0
  Top = 0
  Caption = 'Timer'
  ClientHeight = 155
  ClientWidth = 346
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelTimer: TLabel
    Left = 16
    Top = 66
    Width = 188
    Height = 66
    Caption = '0:00:00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 66
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object ButtonSet: TButton
    Left = 248
    Top = 36
    Width = 75
    Height = 28
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
    TabOrder = 0
    OnClick = ButtonSetClick
  end
  object Hours: TEdit
    Left = 16
    Top = 39
    Width = 49
    Height = 21
    TabOrder = 1
    Text = '0'
    TextHint = 'HH'
  end
  object Minutes: TEdit
    AlignWithMargins = True
    Left = 96
    Top = 39
    Width = 49
    Height = 21
    TabOrder = 2
    Text = '0'
    TextHint = 'MM'
  end
  object Seconds: TEdit
    Left = 177
    Top = 39
    Width = 50
    Height = 21
    TabOrder = 3
    Text = '0'
    TextHint = 'SS'
  end
  object ButtonStartStop: TButton
    Left = 248
    Top = 80
    Width = 75
    Height = 25
    Caption = #1057#1090#1072#1088#1090'/'#1057#1090#1086#1087
    TabOrder = 4
    OnClick = ButtonStartStopClick
  end
  object ButtonClear: TButton
    Left = 248
    Top = 119
    Width = 75
    Height = 25
    Caption = #1057#1073#1088#1086#1089
    TabOrder = 5
    OnClick = ButtonClearClick
  end
  object StaticTextHours: TStaticText
    Left = 16
    Top = 16
    Width = 30
    Height = 17
    Caption = #1063#1072#1089#1099
    TabOrder = 6
  end
  object StaticTextMinutes: TStaticText
    Left = 96
    Top = 16
    Width = 44
    Height = 17
    Caption = #1052#1080#1085#1091#1090#1099
    TabOrder = 7
  end
  object StaticTextSeconds: TStaticText
    Left = 177
    Top = 16
    Width = 50
    Height = 17
    Caption = #1057#1077#1082#1091#1085#1076#1099
    TabOrder = 8
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 320
  end
end
