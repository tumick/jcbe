unit Vote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ipEdit, ipControls, ipButtons, ipPlacemnt, ipOther;

type
  TfmVote = class(TForm)
    Label1: TLabel;
    eName: TipEditTS;
    eQuestion: TipEditTS;
    Label2: TLabel;
    Label3: TLabel;
    mAnswers: TipMemoTS;
    bOK: TipButton;
    bCancel: TipButton;
    bHelp: TipButton;
    Storage: TipFormStorage;
    chTimeLimit: TipCheckBoxTS;
    dteTime: TipDateTimeEditTS;
    chMoney: TipCheckBoxTS;
    chShow: TipCheckBoxTS;
    procedure chTimeLimitChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eNameChange(Sender: TObject);
  private
    procedure ResetEnabled;
  public
    class function ShowInfo: string;
  end;

var
  fmVote: TfmVote;

implementation

{$R *.dfm}

uses
  ipUtils;

{ TfmVote }

class function TfmVote.ShowInfo: string;
var
  R1,R2,S,N: string;
  I,C: integer;
  function Mark(B: boolean): string;
  begin
    if B then Result:='p' else Result:='';
  end;
begin
  with TfmVote.Create(Application) do try
    Result:='';
    if ShowModal=mrOK then begin
      if chTimeLimit.Checked then Result:=Format(#13#10'$voteto %s'#13#10,[FormatDateTime('yyyymmddhhnnss',dteTime.DateTime)]) else Result:=#13#10;
      N:=ReplaceStr(eName.Text,' ','');
      R1:=Format('$vote %s %s',[N,eQuestion.Text]);
      R2:=Format('  <p><b>%s</b>'#13#10'<hr>',[eQuestion.Text]);
      C:=0;
      for I:=0 to mAnswers.Lines.Count-1 do begin
        S:=Trim(mAnswers.Lines[I]);
        if S<>'' then begin
          inc(C);
          R1:=Format('%s;%s',[R1,S]);
          R2:=Format('%s'#13#10'  <vote%s:%s %d> %s',[R2,Mark(chMoney.Checked),N,C,S]);
        end;
      end;
      Result:=Format('%s%s'#13#10'%s'#13#10,[Result,R1,R2]);
      if chShow.Checked then Result:=Format('%s  <hr>'#13#10'  <showvote:%s> Результаты голосования'#13#10,[Result,N]);
    end;
  finally
    Free;
  end;
end;

procedure TfmVote.chTimeLimitChange(Sender: TObject);
begin
  dteTime.Enabled:=chTimeLimit.Checked;
end;

procedure TfmVote.FormShow(Sender: TObject);
begin
  ResetEnabled;
end;

procedure TfmVote.ResetEnabled;
begin
  bOK.Enabled:=(Trim(eName.Text)<>'') and (Trim(eQuestion.Text)<>'') and (Trim(mAnswers.Text)<>'');
end;

procedure TfmVote.eNameChange(Sender: TObject);
begin
  ResetEnabled;
end;

end.
