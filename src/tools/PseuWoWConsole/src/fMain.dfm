object frmMain: TfrmMain
  Left = 393
  Top = 142
  Width = 535
  Height = 390
  Caption = 'PseuWoW Console'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Fixedsys'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 527
    Height = 73
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object txtExe: TEdit
      Left = 8
      Top = 10
      Width = 513
      Height = 23
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '[enter path to pseuwow bin]'
    end
    object btnRun: TButton
      Left = 8
      Top = 40
      Width = 75
      Height = 25
      Caption = 'RUN'
      TabOrder = 1
      OnClick = btnRunClick
    end
    object btnExit: TButton
      Left = 88
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 2
      OnClick = btnExitClick
    end
  end
  object Console: TRichEdit
    Left = 0
    Top = 73
    Width = 527
    Height = 239
    Align = alClient
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Fixedsys'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 1
    OnResizeRequest = ConsoleResizeRequest
  end
  object grpCmd: TGroupBox
    Left = 0
    Top = 312
    Width = 527
    Height = 51
    Align = alBottom
    Caption = 'Command'
    TabOrder = 2
    object comCommand: TComboBox
      Left = 8
      Top = 19
      Width = 513
      Height = 23
      AutoDropDown = True
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744576
      Font.Height = -11
      Font.Name = 'Fixedsys'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 0
      OnKeyDown = comCommandKeyDown
      Items.Strings = (
        '!'
        '!SAY'
        'QUIT'
        'SAY')
    end
  end
  object servRemote: TServerSocket
    Active = False
    Port = 8089
    ServerType = stNonBlocking
    OnClientRead = servRemoteClientRead
    Left = 432
    Top = 32
  end
  object timerStart: TTimer
    Interval = 3000
    OnTimer = timerStartTimer
    Left = 472
    Top = 32
  end
  object clientSock: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Host = '127.0.0.1'
    Port = 8085
    OnConnecting = clientSockConnecting
    OnConnect = clientSockConnect
    OnError = clientSockError
    Left = 400
    Top = 32
  end
  object TrayIcon: TJvTrayIcon
    Active = True
    IconIndex = 0
    Visibility = [tvVisibleTaskBar, tvVisibleTaskList, tvAutoHide, tvAutoHideIcon, tvRestoreClick, tvMinimizeClick]
    Left = 360
    Top = 32
  end
end