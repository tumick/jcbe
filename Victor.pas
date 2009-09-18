unit Victor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ipPlacemnt, ipControls, ipButtons, StdCtrls, ipEdit, ActnList,
  ComCtrls, ExtCtrls, ipOther;

type
  TQuestion = class
  private
    FText: string;
    FAnswers: TStrings;
    function GetAnswerCount: integer;
    function GetAnswers(Idx: integer): string;
    function GetAnswersInc(Idx: integer): integer;
    procedure SetAnswers(Idx: integer; const Value: string);
    procedure SetAswersInc(Idx: integer; const Value: integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    procedure Delete(Idx: integer);
    procedure Add(const Answer: string; Inc: integer);
    property AnswerCount: integer read GetAnswerCount;
    property Answers[Idx: integer]: string read GetAnswers write SetAnswers; default;
    property AnswersInc[Idx: integer]: integer read GetAnswersInc write SetAswersInc;
    property Text: string read FText write FText;
  end;

  TQuestions = class
  private
    FList: TList;
    function GetCount: integer;
    function GetItems(Idx: integer): TQuestion;
    procedure SetCount(const Value: integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    property Count: integer read GetCount write SetCount;
    property Items[Idx: integer]: TQuestion read GetItems; default;
  end;

  TSummary = class
  private
    FValueFrom: integer;
    FValueTo: integer;
    FText: string;
    FWriteTop: boolean;
  public
    property ValueFrom: integer read FValueFrom write FValueFrom;
    property ValueTo: integer read FValueTo write FValueTo;
    property Text: string read FText write FText;
    property WriteTop: boolean read FWriteTop write FWriteTop;
  end;

  TSummaries = class
  private
    FList: TList;
    function GetCount: integer;
    function GetItems(Idx: integer): TSummary;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Clear;
    procedure Delete(Idx: integer);
    function Add: TSummary;
    property Count: integer read GetCount;
    property Items[Idx: integer]: TSummary read GetItems; default;
  end;

  TfmVictor = class(TForm)
    bHelp: TipButton;
    Bevel2: TBevel;
    Bevel1: TBevel;
    Image1: TImage;
    pcReport: TPageControl;
    tsStart: TTabSheet;
    Label1: TLabel;
    Label19: TLabel;
    tsQuestion: TTabSheet;
    lbQNum: TLabel;
    Label6: TLabel;
    tsResult: TTabSheet;
    Label8: TLabel;
    tsFinish: TTabSheet;
    Label15: TLabel;
    bBack: TipButton;
    bNext: TipButton;
    bCancel: TipButton;
    bDone: TipButton;
    Storage: TipFormStorage;
    eFirst: TipEditTS;
    Label2: TLabel;
    mStart: TipMemoTS;
    mQuestion: TipMemoTS;
    lbAnswers: TListBox;
    ipButton1: TipButton;
    ipButton2: TipButton;
    ActionList: TActionList;
    acAdd: TAction;
    acDelete: TAction;
    Label3: TLabel;
    seInc: TipSpinEditTS;
    Label5: TLabel;
    mAnswer: TipMemoTS;
    lbSummary: TListBox;
    Label9: TLabel;
    seSumFrom: TipSpinEditTS;
    seSumTo: TipSpinEditTS;
    Label11: TLabel;
    Label12: TLabel;
    mSumText: TipMemoTS;
    chWriteTop: TipCheckBoxTS;
    ipButton3: TipButton;
    ipButton4: TipButton;
    acAddSum: TAction;
    acDeleteSum: TAction;
    Label7: TLabel;
    Label10: TLabel;
    mReady: TMemo;
    Label13: TLabel;
    seCount: TipSpinEditTS;
    procedure bBackClick(Sender: TObject);
    procedure bNextClick(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure acAddSumExecute(Sender: TObject);
    procedure acDeleteSumExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure lbAnswersClick(Sender: TObject);
    procedure mAnswerExit(Sender: TObject);
    procedure ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure mStartChange(Sender: TObject);
    procedure lbSummaryClick(Sender: TObject);
    procedure mSumTextExit(Sender: TObject);
    procedure StorageRestorePlacement(Sender: TObject);
    procedure StorageSavePlacement(Sender: TObject);
    procedure seSumFromChange(Sender: TObject);
  private
    FStep: integer;
    FQuest: TQuestions;
    FSumm: TSummaries;
    procedure SetStep(const Value: integer);
    procedure FillReady;
    procedure Form2Quest(Q: TQuestion);
    procedure Quest2Form(Q: TQuestion);
    procedure Form2Summ;
    procedure Summ2Form;
    procedure UpdateEnabled;
    procedure CheckAddElse;
    function FormCode: string;
  public
    class function ShowInfo: string;
    property Step: integer read FStep write SetStep;
  end;

var
  fmVictor: TfmVictor;

implementation

{$R *.dfm}

uses
  Main, ipUtils, Registry;

{ Routines }

function TrimTo(const S: string; Chars: integer = 40): string;
begin
  Result:=ReplaceStr(S,#13#10,' ');
  if Length(Result)>Chars then begin
    SetLength(Result,Chars-3);
    Result:=Result+'...';
  end;
end;

function CheckEmpty(const S: string): string;
begin
  Result:=S;
  if Trim(Result)='' then Result:='(нет)';
end;

{ TQuestion }

constructor TQuestion.Create;
begin
  inherited Create;
  FAnswers:=TStringList.Create;
end;

destructor TQuestion.Destroy;
begin
  Clear;
  FAnswers.Free;
  inherited Destroy;
end;

procedure TQuestion.Clear;
begin
  FAnswers.Clear;
  FText:='';
end;

procedure TQuestion.Delete(Idx: integer);
begin
   FAnswers.Delete(Idx);
end;

function TQuestion.GetAnswerCount: integer;
begin
  Result:=FAnswers.Count;
end;

function TQuestion.GetAnswers(Idx: integer): string;
begin
  Result:=FAnswers[Idx];
end;

function TQuestion.GetAnswersInc(Idx: integer): integer;
begin
  Result:=integer(FAnswers.Objects[Idx]);
end;

procedure TQuestion.Add(const Answer: string; Inc: integer);
begin
  FAnswers.AddObject(Answer,TObject(Inc));
end;

procedure TQuestion.SetAnswers(Idx: integer; const Value: string);
begin
  FAnswers[Idx]:=Value;
end;

procedure TQuestion.SetAswersInc(Idx: integer; const Value: integer);
begin
  FAnswers.Objects[Idx]:=TObject(Value);
end;

{ TQuestions }

constructor TQuestions.Create;
begin
  inherited Create;
  FList:=TList.Create;
end;

destructor TQuestions.Destroy;
begin
  Clear;
  FList.Free;
  inherited Destroy;
end;

procedure TQuestions.Clear;
var
  I: integer;
begin
  for I:=0 to Count-1 do Items[I].Free;
  FList.Clear;
end;

function TQuestions.GetCount: integer;
begin
  Result:=FList.Count;
end;

function TQuestions.GetItems(Idx: integer): TQuestion;
begin
  Result:=TQuestion(FList[Idx]);
end;

procedure TQuestions.SetCount(const Value: integer);
var
  I: integer;
begin
  for I:=Count-1 downto Value do begin
    Items[I].Free;
     FList.Delete(I);
  end;
  for I:=Count to Value-1 do FList.Add(TQuestion.Create);
end;

{ TSummaries }

constructor TSummaries.Create;
begin
  inherited Create;
  FList:=TList.Create;
end;

destructor TSummaries.Destroy;
begin
  Clear;
  FList.Free;
  inherited Destroy;
end;

procedure TSummaries.Clear;
var
  I: integer;
begin
  for I:=0 to Count-1 do Items[I].Free;
  FList.Clear;
end;

function TSummaries.GetCount: integer;
begin
  Result:=FList.Count;
end;

function TSummaries.GetItems(Idx: integer): TSummary;
begin
  Result:=TSummary(FList[Idx]);
end;

procedure TSummaries.Delete(Idx: integer);
begin
  Items[Idx].Free;
  FList.Delete(Idx);
end;

function TSummaries.Add: TSummary;
begin
  Result:=TSummary.Create;
  FList.Add(Result);
end;

{ TfmVictor }

class function TfmVictor.ShowInfo: string;
begin
  with TfmVictor.Create(Application) do try
    Result:='';
    Step:=1;
    if ShowModal=mrOK then Result:=FormCode;
  finally
    Free;
  end;
end;

procedure TfmVictor.bBackClick(Sender: TObject);
begin
  Step:=Step-1;
end;

procedure TfmVictor.bNextClick(Sender: TObject);
begin
  Step:=Step+1;
end;

procedure TfmVictor.FillReady;
var
  I: integer;
begin
  mReady.Lines.Clear;
  mReady.Lines.Add(Format('Вводный текст: %s',[TrimTo(mStart.Text)]));
  mReady.Lines.Add(Format('Кол-во вопросов: %d',[seCount.Value]));
  mReady.Lines.Add(Format('Начало викторины: %s',[TrimTo(eFirst.Text)]));
  mReady.Lines.Add('');
  mReady.Lines.Add('Вопросы викторины:');
  for I:=0 to FQuest.Count-1 do with FQuest[I] do mReady.Lines.Add(Format('   Вопрос №%d: %s',[I+1,TrimTo(Text)]));
  mReady.Lines.Add('');
  mReady.Lines.Add('Итоги викторины:');
  for I:=0 to FSumm.Count-1 do with FSumm[I] do if ValueFrom=MaxInt
    then mReady.Lines.Add(Format('   ИНАЧЕ: %s',[TrimTo(Text)]))
    else if ValueFrom=ValueTo
      then mReady.Lines.Add(Format('   %d: %s',[ValueFrom,TrimTo(Text)]))
      else mReady.Lines.Add(Format('   %d-%d: %s',[ValueFrom,ValueTo,TrimTo(Text)]));
  mReady.Lines.Add('');
end;

procedure TfmVictor.acAddExecute(Sender: TObject);
begin
  lbAnswers.ItemIndex:=lbAnswers.Items.Add('Новый ответ');
  lbAnswersClick(nil);
  UpdateEnabled;
  mAnswer.SetFocus;
  mAnswer.SelectAll;
end;

procedure TfmVictor.acDeleteExecute(Sender: TObject);
var
  Ix: integer;
begin
  Ix:=lbAnswers.ItemIndex;
  if Ix>=0 then begin
    lbAnswers.Items.Delete(Ix);
    lbAnswers.ItemIndex:=Min(Ix,lbAnswers.Items.Count-1);
    lbAnswersClick(nil);
    UpdateEnabled;
  end;  
end;

procedure TfmVictor.acAddSumExecute(Sender: TObject);
var
  Ix: integer;
begin
  Ix:=lbSummary.Items.Add('0:'#160'Текст итогового сообщения');
  CheckAddElse;
  if Ix=lbSummary.Items.Count-1 then dec(Ix);
  lbSummary.ItemIndex:=Ix;
  lbSummaryClick(nil);
  UpdateEnabled;
  mSumText.SetFocus;
  mSumText.SelectAll;
end;

procedure TfmVictor.acDeleteSumExecute(Sender: TObject);
var
  Ix: integer;
begin
  Ix:=lbSummary.ItemIndex;
  if Ix>=0 then begin
    lbSummary.Items.Delete(Ix);
    lbSummary.ItemIndex:=Min(Ix,lbSummary.Items.Count-1);
    lbSummaryClick(nil);
    UpdateEnabled;
  end;  
end;

procedure TfmVictor.SetStep(const Value: integer);
var
  C: integer;
begin
  if FStep<>Value then begin
    C:=seCount.Value;
    if (FStep>1) and (FStep<C+2) then Form2Quest(FQuest[FStep-2]) else
      if FStep=C+2 then Form2Summ;
    FStep:=Value;
    FQuest.Count:=C;
    if (FStep>1) and (FStep<C+2) then Quest2Form(FQuest[FStep-2]) else
      if FStep=C+2 then Summ2Form;
    if Value=1 then begin
      pcReport.ActivePage:=tsStart
    end else if (Value>1) and (Value<C+2) then begin
      lbQNum.Caption:=Format('Вопрос №%d',[Value-1]);
      pcReport.ActivePage:=tsQuestion;
    end else if Value=C+2 then begin
      pcReport.ActivePage:=tsResult;
    end else begin
      FillReady;
      pcReport.ActivePage:=tsFinish;
    end;
    UpdateEnabled;
    bBack.Visible:=Value>1;
    bNext.Visible:=Value<C+3;
    bDone.Visible:=not bNext.Visible;
  end;
end;

procedure TfmVictor.FormCreate(Sender: TObject);
begin
  FQuest:=TQuestions.Create;
  FSumm:=TSummaries.Create;
end;

procedure TfmVictor.FormDestroy(Sender: TObject);
begin
  FQuest.Free;
  FSumm.Free;
end;

procedure TfmVictor.Form2Quest(Q: TQuestion);
begin
  Q.Text:=CheckEmpty(mQuestion.Text);
  Q.FAnswers.Assign(lbAnswers.Items);
end;

procedure TfmVictor.Quest2Form(Q: TQuestion);
begin
  mQuestion.Text:=Q.Text;
  lbAnswers.Items:=Q.FAnswers;
  lbAnswersClick(nil);
end;

procedure TfmVictor.Form2Summ;
var
  I: integer;
  S: string;
begin
  FSumm.Clear;
  for I:=0 to lbSummary.Items.Count-1 do with FSumm.Add do begin
    S:=lbSummary.Items[I];
    Text:=CheckEmpty(Split(2,S,[#160]));
    ValueFrom:=StrToIntDef(Split(1,Split(1,S,[#160]),['-',':']),MaxInt);
    ValueTo:=StrToIntDef(Split(2,Split(1,S,[#160]),['-',':']),MaxInt);
    if (ValueFrom<>MaxInt) and (ValueTo=MaxInt) then ValueTo:=ValueFrom; 
    WriteTop:=(lbSummary.Items.Objects[I]<>nil);
  end;
end;

procedure TfmVictor.Summ2Form;
var
  I: integer;
begin
  lbSummary.Items.Clear;
  for I:=0 to FSumm.Count-1 do with FSumm[I] do if ValueFrom=MaxInt
    then lbSummary.Items.AddObject(Format('ИНАЧЕ:'#160'%s',[Text]),TObject(integer(WriteTop)))
    else if ValueFrom=ValueTo
      then lbSummary.Items.AddObject(Format('%d:'#160'%s',[ValueFrom,Text]),TObject(integer(WriteTop)))
      else lbSummary.Items.AddObject(Format('%d-%d:'#160'%s',[ValueFrom,ValueTo,Text]),TObject(integer(WriteTop)));
  lbSummaryClick(nil);
end;

procedure TfmVictor.lbAnswersClick(Sender: TObject);
begin
  if lbAnswers.ItemIndex<0 then begin
    mAnswer.Text:='';
    mAnswer.Enabled:=FALSE;
    seInc.Value:=0;
    seInc.Enabled:=FALSE;
  end else begin
    mAnswer.Text:=lbAnswers.Items[lbAnswers.ItemIndex];
    mAnswer.Enabled:=TRUE;
    seInc.Value:=integer(lbAnswers.Items.Objects[lbAnswers.ItemIndex]);
    seInc.Enabled:=TRUE;
  end;
end;

procedure TfmVictor.mAnswerExit(Sender: TObject);
begin
  if lbAnswers.ItemIndex>=0 then begin
    lbAnswers.Items[lbAnswers.ItemIndex]:=CheckEmpty(mAnswer.Text);
    lbAnswers.Items.Objects[lbAnswers.ItemIndex]:=TObject(seInc.Value);
  end;
end;

procedure TfmVictor.ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  acDelete.Enabled:=lbAnswers.ItemIndex>=0;
  acDeleteSum.Enabled:=(lbSummary.ItemIndex>=0) and (lbSummary.ItemIndex<lbSummary.Items.Count-1);
end;

procedure TfmVictor.UpdateEnabled;
var
  C: integer;
begin
  C:=seCount.Value;
  if Step=1 then bNext.Enabled:=(mStart.Text<>'') and (eFirst.Text<>'') else
    if (Step>1) and (Step<C+2) then bNext.Enabled:=(mQuestion.Text<>'') and (lbAnswers.Items.Count>0) else
      if Step=C+2 then bNext.Enabled:=(lbSummary.Items.Count>0);
end;

procedure TfmVictor.mStartChange(Sender: TObject);
begin
  UpdateEnabled;
end;

procedure TfmVictor.lbSummaryClick(Sender: TObject);
begin
  if lbSummary.ItemIndex<0 then begin
    mSumText.Text:='';
    mSumText.Enabled:=FALSE;
    seSumFrom.Value:=0;
    seSumFrom.Enabled:=FALSE;
    seSumTo.Value:=0;
    seSumTo.Enabled:=FALSE;
    chWriteTop.Checked:=FALSE;
    chWriteTop.Enabled:=FALSE;
  end else begin
    mSumText.Text:=Split(2,lbSummary.Items[lbSummary.ItemIndex],[#160]);
    mSumText.Enabled:=TRUE;
    seSumFrom.Value:=StrToIntDef(Split(1,Split(1,lbSummary.Items[lbSummary.ItemIndex],[#160]),['-',':']),MaxInt);
    seSumFrom.Enabled:=(seSumFrom.Value<>MaxInt);
    seSumTo.Enabled:=seSumFrom.Enabled;
    seSumTo.Value:=StrToIntDef(Split(2,Split(1,lbSummary.Items[lbSummary.ItemIndex],[#160]),['-',':']),MaxInt);
    if (seSumFrom.Value<>MaxInt) and (seSumTo.Value=MaxInt) then seSumTo.Value:=seSumFrom.Value;
    if seSumFrom.Value=MaxInt then seSumFrom.Value:=0;
    if seSumTo.Value=MaxInt then seSumTo.Value:=0;
    chWriteTop.Checked:=(lbSummary.Items.Objects[lbSummary.ItemIndex]<>nil);
    chWriteTop.Enabled:=TRUE;
  end;
end;

procedure TfmVictor.CheckAddElse;
var
  I: integer;
  S: string;
begin
  for I:=0 to lbSummary.Items.Count-1 do begin
    S:=lbSummary.Items[I];
    if Split(1,S,[#160])='ИНАЧЕ:' then begin
      if I<>lbSummary.Items.Count-1 then lbSummary.Items.Move(I,lbSummary.Items.Count-1); 
      Exit;
    end;
  end;
  lbSummary.Items.Add('ИНАЧЕ:'#160'Текст итогового сообщения');
end;

procedure TfmVictor.mSumTextExit(Sender: TObject);
var
  Ix: integer;
  S: string;
begin
  Ix:=lbSummary.ItemIndex;
  if not seSumFrom.Enabled then S:='ИНАЧЕ' else
    if seSumFrom.Value=seSumTo.Value then S:=IntToStr(seSumFrom.Value) else S:=Format('%d-%d',[seSumFrom.Value,seSumTo.Value]);
  lbSummary.Items[Ix]:=Format('%s:'#160'%s',[S,CheckEmpty(mSumText.Text)]);
  lbSummary.Items.Objects[Ix]:=TObject(integer(chWriteTop.Checked));
end;

procedure TfmVictor.StorageRestorePlacement(Sender: TObject);
var
  I,J: integer;
begin
  with Storage.RegIniFile do begin
    FQuest.Count:=ReadInteger('Викторина','Вопросы',FQuest.Count);
    for I:=0 to FQuest.Count-1 do with FQuest[I] do begin
      Clear;
      Text:=ReadString('Викторина','Вопрос'+IntToStr(I+1),'(нет)');
      for J:=0 to ReadInteger('Викторина','Вопрос'+IntToStr(I+1)+'_Ответы',0)-1 do
        Add(ReadString('Викторина','Вопрос'+IntToStr(I+1)+'_Ответ'+IntToStr(J+1),''),
            ReadInteger('Викторина','Вопрос'+IntToStr(I+1)+'_Ответ'+IntToStr(J+1)+'_Оценка',0));
    end;
    FSumm.Clear; 
    for I:=0 to ReadInteger('Викторина','Итоги',0)-1 do with FSumm.Add do begin
      Text:=ReadString('Викторина','Итог'+IntToStr(I+1),'(нет)');
      ValueFrom:=ReadInteger('Викторина','Итог'+IntToStr(I+1)+'_Оценка_От',0);
      ValueTo:=ReadInteger('Викторина','Итог'+IntToStr(I+1)+'_Оценка_До',0);
      WriteTop:=ReadBool('Викторина','Итог'+IntToStr(I+1)+'_Запись',FALSE);
    end;
  end;
end;

procedure TfmVictor.StorageSavePlacement(Sender: TObject);
var
  I,J: integer;
begin
  with Storage.RegIniFile do begin
    WriteInteger('Викторина','Вопросы',FQuest.Count);
    for I:=0 to FQuest.Count-1 do with FQuest[I] do begin
      WriteString('Викторина','Вопрос'+IntToStr(I+1),Text);
      WriteInteger('Викторина','Вопрос'+IntToStr(I+1)+'_Ответы',AnswerCount);
      for J:=0 to AnswerCount-1 do begin
        WriteString('Викторина','Вопрос'+IntToStr(I+1)+'_Ответ'+IntToStr(J+1),Answers[J]);
        WriteInteger('Викторина','Вопрос'+IntToStr(I+1)+'_Ответ'+IntToStr(J+1)+'_Оценка',AnswersInc[J]);
      end;
    end;
    WriteInteger('Викторина','Итоги',FSumm.Count);
    for I:=0 to FSumm.Count-1 do with FSumm[I] do begin
      WriteString('Викторина','Итог'+IntToStr(I+1),Text);
      WriteInteger('Викторина','Итог'+IntToStr(I+1)+'_Оценка_От',ValueFrom);
      WriteInteger('Викторина','Итог'+IntToStr(I+1)+'_Оценка_До',ValueTo);
      WriteBool('Викторина','Итог'+IntToStr(I+1)+'_Запись',WriteTop);
    end;
  end;
end;

function TfmVictor.FormCode: string;
var
  I,J,K: integer;
  T: string;
  function Oper(V: integer): string;
  begin
    if V<0 then Result:='dec ' else Result:='inc ';
    Result:=Result+IntToStr(Abs(V));
  end;
begin
  Result:=#13#10'  <pc><b>Викторина</b>'#13#10'  <hr>'#13#10;
  for I:=0 to mStart.Lines.Count-1 do if Trim(mStart.Lines[I])<>'' then Result:=Format('%s  <p>%s'#13#10,[Result,mStart.Lines[I]]);
  Result:=Format('%s  <p>'#13#10'  <vic_q1>%s',[Result,eFirst.Text]);
  for I:=0 to FQuest.Count-1 do with FQuest[I] do begin
    Result:=Format('%s'#13#10#13#10':vic_q%d',[Result,I+1]);
    Result:=Format('%s'#13#10'  <pc><b>Вопрос N%d</b>'#13#10'  <hr>',[Result,I+1]);
    mQuestion.Text:=Text;
    for J:=0 to mQuestion.Lines.Count-1 do if Trim(mQuestion.Lines[J])<>'' then Result:=Format('%s'#13#10'  <p>%s',[Result,mQuestion.Lines[J]]);
    Result:=Format('%s'#13#10'  <p>',[Result]);
    for J:=0 to AnswerCount-1 do begin
      mAnswer.Text:=Answers[J];
      T:=Oper(AnswersInc[J]);
      if I=FQuest.Count-1 then T:=Format('<vic_end(%s)>',[T]) else T:=Format('<vic_q%d(%s)>',[I+2,T]);
      Result:=Format('%s'#13#10'  %s %s',[Result,T,mAnswer.Lines[0]]);
      for K:=1 to mAnswer.Lines.Count-1 do if Trim(mAnswer.Lines[K])<>'' then Result:=Format('%s'#13#10'  <br> %s',[Result,mAnswer.Lines[K]]);
    end;
  end;
  Result:=Format('%s'#13#10#13#10':vic_end',[Result]);
  Result:=Format('%s'#13#10'  <pc><b>Результат: <counter></b>'#13#10'  <hr>',[Result]);
  for I:=0 to FSumm.Count-1 do with FSumm[I] do begin
    if I=FSumm.Count-1 then T:='<else>' else begin
      if I=0 then T:='<if:' else T:='<elseif:';
      T:=T+IntToStr(ValueFrom);
      if ValueTo<>ValueFrom then T:=Format('%s:%d',[T,ValueTo]);
      T:=T+'>';
    end;
    Result:=Format('%s'#13#10'  %s',[Result,T]);
    mSumText.Text:=Text;
    for J:=0 to mSumText.Lines.Count-1 do if Trim(mSumText.Lines[J])<>'' then Result:=Format('%s'#13#10'    <p>%s',[Result,mSumText.Lines[J]]);
    if WriteTop then Result:=Format('%s'#13#10'    <writetop> Сохранить результат',[Result]); 
  end;
  Result:=Format('%s'#13#10'  <endif>',[Result]);
  Result:=Format('%s'#13#10'  <hr>',[Result]);
  Result:=Format('%s'#13#10'  <showtop> Показать результаты',[Result]);
end;

procedure TfmVictor.seSumFromChange(Sender: TObject);
begin
  seSumTo.MinValue:=seSumFrom.Value;
  if seSumTo.Value<seSumTo.MinValue then seSumTo.Value:=seSumTo.MinValue;
end;

end.
