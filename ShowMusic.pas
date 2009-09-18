unit ShowMusic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ipPlacemnt, ipHTMLHelp, MPlayer, StdCtrls;

type
  TfmShowMusic = class(TipHTMLHelpForm)
    Placement: TipFormPlacement;
    MediaPlayer: TMediaPlayer;
    lbMelody: TLabel;
    Timer: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    class procedure ShowInfo(const FN: string);
    class procedure HideInfo;
  end;

implementation

{$R *.dfm}

uses
  ipUtils;

var
  fmShowMusic: TfmShowMusic;

{ TfmShowImage }

class procedure TfmShowMusic.HideInfo;
begin
  if fmShowMusic<>nil then fmShowMusic.Close;
end;

class procedure TfmShowMusic.ShowInfo(const FN: string);
begin
  if fmShowMusic=nil then fmShowMusic:=TfmShowMusic.Create(Application);
  with fmShowMusic do begin
    lbMelody.Caption:=ExtractFileName(FN);
    MediaPlayer.FileName:=FN;
    Show;
  end;
end;

procedure TfmShowMusic.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  fmShowMusic:=nil;
end;

procedure TfmShowMusic.FormShow(Sender: TObject);
begin
  Timer.Enabled:=TRUE;
end;

procedure TfmShowMusic.TimerTimer(Sender: TObject);
begin
  Timer.Enabled:=FALSE;
  try
    MediaPlayer.Open;
  except
    on E: Exception do ShowErr(E.Message);
  end;
end;

initialization
  fmShowMusic:=nil;
end.
