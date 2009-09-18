unit Main;

{$J+}
{$I ipCompiler.inc}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, mwHighlighter, mwCustomEdit, hkBookSyn, StdCtrls, ExtCtrls, ComCtrls, ipPlacemnt, Menus, StdActns, ActnList,
  ImgList, TB2Item, TB2Dock, TB2Toolbar, ipMainMenu, mwGeneralSyn, ipBookSyn, SmtpProt, ipPopupMenu, ExtDlgs, JPEG, GIFImage, PNGImage, AbBase, AbBrowse, AbZBrows, AbZipper, ipControls, ipButtons,
  mwCompletionProposal, ipHTMLHelp, AbUnzper;
  
type
  TSettings = record
    Ident: string;
    Password: string;
    PhoneStyle: boolean;
    JCHost: string;
    JCPort: integer;
  end;

  TfmMain = class(TipHTMLHelpForm)
    pnBook: TPanel;
    pnEditor: TPanel;
    Editor: TmwCustomEdit;
    StaticText2: TStaticText;
    sbMain: TStatusBar;
    Splitter1: TSplitter;
    Storage: TipFormStorage;
    MainMenu: TipMainMenu;
    miFile: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    ActionList: TActionList;
    ImageList: TImageList;
    acFileNew: TAction;
    acFileOpen: TAction;
    acFileSave: TAction;
    acFileSaveAs: TAction;
    acFileExit: TAction;
    Bevel1: TBevel;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    acCompilerSettings: TAction;
    miView: TMenuItem;
    N9: TMenuItem;
    TBDock1: TTBDock;
    TBToolbar1: TTBToolbar;
    TBItem1: TTBItem;
    TBItem2: TTBItem;
    TBItem3: TTBItem;
    TBItem5: TTBItem;
    acRefresh: TAction;
    N10: TMenuItem;
    N11: TMenuItem;
    acAbout: TAction;
    miHelp: TMenuItem;
    miHelpAbout: TMenuItem;
    BookSyn: TipBookSyn;
    acBackground: TAction;
    ColorDialog: TColorDialog;
    N1: TMenuItem;
    N8: TMenuItem;
    acEditorSettings: TAction;
    N12: TMenuItem;
    acPickColor: TAction;
    SMTP: TSmtpCli;
    acSend: TAction;
    TBToolbar2: TTBToolbar;
    acBold: TAction;
    acItalic: TAction;
    acUnderline: TAction;
    acBig: TAction;
    acSmall: TAction;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    TBDock2: TTBDock;
    TBDock3: TTBDock;
    TBDock4: TTBDock;
    fdEditor: TFindDialog;
    rdEditor: TReplaceDialog;
    acFind: TAction;
    acFindNext: TAction;
    acReplace: TAction;
    acSelectAll: TAction;
    acCut: TAction;
    acCopy: TAction;
    acPaste: TAction;
    acUndo: TAction;
    acRedo: TAction;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N18: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    TBSeparatorItem7: TTBSeparatorItem;
    TBItem9: TTBItem;
    TBItem16: TTBItem;
    TBSeparatorItem2: TTBSeparatorItem;
    TBItem17: TTBItem;
    TBItem18: TTBItem;
    TBItem19: TTBItem;
    pmEditor: TipPopupMenu;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    TBToolbar3: TTBToolbar;
    TBItem20: TTBItem;
    TBSeparatorItem5: TTBSeparatorItem;
    TBItem21: TTBItem;
    TBItem22: TTBItem;
    acPicture: TAction;
    OpenPictureDialog: TOpenPictureDialog;
    N36: TMenuItem;
    TBItem4: TTBItem;
    N37: TMenuItem;
    N38: TMenuItem;
    acColor: TAction;
    N39: TMenuItem;
    acAlignLeft: TAction;
    acAlignCenter: TAction;
    acAlignRight: TAction;
    acAlignPoet: TAction;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    stStatus: TStaticText;
    N45: TMenuItem;
    N46: TMenuItem;
    TBToolbar4: TTBToolbar;
    TBItem24: TTBItem;
    TBItem25: TTBItem;
    TBItem26: TTBItem;
    TBItem27: TTBItem;
    TBSeparatorItem8: TTBSeparatorItem;
    TBItem28: TTBItem;
    TBItem29: TTBItem;
    TBItem30: TTBItem;
    TBSeparatorItem9: TTBSeparatorItem;
    TBSeparatorItem10: TTBSeparatorItem;
    TBItem31: TTBItem;
    TBItem32: TTBItem;
    TBItem33: TTBItem;
    N24: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    Zip: TAbZipper;
    pnImages: TPanel;
    lvImages: TListView;
    Panel1: TPanel;
    ipButton1: TipButton;
    ipButton2: TipButton;
    acAdd: TAction;
    acDelete: TAction;
    splImages: TSplitter;
    ilImages: TImageList;
    tmLoad: TTimer;
    N50: TMenuItem;
    CompletionProposal: TMwCompletionProposal;
    StaticText1: TStaticText;
    HTMLHelp: TipHTMLHelp;
    acHelp: TAction;
    N51: TMenuItem;
    acHelp1: TMenuItem;
    TBItem6: TTBItem;
    acVote: TAction;
    acVictor: TAction;
    N52: TMenuItem;
    N53: TMenuItem;
    TBSeparatorItem1: TTBSeparatorItem;
    TBItem7: TTBItem;
    TBItem8: TTBItem;
    TBItem10: TTBItem;
    acTitle: TAction;
    N54: TMenuItem;
    TBItem11: TTBItem;
    LinksTimer: TTimer;
    SelTimer: TTimer;
    acMacro: TAction;
    N55: TMenuItem;
    miFormatMacro: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    acBookFormat: TAction;
    pnEmul: TPanel;
    tmEmul: TTimer;
    acMusic: TAction;
    MusicOpenDialog: TOpenDialog;
    N56: TMenuItem;
    TBItem12: TTBItem;
    Unzip: TAbUnZipper;
    acMakeSourceBook: TAction;
    procedure EditorChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure acFileNewExecute(Sender: TObject);
    procedure acFileOpenExecute(Sender: TObject);
    procedure acFileSaveExecute(Sender: TObject);
    procedure acFileSaveAsExecute(Sender: TObject);
    procedure acFileExitExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure acCompilerSettingsExecute(Sender: TObject);
    procedure acRefreshExecute(Sender: TObject);
    procedure acAboutExecute(Sender: TObject);
    procedure acBackgroundExecute(Sender: TObject);
    procedure acEditorSettingsExecute(Sender: TObject);
    procedure acPickColorExecute(Sender: TObject);
    procedure SMTPRequestDone(Sender: TObject; RqType: TSmtpRequest; ErrorCode: Word);
    procedure acSendExecute(Sender: TObject);
    procedure EditorSpecialLineColors(Sender: TObject; Line: Integer; var Special: Boolean; var FG,BG: TColor);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acBoldExecute(Sender: TObject);
    procedure acItalicExecute(Sender: TObject);
    procedure acUnderlineExecute(Sender: TObject);
    procedure acBigExecute(Sender: TObject);
    procedure acSmallExecute(Sender: TObject);
    procedure acFindExecute(Sender: TObject);
    procedure acFindNextExecute(Sender: TObject);
    procedure acReplaceExecute(Sender: TObject);
    procedure acSelectAllExecute(Sender: TObject);
    procedure acCutExecute(Sender: TObject);
    procedure acCopyExecute(Sender: TObject);
    procedure acPasteExecute(Sender: TObject);
    procedure acUndoExecute(Sender: TObject);
    procedure acRedoExecute(Sender: TObject);
    procedure fdEditorFind(Sender: TObject);
    procedure rdEditorReplace(Sender: TObject);
    procedure acPictureExecute(Sender: TObject);
    procedure acColorExecute(Sender: TObject);
    procedure acAlignLeftExecute(Sender: TObject);
    procedure acAlignCenterExecute(Sender: TObject);
    procedure acAlignRightExecute(Sender: TObject);
    procedure acAlignPoetExecute(Sender: TObject);
    procedure EditorSelectionChange(Sender: TObject);
    procedure acAddExecute(Sender: TObject);
    procedure acDeleteExecute(Sender: TObject);
    procedure lvImagesEnter(Sender: TObject);
    procedure lvImagesSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
    procedure lvImagesExit(Sender: TObject);
    procedure tmLoadTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lvImagesDblClick(Sender: TObject);
    procedure acHelpExecute(Sender: TObject);
    procedure acVoteExecute(Sender: TObject);
    procedure acVictorExecute(Sender: TObject);
    procedure SMTPDisplay(Sender: TObject; Msg: String);
    procedure SMTPSessionConnected(Sender: TObject; ErrCode: Word);
    procedure SMTPSessionClosed(Sender: TObject; ErrCode: Word);
    procedure acTitleExecute(Sender: TObject);
    procedure stStatusDblClick(Sender: TObject);
    procedure LinksTimerTimer(Sender: TObject);
    procedure SelTimerTimer(Sender: TObject);
    procedure EditorDropFiles(Sender: TObject; X,Y: Integer; Files: TStrings);
    procedure EditorScrollHint(Sender: TObject; NewTopLine: Integer; var HintText: string);
    procedure acMacroExecute(Sender: TObject);
    function CompletionProposalPaintItem(Key: String; Canvas: TCanvas; x,y: Integer): Boolean;
    procedure acBookFormatExecute(Sender: TObject);
    procedure tmEmulTimer(Sender: TObject);
    procedure acMusicExecute(Sender: TObject);
    procedure StaticText2DblClick(Sender: TObject);
    procedure acMakeSourceBookExecute(Sender: TObject);
    procedure StorageRestorePlacement(Sender: TObject);
  private
    FLinks: TStrings;
    FButtons: TStrings;
    FFind: TStrings;
    FReplace: TStrings;
    FFileName: string;
    FDone: boolean;
    FError: boolean;
    FLine: integer;
    FErrLine: integer;
    FLastFontColor: TColor;
    function ConfirmSave: boolean;
    function AddPicture(const FN: string): string;
    function GetBgColor: TColor;
    function GetCurPara: string;
    function ListItemFile(LI: TListItem; NameOnly: boolean = FALSE): string;
    function FindListItem(const F: string): integer;
    function GetTitle: string;
    function EditorToken: string;
    procedure ClearErrorLine;
    procedure AddMRU(const F: string);
    procedure SetFileName(const Value: string);
    procedure LoadSettings;
    procedure SaveSettings;
    procedure UpdateSettings;
    procedure Indicate(const Msg: string);
    procedure SetBgColor(const Value: TColor);
    procedure FillFileList(A: TStrings; var N: string);
    procedure FillLinks;
    procedure Wait;
    procedure SetCurPara(const Value: string);
    procedure AppHint(Sender: TObject);
    procedure MRUClick(Sender: TObject);
    procedure MacroClick(Sender: TObject);
    procedure FillListItem(LI: TListItem; const FN: string; Silent: boolean = FALSE);
    procedure ChangeStyle(L: TStrings; ToPhone,UpdateList: boolean);
    procedure AppException(Sender: TObject; E: Exception);
    procedure SetTitle(const Value: string);
    procedure CheckRoot(L: TStrings);
  public
    PAT: string;
    Settings: TSettings;
    Macro: array[0..9] of string;
    procedure Error(const M: string; L: integer = 0);
    procedure LoadFromFile(const FN: string);
    procedure SaveToFile(const FN: string);
    procedure SendMail(const MailText: string = ''; MailAtt: string = '');
    function Compile(var ID: string): string;
    function RunEmulator(const ID: string): THandle; 
    property FileName: string read FFileName write SetFileName;
    property BgColor: TColor read GetBgColor write SetBgColor;
    property Title: string read GetTitle write SetTitle;
    property CurPara: string read GetCurPara write SetCurPara;
  end;

var
  fmMain: TfmMain;

function ColorWindowsToBook(C: TColor): string;

implementation

{$R *.dfm}

uses
  ipUtils, Math, IniFiles, Registry, Settings, CustomizeEditor, ShowColor, About, Clipbrd, ShowImage, ShowMusic, Vote, Victor, BookTitle, EditMacro, SyncObjs, FirstStart, socks, ShellAPI;

type
  CTbl = array[0..0,0..1] of string;
  PCTbl = ^CTbl;

var
  CS: TCriticalSection;
  LogFile: string;
  LastAID: string;
  LastView: string;
  LastSet: string;
  KeyWords: TStrings;
  Emul: THandle;
  Dspl: THandle;
  PI: TProcessInformation;
  FirstStartFlag: boolean;
  CNC: integer;
  CN: PCTbl;

  { Routines }

procedure StartLog;
begin
  CS.Enter;
  try
    TFileStream.Create(LogFile,fmCreate).Free;
  finally
    CS.Leave;
  end;
end;

procedure Log(const Msg: string);
var
  F: Text;
begin
  CS.Enter;
  try
    AssignFile(F,LogFile);
    Append(F);
    Writeln(F,Msg);
    Flush(F);
    CloseFile(F);
  finally
    CS.Leave;
  end;
end;

function StandardColor(C: string): string;
var
  I: integer;
begin
  Result:=C;
  for I:=0 to CNC-1 do if AnsiCompareText(C,CN[I,1])=0 then begin
    Result:=CN[I,0];
    break;
  end;
end;

function ColorBookToWindows(C: string; Def: TColor): TColor;
var
  R,G,B,I: integer;
begin
  Result:=Def;
  for I:=0 to CNC-1 do if AnsiCompareText(C,CN[I,0])=0 then begin
    C:=CN[I,1];
    break;
  end;
  R:=StrToIntDef(Split(1,C,[':']),-1);
  G:=StrToIntDef(Split(2,C,[':']),-1);
  B:=StrToIntDef(Split(3,C,[':']),-1);
  if (R<0) or (R>255) or (G<0) or (G>255) or (B<0) or (B>255) then Exit;
  Result:=RGB(R,G,B);
end;

function ColorBookToWindowsBool(C: string; var Res: TColor): boolean;
var
  R,G,B,I: integer;
begin
  Result:=FALSE;
  for I:=0 to CNC-1 do if AnsiCompareText(C,CN[I,0])=0 then begin
    C:=CN[I,1];
    break;
  end;
  R:=StrToIntDef(Split(1,C,[':']),-1);
  G:=StrToIntDef(Split(2,C,[':']),-1);
  B:=StrToIntDef(Split(3,C,[':']),-1);
  if (R<0) or (R>255) or (G<0) or (G>255) or (B<0) or (B>255) then Exit;
  Res:=RGB(R,G,B);
  Result:=TRUE;
end;

function ColorWindowsToBook(C: TColor): string;
begin
  Result:=Format('%d:%d:%d',[C and $FF,(C shr 8) and $FF,(C shr 16) and $FF]);
end;

function IsStyleString(const S: string): boolean;
begin
  Result:=(AnsiPos('$STYLE',S)=1) or (AnsiPos('$KPSTYLE',S)=1);
end;

function IsImgString(const S: string): boolean;
begin
  Result:=(AnsiPos('$KEYPAD',S)=1) or (AnsiPos('$SMILE',S)=1) or (AnsiPos('$BOOKSMILE',S)=1);
end;

function ConnectProxySocket(const Host: string; Port: integer = 80): integer;
var
  H: string;
  P: integer;
begin
  H:=Host;
  P:=Port;
  try
    with TRegistry.Create do try
      RootKey:=HKEY_CURRENT_USER;
      if OpenKey('Software\Microsoft\Windows\CurrentVersion\Internet Settings',FALSE) and ReadBool('ProxyEnable') then begin
        H:=ReadString('ProxyServer');
        P:=StrToIntDef(Split(2,H,[':']),80);
        H:=Split(1,H,[':']);
      end;
    finally
      Free;
    end;
  except end;
  Result:=ConnectSocket(H,P);
end;  

function StrFindPart(P: integer; const S: string): integer;
var
  I,L: integer;
begin
  L:=Length(S);
  Result:=1;
  for I:=1 to P-1 do begin
    while (Result<=L) and (S[Result]=' ') do inc(Result);
    while (Result<=L) and (S[Result]<>' ') do inc(Result);
  end;
  while (Result<=L) and (S[Result]=' ') do inc(Result);
  if Result>L then Result:=0;
end;

function StrExtractPart(Pt: integer; const S: string; var Ps: integer): string;
var
  I: integer;
begin
  Result:='';
  Ps:=StrFindPart(Pt,S);
  if Ps>0 then begin
    I:=Ps;
    while (I<=Length(S)) and (S[I]<>' ') do begin
      Result:=Result+S[I];
      inc(I);
    end;
  end;
end;

function StrReplacePart(Pt,Ps: integer; const S,F: string): string;
var
  I: integer;
begin
  if Ps=0 then Result:=S+' '+F else begin
    Result:=Copy(S,1,Ps-1)+F;
    I:=Ps;
    while (I<=Length(S)) and (S[I]<>' ') do inc(I);
    Result:=Result+Copy(S,I,MaxInt);
  end;
end;

function FindParam(const Smp,Src: string): integer;
begin
  Result:=Pos(Smp,Src);
  if Result>0 then inc(Result,Length(Smp));
end;

function MusType(const F: string): string;
begin
  Result:=ExtractFileExt(F);
  if (AnsiUpperCase(Result)='.MIDI') or (AnsiUpperCase(Result)='.MID') then Result:='midi' else
    if AnsiUpperCase(Result)='.MP3' then Result:='mp3' else
      if AnsiUpperCase(Result)='.AMR' then Result:='amr' else Result:='';
end;

{ TfmMain }

procedure TfmMain.Error(const M: string; L: integer = 0);
var
  O: integer;
begin
  if L=0 then L:=FLine;
  stStatus.Font.Color:=clRed;
  stStatus.Caption:=' '+M;
  stStatus.Tag:=L;
  if L>0 then begin
    if FErrLine<>L then begin
      O:=FErrLine;
      FErrLine:=L;
      if O>=0 then Editor.InvalidateLine(O);
      if L>=0 then Editor.InvalidateLine(L);
      Application.ProcessMessages;
    end;
    Editor.TopLine:=L-(Editor.LinesInWindow div 2);
    Editor.CaretY:=L;
    Editor.CaretX:=1;
    ShowErr(M);
  end;  
  Abort;
end;

procedure TfmMain.ClearErrorLine;
var
  L: integer;
begin
  if FErrLine>=0 then begin
    L:=FErrLine;
    FErrLine:=0;
    Editor.InvalidateLine(L);
    stStatus.Caption:='';
    stStatus.Tag:=0;
    stStatus.Font.Color:=clPurple;
  end;
end;

procedure TfmMain.EditorChange(Sender: TObject);
begin
  ClearErrorLine;
  LinksTimer.Enabled:=FALSE;
  LinksTimer.Enabled:=TRUE;
end;

procedure TfmMain.FormCreate(Sender: TObject);
var
  I,C: integer;
  P,A: string;
  function GetMText(const FN: string): string;
  begin
    with TStringList.Create do try
      LoadFromFile(FN);
      Result:=Text;
    finally
      Free;
    end;
  end;
begin
  PAT:=Application.Title;
  Application.OnHint:=AppHint;
  Application.OnException:=AppException;
  FErrLine:=0;
  FLine:=0;
  Macro[1]:='|  <br>|  ';
  Macro[2]:='|  <hr>|  ';
  Macro[3]:='<aboutme> Об авторе';
  Macro[4]:='<sendme> Оставить отзыв';
  Macro[5]:='<payme> Кепка творца';
  Macro[6]:='<hr><hr>|  <p>|  <pc><b>[...]</b>|  <p>|  <hr><hr>||  ';
  Macro[0]:='<store> В хранилище (<color:blue><b><size>K</b></color>)';
  LoadSettings;
  FButtons:=TStringList.Create;
  FLinks:=TStringList.Create;
  FFind:=TStringList.Create;
  FReplace:=TStringList.Create;
  FileName:='';
  if (ParamCount=2) and (ParamStr(1)='-s') and FileExists(ParamStr(2)) then begin
    A:='';
    Settings.PhoneStyle:=FileExists(ChangeFileExt(ParamStr(2),'.att'));
    if FileExists(ChangeFileExt(ParamStr(2),'.att')) then with TIniFile.Create(ChangeFileExt(ParamStr(2),'.att')) do try
      C:=ReadInteger('Картинки','Количество',0);
      for I:=1 to C do begin
        P:=ReadString('Картинки',IntToStr(I),'');
        A:=A+ExtractFilePath(ParamStr(2))+P+#13#10;
      end;
    finally
      Free;
    end;
    if Settings.PhoneStyle then begin
      FileName:=ParamStr(2);
      SendMail(GetMText(ParamStr(2)),A);
    end else begin
      Editor.Modified:=FALSE;
      LoadFromFile(ParamStr(2));
      SendMail;
    end;
    Application.Terminate;
    Exit;
  end;
  EditorChange(nil);
end;

procedure TfmMain.FormDestroy(Sender: TObject);
begin
  FReplace.Free;
  FFind.Free;
  FLinks.Free;
  FButtons.Free;
end;

procedure TfmMain.FillListItem(LI: TListItem; const FN: string; Silent: boolean = FALSE);
var
  _: string;
  Ic: HIcon;
  TIc: TIcon;
begin
  LI.Caption:=IntToStr(LI.Index+1)+': '+AddPicture(FN);
  if Silent then Exit;
  GetSmallFileInfo(FN,_,Ic);
  TIc:=TIcon.Create;
  try
    TIc.Handle:=Ic;
    LI.ImageIndex:=ilImages.AddIcon(TIc);
  finally
    TIc.Free;
  end;
end;

procedure TfmMain.LoadFromFile(const FN: string);
var
  I,C: integer;
  P: string;
begin
  ClearErrorLine;
  Editor.Lines.Clear;
  lvImages.Items.Clear;
  ilImages.Clear;
  Settings.PhoneStyle:=FileExists(ChangeFileExt(FN,'.att'));
  UpdateSettings;
  Editor.Lines.LoadFromFile(FN);
  Editor.Text:=ReplaceStr(Editor.Text,#9,'        ');
  FileName:=FN;
  Editor.Modified:=FALSE;
  if FileExists(ChangeFileExt(FN,'.att')) then with TIniFile.Create(ChangeFileExt(FN,'.att')) do try
    C:=ReadInteger('Картинки','Количество',0);
    for I:=1 to C do begin
      P:=ReadString('Картинки',IntToStr(I),'');
      if (P<>'') and FileExists(ExtractFilePath(FN)+P) then FillListItem(lvImages.Items.Add,ExtractFilePath(FN)+P);
    end;
  finally
    Free;
  end;
  AddMRU(FN);
  FillLinks;
end;

procedure TfmMain.SaveToFile(const FN: string);
var
  I: integer;
begin
  ClearErrorLine;
  Editor.Lines.SaveToFile(FN);
  Editor.Modified:=FALSE;
  if Settings.PhoneStyle then with TIniFile.Create(ChangeFileExt(FN,'.att')) do try
    WriteInteger('Картинки','Количество',lvImages.Items.Count);
    for I:=0 to lvImages.Items.Count-1 do WriteString('Картинки',IntToStr(I+1),ListItemFile(lvImages.Items[I],TRUE));
  finally
    Free;
  end else if FileExists(ChangeFileExt(FN,'.att')) and not Settings.PhoneStyle then DeleteFile(ChangeFileExt(FN,'.att'));
end;

procedure TfmMain.acFileNewExecute(Sender: TObject);
begin
  if ConfirmSave then begin
    FileName:='';
    Editor.ClearAll;
    lvImages.Items.Clear;
    ilImages.Clear;
  end;  
end;

procedure TfmMain.acFileOpenExecute(Sender: TObject);
begin
  with OpenDialog do if ConfirmSave and Execute then LoadFromFile(FileName);
end;

procedure TfmMain.acFileSaveExecute(Sender: TObject);
begin
  if FileName='' then acFileSaveAs.Execute else SaveToFile(FileName);
end;

procedure TfmMain.acFileSaveAsExecute(Sender: TObject);
begin
  if SaveDialog.Execute then begin
    SaveToFile(SaveDialog.FileName);
    FileName:=SaveDialog.FileName;
    AddMRU(SaveDialog.FileName);
  end;
end;

procedure TfmMain.acFileExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TfmMain.SetFileName(const Value: string);
begin
  FFileName:=Value;
  if Value='' then begin
    Application.Title:=PAT;
    Caption:=PAT;
    SaveDialog.InitialDir:=ExtractFilePath(FFileName);
    SaveDialog.FileName:='';
  end else begin
    Application.Title:=Format('%s - %s',[ExtractFileName(Value),PAT]);
    Caption:=Format('%s - [%s]',[PAT,Value]);
  end;
end;

procedure TfmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=ConfirmSave;
end;

function TfmMain.ConfirmSave: boolean;
begin
  Result:=TRUE;
  if Editor.Modified then case ShowDlg('Сохранить изменения?',mtConfirmation,[mbYes,mbNo,mbCancel]) of
    mrYes: acFileSave.Execute;
    mrCancel: Result:=FALSE;
  end;
end;

procedure TfmMain.ActionListUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  acFileSave.Enabled:=Editor.Modified;
  acBold.Enabled:=Editor.SelAvail;
  acItalic.Enabled:=acBold.Enabled;
  acUnderline.Enabled:=acBold.Enabled;
  acBig.Enabled:=acBold.Enabled;
  acSmall.Enabled:=acBold.Enabled;
  acFind.Enabled:=Editor.LineCount>0;
  acFindNext.Enabled:=acFind.Enabled and (fdEditor.FindText<>'');
  acReplace.Enabled:=acFind.Enabled;
  acSelectAll.Enabled:=acFind.Enabled;
  acCut.Enabled:=Editor.SelAvail;
  acCopy.Enabled:=Editor.SelAvail;
  acPaste.Enabled:=Clipboard.HasFormat(CF_TEXT);
  acUndo.Enabled:=Editor.CanUndo;
  acRedo.Enabled:=Editor.CanRedo;
  acColor.Enabled:=not acBold.Enabled;
  acDelete.Enabled:=lvImages.Selected<>nil;
end;

procedure TfmMain.UpdateSettings;
var
  I: integer;
const
  StyleText: array[boolean] of string = ('обычная книга' ,'как с телефона');
  function MacroCaption(const S: string): string;
  begin
    Result:=S;
    if Length(Result)>64 then begin
      SetLength(Result,60);
      Result:=Result+' ...';
    end;
  end;
  procedure InsertItem(I: integer);
  var
    MI: TMenuItem;
  begin
    if Macro[I]='' then Exit;
    MI:=TMenuItem.Create(miFormatMacro);
    MI.Caption:=MacroCaption(Macro[I]);
    MI.Tag:=I;
    MI.HelpContext:=miFormatMacro.HelpContext;
    MI.ShortCut:=TextToShortCut('Alt+'+IntToStr(I));
    MI.OnClick:=MacroClick;
    miFormatMacro.Insert(0,MI);
  end;
begin
  with Settings do begin
    splImages.Visible:=PhoneStyle;
    pnImages.Visible:=PhoneStyle;
    pnImages.Top:=10000;
    sbMain.Panels[0].Text:=' Стиль: '+StyleText[PhoneStyle];
    with miFormatMacro do while Count>2 do Delete(0);
    InsertItem(0);
    for I:=9 downto 1 do InsertItem(I); 
  end;
end;

procedure TfmMain.MRUClick(Sender: TObject);
begin
  LoadFromFile((Sender as TMenuItem).Hint);
end;

procedure TfmMain.AddMRU(const F: string);
var
  I: integer;
  MI: TMenuItem;
  R: TRect;
  P: PChar;
begin
  if F<>'' then try
    for I:=5 to miFile.Count-3 do if AnsiCompareText(miFile.Items[I].Hint,F)=0 then begin
      miFile.Items[I].MenuIndex:=5;
      Exit;      
    end;
    MI:=TMenuItem.Create(Self);
    MI.HelpContext:=acFileOpen.HelpContext;
    MI.Hint:=F;
    P:=AllocMem(1024);
    try
      StrPCopy(P,F);
      R:=Rect(0,0,200,24);
      DrawText(Canvas.Handle,P,Length(F),R,DT_SINGLELINE or DT_PATH_ELLIPSIS or DT_MODIFYSTRING);
      MI.Caption:=P;
    finally
      FreeMem(P);
    end;
    MI.OnClick:=MRUClick;
    miFile.Insert(5,MI);
    while miFile.Count>15 do miFile.Items[miFile.Count-3].Free;
  finally  
    for I:=5 to miFile.Count-3 do miFile.Items[I].ShortCut:=TextToShortCut('Ctrl+'+IntToStr(I-4));
  end;
end;

const
  SGeneral = 'Общие';
  SFiles = 'Последние открытые файлы';
  SMail = 'Почта';
  SPassword = 'Пароль';
  SEditor = 'Редактор';
  SBack = 'Цвет фона';
  SFore = 'Цвет текста';
  SStyle = 'Стиль шрифта';
  SMacro = 'Макросы';
  SHost = 'Сервер';
  SPort = 'Порт';
  Gorod = 'gorod.jetcity.ru';

procedure TfmMain.LoadSettings;
var
  I: integer;
begin
  TBIniLoadPositions(Self,ChangeFileExt(Application.ExeName,'.ini'),'Управление');
  with TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')),Settings do try
    FirstStartFlag:=ReadBool(SGeneral,'Первый старт',TRUE);
    Ident:=ReadString(SGeneral,'Идентификатор','00000000');
    Password:=ReadString(SGeneral,SPassword,'');
    JCHost:=ReadString(SGeneral,SHost,Gorod);
    JCPort:=ReadInteger(SGeneral,SPort,80);
    FLastFontColor:=ColorBookToWindows(ReadString(SGeneral,'Цвет',''),clBlack);
    PhoneStyle:=ReadBool(SGeneral,'Стиль как с телефона',FALSE);
    LastView:=ReadString(SGeneral,'Просмотр','Fri, 26 Jan 1975 05:45:23 GMT');
    LastSet:=ReadString(SGeneral,'Настройка','Fri, 26 Jan 1975 05:45:23 GMT');
    LastAID:=ReadString(SGeneral,'Временная книга','99990000');
    for I:=miFile.Count-1 downto 0 do if miFile.Items[I].Caption[1] in ['0'..'9'] then miFile.Items[I].Free;
    for I:=ReadInteger(SFiles,'Количество',0) downto 1 do AddMRU(ReadString(SFiles,IntToStr(I),''));
    with SMTP do begin
      Host:=ReadString(SMail,SHost,Gorod);
      Port:=ReadString(SMail,SPort,'smtp');
      Username:=ReadString(SMail,'Логин','');
      Password:=ReadString(SMail,SPassword,'');
      HdrFrom:=ReadString(SMail,'Отправитель','');
      FromName:=HdrFrom;
      HdrTo:=ReadString(SMail,'Получатель','jc-xxxxxx@jetcity.ru');
      RcptName.Text:=HdrTo;
      AuthType:=TSmtpAuthType(ReadInteger(SMail,'Аутентификация',0));
    end;
    with Editor do begin
      Color:=ColorBookToWindows(ReadString(SEditor,SBack,''),Color);
      Font.Size:=ReadInteger(SEditor,'Размер шрифта',Font.Size);
      Font.Name:=ReadString(SEditor,'Название шрифта',Font.Name);
      RightEdge:=ReadInteger(SEditor,'Отступ кромки',RightEdge);
      RightEdgeColor:=ColorBookToWindows(ReadString(SEditor,'Цвет кромки',''),RightEdgeColor);
    end;
    with BookSyn.ArgAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.CommentAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.DirectiveAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.InvalidAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.KeyAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptKeywordAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptFuncAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptLabelAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptConstAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.LinkAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.LabelAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.NumberAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.SpaceAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.SplitAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.SubstAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.SymbolAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ValueAttri do begin
      Background:=ColorBookToWindows(ReadString(Name,SBack,''),Background);
      Foreground:=ColorBookToWindows(ReadString(Name,SFore,''),Foreground);
      IntegerStyle:=ReadInteger(Name,SStyle,IntegerStyle);
    end;
    for I:=0 to 9 do Macro[I]:=ReadString(SMacro,IntToStr(I),Macro[I]);
    UpdateSettings;
  finally
    Free;
  end;
end;

procedure TfmMain.SaveSettings;
var
  I: integer;
begin
  TBIniSavePositions(Self,ChangeFileExt(Application.ExeName,'.ini'),'Управление');
  with TIniFile.Create(ChangeFileExt(Application.ExeName,'.ini')),Settings do try
    WriteBool(SGeneral,'Первый старт',FirstStartFlag);
    WriteString(SGeneral,'Идентификатор',Ident);
    WriteString(SGeneral,SPassword,Password);
    WriteString(SGeneral,SHost,JCHost);
    WriteInteger(SGeneral,SPort,JCPort);
    WriteString(SGeneral,'Цвет',ColorWindowsToBook(FLastFontColor));
    WriteBool(SGeneral,'Стиль как с телефона',PhoneStyle);
    WriteString(SGeneral,'Просмотр',LastView);
    WriteString(SGeneral,'Настройка',LastSet);
    WriteString(SGeneral,'Временная книга',LastAID);
    WriteInteger(SFiles,'Количество',miFile.Count-7);
    for I:=5 to miFile.Count-3 do WriteString(SFiles,IntToStr(I-4),miFile.Items[I].Hint);
    with SMTP do begin
      WriteString(SMail,SHost,Host);
      WriteString(SMail,SPort,Port);
      WriteString(SMail,'Логин',Username);
      WriteString(SMail,SPassword,Password);
      WriteString(SMail,'Отправитель',HdrFrom);
      WriteString(SMail,'Получатель',HdrTo);
      WriteInteger(SMail,'Аутентификация',integer(AuthType));
    end;
    with Editor do begin
      WriteString(SEditor,SBack,ColorWindowsToBook(Color));
      WriteInteger(SEditor,'Размер шрифта',Font.Size);
      WriteString(SEditor,'Название шрифта',Font.Name);
      WriteInteger(SEditor,'Отступ кромки',RightEdge);
      WriteString(SEditor,'Цвет кромки',ColorWindowsToBook(RightEdgeColor));
    end;
    with BookSyn.ArgAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.CommentAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.DirectiveAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptKeywordAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptFuncAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptLabelAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ScriptConstAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.InvalidAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.KeyAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.LinkAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.LabelAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.NumberAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.SpaceAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.SplitAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.SubstAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.SymbolAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    with BookSyn.ValueAttri do begin
      WriteString(Name,SBack,ColorWindowsToBook(Background));
      WriteString(Name,SFore,ColorWindowsToBook(Foreground));
      WriteInteger(Name,SStyle,IntegerStyle);
    end;
    for I:=0 to 9 do WriteString(SMacro,IntToStr(I),Macro[I]);
    UpdateSettings;
  finally
    Free;
  end;
end;

procedure TfmMain.ChangeStyle(L: TStrings; ToPhone,UpdateList: boolean);
var
  I,J,P,Ix,W,A: integer;
  S,NS,Q: string;
  IL,NL: TStrings;
  procedure ProcessStyleToPhone(const Smp: string);
  var
    I: integer;
  begin
    W:=FindParam(Smp,AnsiUpperCase(S));
    if W>0 then begin
      Q:='';
      I:=W;
      while (I<=Length(S)) and (S[I]<>' ') do begin
        Q:=Q+S[I];
        inc(I);
      end;
      A:=IL.IndexOf(Q);
      if A>=0 then begin
        Ix:=NL.IndexOf(IL[A]);
        if Ix<0 then Ix:=NL.Add(IL[A]);
        S:=Copy(S,1,W-1)+IntToStr(Ix+1)+Copy(S,W+Length(Q),MaxInt);
      end;
    end;
  end;
  procedure ProcessPhoneToStyle(const Smp: string);
  var
    I: integer;
  begin
    W:=FindParam(Smp,AnsiUpperCase(S));
    if W>0 then begin
      Q:='';
      I:=W;
      while (I<=Length(S)) and (S[I]<>' ') do begin
        Q:=Q+S[I];
        inc(I);
      end;
      A:=StrToIntDef(Q,0);
      if A>0 then S:=Copy(S,1,W-1)+ListItemFile(lvImages.Items[A-1],TRUE)+Copy(S,W+Length(Q),MaxInt);
    end;
  end;
  procedure ProcessStyleToPhoneKS(Pt: integer);
  begin
    Q:=StrExtractPart(Pt,S,W);
    A:=IL.IndexOf(Q);
    if A>=0 then begin
      Ix:=NL.IndexOf(IL[A]);
      if Ix<0 then Ix:=NL.Add(IL[A]);
      S:=StrReplacePart(Pt,W,S,IntToStr(Ix+1));
    end;
  end;
  procedure ProcessPhoneToStyleKS(Pt: integer);
  begin
    Q:=StrExtractPart(Pt,S,W);
    A:=StrToIntDef(Q,0);
    if A>0 then S:=StrReplacePart(Pt,W,S,ListItemFile(lvImages.Items[A-1],TRUE));
  end;
begin
  if ToPhone then begin
    for I:=0 to L.Count-1 do begin
      S:=AnsiUpperCase(Trim(L[I]));
      if Pos(':ROOT',S)=1 then begin
        S:=L[I];
        P:=Pos(':',S);
        S:=Copy(S,1,P-1)+'!'+Copy(S,P,MaxInt);
        L[I]:=S;
        break;
      end;
    end;
    IL:=TStringList.Create;
    NL:=TStringList.Create;
    try
      FillFileListEx(ExtractFilePath(FFileName),IL,FALSE,['bmp','jpg','gif','png','midi','mid','amr','mp3'],TRUE,FALSE);
      for I:=0 to L.Count-1 do begin
        S:=L[I];
        if (Pos('$STYLE ',AnsiUpperCase(Trim(S)))=1) or (Pos('$KPSTYLE ',AnsiUpperCase(Trim(S)))=1) then begin
          ProcessStyleToPhone(' IMAGE=');
          ProcessStyleToPhone(' WP=');
          ProcessStyleToPhone(' MIDI=');
          ProcessStyleToPhone(' AMR=');
          ProcessStyleToPhone(' MP3=');
        end else if (Pos('$SMILE ',AnsiUpperCase(Trim(S)))=1) or (Pos('$BOOKSMILE ',AnsiUpperCase(Trim(S)))=1) then begin
          ProcessStyleToPhoneKS(2);
        end else if Pos('$KEYPAD ',AnsiUpperCase(Trim(S)))=1 then begin
          ProcessStyleToPhoneKS(4);
          ProcessStyleToPhoneKS(5);
        end else for J:=0 to IL.Count-1 do begin
          NS:=ReplaceText(S,Format('<img:%s>',[IL[J]]),'<img:'#1#1#1':128>');
          NS:=ReplaceText(NS,Format('<img:%s:',[IL[J]]),'<img:'#1#1#1':');
          if NS<>S then begin
            Ix:=NL.IndexOf(IL[J]);
            if Ix<0 then Ix:=NL.Add(IL[J]);
            S:=ReplaceText(NS,#1#1#1,IntToStr(Ix+1));
          end;  
        end;
        L[I]:=S;
      end;
      if UpdateList then begin
        lvImages.Items.Clear;
        ilImages.Clear;
        for I:=0 to NL.Count-1 do FillListItem(lvImages.Items.Add,ExtractFilePath(FFileName)+NL[I]);
      end;  
    finally
      IL.Free;
      NL.Free;
    end;
  end else begin
    for I:=0 to L.Count-1 do begin
      S:=AnsiUpperCase(Trim(L[I]));
      if (S<>'') and (S[1]='!') then begin
        S:=Trim(Copy(S,2,MaxInt));
        if Pos(':ROOT',S)=1 then begin
          S:=L[I];
          P:=Pos('!',S);
          S:=Copy(S,1,P-1)+Copy(S,P+1,MaxInt);
          L[I]:=S;
          break;
        end;
      end;
    end;
    for I:=0 to L.Count-1 do begin
      S:=L[I];
      if (Pos('$STYLE ',AnsiUpperCase(Trim(S)))=1) or (Pos('$KPSTYLE ',AnsiUpperCase(Trim(S)))=1) then begin
        ProcessPhoneToStyle(' IMAGE=');
        ProcessPhoneToStyle(' WP=');
        ProcessPhoneToStyle(' MIDI=');
        ProcessPhoneToStyle(' AMR=');
        ProcessPhoneToStyle(' MP3=');
      end else if (Pos('$SMILE ',AnsiUpperCase(Trim(S)))=1) or (Pos('$BOOKSMILE ',AnsiUpperCase(Trim(S)))=1) then begin
        ProcessPhoneToStyleKS(2);
      end else if Pos('$KEYPAD ',AnsiUpperCase(Trim(S)))=1 then begin
        ProcessPhoneToStyleKS(4);
        ProcessPhoneToStyleKS(5);
      end else for J:=0 to lvImages.Items.Count-1 do S:=ReplaceText(S,Format('<img:%d:',[J+1]),Format('<img:%s:',[ListItemFile(lvImages.Items[J],TRUE)]));
      L[I]:=S;
    end;
    if UpdateList then begin
      lvImages.Items.Clear;
      ilImages.Clear;
    end;  
  end;
end;

procedure TfmMain.acCompilerSettingsExecute(Sender: TObject);
var
  B: boolean;
begin
  B:=Settings.PhoneStyle;
  if not TfmSettings.ShowInfo then Exit;
  SaveSettings;
  if Settings.PhoneStyle=B then Exit;
  ChangeStyle(Editor.Lines,Settings.PhoneStyle,TRUE);
  Editor.Modified:=TRUE;
  EditorChange(nil);
end;

procedure TfmMain.acRefreshExecute(Sender: TObject);
var
  Res,ID,Code: string;
  EC: cardinal;
  P: integer;
const
  SCmpErr = #13#10'2 Ошибки компиляци';
begin
  if Emul<>0 then begin
    if GetExitCodeProcess(PI.hProcess,EC) and (EC=STILL_ACTIVE) then TerminateProcess(PI.hProcess,0);
    Emul:=0;
    pnEmul.Caption:='(эмулятор не запущен)';
  end;
  Res:=Compile(ID);
  Code:=Split(1,Res,[' ']);
  Res:=Trim(Copy(Res,Length(Code)+1,MaxInt));
  if (Code='0') and (ID<>'') then RunEmulator(ID) else
    if Code='2' then begin
      Res:=Trim(Split(2,Res,[#10]));
      Code:=Trim(Split(2,Res,[#9]));
      Res:=Trim(Split(3,Res,[#9]));
      Error(Res,StrToIntDef(Code,0));
    end else if Pos(SCmpErr,Res)>0 then begin
      P:=Pos(SCmpErr,Res);
      Res:=Trim(Copy(Res,P+Length(SCmpErr),MaxInt));
      Res:=Trim(Split(1,Res,[#10]));
      Code:=Trim(Split(2,Res,[#9]));
      Res:=Trim(Split(3,Res,[#9]));
      Error(Res,StrToIntDef(Code,0));
    end else Error(Res);
end;

procedure TfmMain.acAboutExecute(Sender: TObject);
begin
  TfmAbout.ShowInfo;
end;

function TfmMain.GetBgColor: TColor;
var
  S: string;
  I: integer;
begin
  Result:=clWhite;
  for I:=0 to Editor.Lines.Count-1 do begin
    S:=Trim(Editor.Lines[I]);
    if (S<>'') and (S[1]='$') and (Pos('$BACKGROUND ',AnsiUpperCase(S))=1) then begin
      Result:=ColorBookToWindows(Split(2,S,[' ']),Result);
      break;
    end;
  end;
end;

procedure TfmMain.SetBgColor(const Value: TColor);
var
  S: string;
  P,I: integer;
  Done: boolean;
  C: TColor;
begin
  Done:=FALSE;
  for I:=0 to Editor.Lines.Count-1 do begin
    S:=Trim(Editor.Lines[I]);
    if (S<>'') and (S[1]='$') and (TxtPos('$BACKGROUND ',S)=1) then begin
      if ColorBookToWindowsBool(Split(2,S,[' ']),C) then if C<>Value then begin
        S:=Editor.Lines[I];
        P:=TxtPos('$BACKGROUND ',S);
        if P>0 then begin
          Editor.Lines[I]:=Copy(S,1,P+11)+ColorWindowsToBook(Value);
          Editor.Modified:=TRUE;
          EditorChange(nil);
          Done:=TRUE;
          break;
        end;
      end else Exit;
    end;
  end;
  if not Done then begin
    Editor.Lines.Insert(0,'$background '+ColorWindowsToBook(Value));
    Editor.Modified:=TRUE;
    EditorChange(nil);
  end;
end;

function TfmMain.GetTitle: string;
var
  S: string;
  I: integer;
begin
  Result:='';
  for I:=0 to Editor.Lines.Count-1 do begin
    S:=Trim(Editor.Lines[I]);
    if (S<>'') and (S[1]='$') and (TxtPos('$TITLE ',S)=1) then begin
      Result:=Trim(Copy(S,8,MaxInt));
      break;
    end;
  end;
end;

procedure TfmMain.SetTitle(const Value: string);
var
  S: string;
  P,I: integer;
  Done: boolean;
begin
  Done:=FALSE;
  for I:=0 to Editor.Lines.Count-1 do begin
    S:=Trim(Editor.Lines[I]);
    if (S<>'') and (S[1]='$') and (TxtPos('$TITLE ',S)=1) then begin
      S:=Editor.Lines[I];
      P:=TxtPos('$TITLE ',S);
      if P>0 then if Trim(Copy(S,P+7,MaxInt))<>Value then begin
        Editor.Lines[I]:=Copy(S,1,P+6)+Value;
        Editor.Modified:=TRUE;
        EditorChange(nil);
        Done:=TRUE;
        break;
      end else Exit;
    end;
  end;
  if not Done then begin
    Editor.Lines.Insert(0,'$title '+Value);
    Editor.Modified:=TRUE;
    EditorChange(nil);
  end;
end;

procedure TfmMain.acBackgroundExecute(Sender: TObject);
begin
  ColorDialog.HelpContext:=(Sender as TAction).HelpContext;
  with ColorDialog do begin
    Color:=BgColor;
    if Execute then BgColor:=Color;
  end;
end;

procedure TfmMain.acTitleExecute(Sender: TObject);
var
  T: string;
begin
  T:=Title;
  if TfmTitle.ShowInfo(T) then Title:=T;
end;

procedure TfmMain.FillLinks;
var
  I: integer;
  S: string;
  R: TStrings;
begin
  R:=TStringList.Create;
  try
    if Settings.PhoneStyle then R.Add('<ROOT');
    for I:=0 to Editor.Lines.Count-1 do begin
      S:=Trim(Split(1,Trim(Editor.Lines[I]),['(']));
      if (S<>'') and (S[1]=':') then R.Add('<'+AnsiUpperCase(Copy(S,2,MaxInt)));
    end;
    BookSyn.LinkWords:=R;
    R.Clear;
    for I:=0 to Editor.Lines.Count-1 do begin
      S:=Trim(Split(1,Trim(Editor.Lines[I]),['(']));
      if (Length(S)>4) and (S[1]='$') and (S[2] in ['f','F']) and (S[3] in [#9,' ']) then R.Add(AnsiUpperCase(Trim(Copy(S,4,MaxInt))));
    end;
    BookSyn.FuncWords:=R;
  finally
    R.Free;
  end;
end;

procedure TfmMain.acEditorSettingsExecute(Sender: TObject);
begin
  if TfmCustomizeEditor.ShowInfo then SaveSettings; 
end;

procedure TfmMain.acPickColorExecute(Sender: TObject);
var
  P: TPoint;
  DC: HDC;
  C: TColor;
begin
  GetCursorPos(P);
  DC:=GetDC(0);
  try
    C:=TColor(GetPixel(DC,P.X,P.Y));
  finally
    ReleaseDC(0,DC);
  end;
  if TfmShowColor.ShowInfo(C) then BgColor:=C;
end;

procedure TfmMain.Wait;
begin
  repeat
    Application.ProcessMessages
  until Application.Terminated or (SMTP.State in [smtpReady,smtpInternalReady]);
end;

procedure TfmMain.Indicate(const Msg: string);
begin
  stStatus.Font.Color:=clPurple;
  stStatus.Caption:=' '+Msg;
  Application.ProcessMessages;
end;

procedure TfmMain.SendMail(const MailText: string = ''; MailAtt: string = '');
var
  N,B,Arc: string;
  I: integer;
  S: TStrings;
begin
  if FFileName='' then acFileSaveExecute(nil);
  if FFileName='' then Exit;
  StartLog;
  StartAppWait;
  try
    with SMTP do try
      Indicate('Построение списка файлов...');
      S:=TStringList.Create;
      try
        Arc:=ExtractFilePath(Application.ExeName)+'book.zip';
        if FileExists(Arc) then
          if not Windows.DeleteFile(PChar(Arc)) then ShowErr(SysErrorMessage(GetLastError));
        try
          if MailAtt='' then FillFileList(S,N) else S.Text:=MailAtt;
        except
          on EAbort do ;
        end;
        if not Settings.PhoneStyle then begin
          Indicate('Архивирование...');
          acFileSaveExecute(nil);
          if AnsiCompareText(ExtractFileName(FFileName),'book.ini')=0 then B:=FFileName else begin
            B:=ExtractFilePath(Application.ExeName)+'book.ini';
            CopyFile(PChar(FFileName),PChar(B),FALSE);
          end;
          S.Add(B);
          Zip.OpenArchive(Arc);
          for I:=Zip.Count-1 downto 0 do Zip.DeleteAt(I);
          Zip.Save;
          for I:=0 to S.Count-1 do Zip.AddFiles(S[I],0);
          Zip.Save;
          Zip.CloseArchive;
        end;
        if not SMTP.Connected then begin
          Indicate('Соединение...');
          FError:=FALSE;
          Wait;
          Open;
          Wait;
          if FError then Exit;
        end;
        Indicate('Отправка...');
        if Settings.PhoneStyle then begin
          EmailFiles:=S;
          if MailText='' then MailMessage:=Editor.Lines else MailMessage.Text:=MailText;
          HdrSubject:='book';
        end else begin
          EmailFiles.Text:=Arc;
          MailMessage.Text:='';
          HdrSubject:=N;
        end;
      finally
        S.Free;
      end;
      FDone:=FALSE;
      FError:=FALSE;
      Wait;
      Mail;
      Wait;
      repeat Application.ProcessMessages until FDone or FError;
      if FError then Exit;
      Indicate('Отправлено');
      Wait;
      Quit;
      Wait;
      Indicate('Книга успешно отправлена в Город');
    except
      on E: Exception do ShowErr(E.Message);
    end;
  finally
    EndAppWait;
  end;
end;

procedure TfmMain.CheckRoot(L: TStrings);
var
  N,I,P: integer;
  S,V: string;
begin
  N:=-1;
  for I:=0 to L.Count-1 do begin
    S:=Trim(L[I]);
    if Pos('!$file',AnsiLowerCase(S))=1 then Exit;
    if S<>'' then break;
  end;
  for I:=0 to L.Count-1 do begin
    S:=Trim(L[I]);
    if S='' then continue;
    if (Pos(':ROOT',AnsiUpperCase(S))=1) and ((Length(S)=5) or not (S[6] in ['a'..'z','A'..'Z','_','0'..'9','а'..'я','А'..'Я','ё','Ё'])) then Exit;
    if S[1]='!' then begin
      V:=Trim(Copy(S,2,MaxInt));
      if (Pos(':ROOT',AnsiUpperCase(V))=1) and ((Length(V)=5) or not (V[6] in ['a'..'z','A'..'Z','_','0'..'9','а'..'я','А'..'Я','ё','Ё'])) then begin
        P:=Pos('!',L[I]);
        L[I]:=Copy(L[I],1,P-1)+Copy(L[I],P+1,MaxInt);
        Exit;
      end;
    end;
    if S[1]='$' then continue;
    if N<0 then N:=I;
  end;
  if N<0 then N:=0;
  L.Insert(N,':root'); 
end;

function TfmMain.Compile(var ID: string): string;
var
  N,B,Arc,Res: string;
  Sock,I: integer;
  L,S: TStrings;
const
  Header = 'POST http://%s:%d/city/bot/compile HTTP/1.0'#13#10+
           'Host: %s:%d'#13#10+
           'Content-Type: application/zip'#13#10+
           'Content-Length: %d'#13#10+
           'x-city-aid: %s'#13#10+  
           'x-city-owner: %s%s'#13#10#13#10;
begin
  ClearErrorLine;
  if not Settings.PhoneStyle then CheckRoot(Editor.Lines);
  ID:='';
  Result:='';
  if FFileName='' then acFileSaveExecute(nil);
  if FFileName='' then Exit;
  StartLog;
  StartAppWait;
  try
    try
      Indicate('Построение списка файлов...');
      S:=TStringList.Create;
      try
        Arc:=ExtractFilePath(Application.ExeName)+'book.zip';
        if FileExists(Arc) then if not Windows.DeleteFile(PChar(Arc)) then ShowErr(SysErrorMessage(GetLastError));
        try
          FillFileList(S,N);
        except
          on EAbort do ;
        end;
        Indicate('Архивирование...');
        acFileSaveExecute(nil);
        B:=ExtractFilePath(Application.ExeName)+'book.ini';
        CopyFile(PChar(FFileName),PChar(B),FALSE);
        if Settings.PhoneStyle then begin
          L:=TStringList.Create;
          try
            L.LoadFromFile(B);
            ChangeStyle(L,FALSE,FALSE);
            CheckRoot(L);
            L.SaveToFile(B);
          finally
            L.Free;
          end;
        end;
        S.Add(B);
        Zip.OpenArchive(Arc);
        for I:=Zip.Count-1 downto 0 do Zip.DeleteAt(I);
        Zip.Save;
        for I:=0 to S.Count-1 do Zip.AddFiles(S[I],0);
        Zip.Save;
        Zip.CloseArchive;
      finally
        S.Free;
      end;
      Indicate('Соединение...');
      Sock:=ConnectProxySocket(Settings.JCHost,Settings.JCPort);
      try
        with TMemoryStream.Create do try
          LoadFromFile(Arc);
          Seek(0,soFromBeginning);
          Res:=Format(Header,[Settings.JCHost,Settings.JCPort,Settings.JCHost,Settings.JCPort,Size,LastAID,Settings.Ident,Settings.Password]);
          SendString(Sock,Res);
          Indicate('Компиляция...');
          SendData(Sock,Memory^,Size);
        finally
          Free;
        end;
        Res:=ReceiveString(Sock);
        Result:=Split2(2,Res,#13#10#13#10);
        if Pos('0 ',Result)=1 then begin
          ID:=Trim(Split(2,Result,[#10]));
          Indicate('Готово');
        end;
      finally
        DisconnectSocket(Sock);
      end;
    except
      on E: Exception do ShowErr(E.Message);
    end;
  finally
    EndAppWait;
  end;
end;

procedure TfmMain.SMTPRequestDone(Sender: TObject; RqType: TSmtpRequest; ErrorCode: Word);
begin
  if ErrorCode<>0 then begin
    Indicate('Ошибка!');
    ShowErr('Ошибка при отправке почты:'#13#10+SMTP.LastResponse);
    FError:=TRUE;
  end else FDone:=(RqType=smtpMail);
end;

procedure TfmMain.FillFileList(A: TStrings; var N: string);
var
  I: integer;
  US,S: string;
  procedure ProcessImg;
  var
    F: integer;
    R: string;
  begin
    repeat
      F:=AnsiPos('<IMG:',AnsiUpperCase(S));
      if F=0 then break;
      S:=Trim(Copy(S,F+5,MaxInt));
      R:=Split(1,S,[':','>']);
      if R<>'' then begin
        S:=Copy(S,Length(R)+1,MaxInt);
        R:=ExtractFilePath(FFileName)+Trim(R);
        if A.IndexOf(R)<0 then A.Add(R);
      end;
    until Application.Terminated;
  end;
  procedure ProcessStyle;
  var
    F,F1,F2,F3: integer;
    R: string;
    function Duo(A1,A2: integer): integer;
    begin
      if A1=0 then Result:=A2 else
        if A2=0 then Result:=A1 else Result:=Min(A1,A2);
    end;
  begin
    repeat
      F1:=AnsiPos(' WP=',AnsiUpperCase(S));
      F2:=AnsiPos(' IMAGE=',AnsiUpperCase(S));
      if F1=0 then F:=F2 else
        if F2=0 then F:=F1 else F:=Min(F1,F2);
      if F=0 then begin
        F1:=AnsiPos(' MIDI=',AnsiUpperCase(S));
        F2:=AnsiPos(' MP3=',AnsiUpperCase(S));
        F3:=AnsiPos(' AMR=',AnsiUpperCase(S));
        if F1=0 then F:=Duo(F2,F3) else
          if F2=0 then F:=Duo(F1,F3) else
            if F3=0 then F:=Min(F1,F2) else F:=Min(F3,Min(F1,F2));
      end;
      if F=0 then break;
      S:=Trim(Copy(S,F+1,MaxInt));
      R:=Split(2,S,['=',' ',':']);
      if R<>'' then begin
        R:=ExtractFilePath(FFileName)+Trim(R);
        if A.IndexOf(R)<0 then A.Add(R);
        F:=Pos(' ',S);
        if F=0 then break;
        S:=Copy(S,F,MaxInt);
      end;
    until Application.Terminated;
  end;
  procedure ProcessPict;
  var
    P1,P2,T,R: string;
  begin
    T:=Trim(S);
    while Pos('  ',T)>0 do T:=ReplaceStr(T,'  ',' ');
    if Pos('$KEYPAD ',US)=1 then begin
      P1:=Split(4,T,[' ']);
      P2:=Split(5,T,[' ']);
      R:=ExtractFilePath(FFileName)+Trim(P1);
      if A.IndexOf(R)<0 then A.Add(R);
      R:=ExtractFilePath(FFileName)+Trim(P2);
      if A.IndexOf(R)<0 then A.Add(R);
    end else if (Pos('$SMILE ',US)=1) or (Pos('$BOOKSMILE ',US)=1) then begin
      P1:=Split(2,T,[' ']);
      R:=ExtractFilePath(FFileName)+Trim(P1);
      if A.IndexOf(R)<0 then A.Add(R);
    end;
  end;
  procedure ProcessFiles;
  begin
    if IsStyleString(US) then ProcessStyle else
      if IsImgString(US) then ProcessPict else ProcessImg;
  end;
begin
  A.Clear;
  N:='';
  if Settings.PhoneStyle then for I:=0 to lvImages.Items.Count-1 do A.Add(ListItemFile(lvImages.Items[I]));
  for I:=0 to Editor.Lines.Count-1 do begin
    S:=Trim(Editor.Lines[I]);
    US:=AnsiUpperCase(S);
    if (S<>'') and (S[1]<>'!') then if AnsiPos('$TITLE ',US)=1 then N:=Trim(Copy(S,8,MaxInt)) else if not Settings.PhoneStyle then ProcessFiles;
  end;
  if N='' then N:='Книга';
end;

procedure TfmMain.acSendExecute(Sender: TObject);
begin
  SendMail;
end;

procedure TfmMain.EditorSpecialLineColors(Sender: TObject; Line: Integer; var Special: Boolean; var FG,BG: TColor);
begin
  if Line=FErrLine then begin
    Special:=TRUE;
    FG:=clWhite;
    BG:=clRed;
  end;
end;

procedure TfmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  EC: Cardinal;
begin
  if (Emul<>0) and GetExitCodeProcess(PI.hProcess,EC) and (EC=STILL_ACTIVE) then TerminateProcess(PI.hProcess,0);
  SaveSettings;
  TfmShowImage.HideInfo;
  TfmShowMusic.HideInfo;
end;

procedure TfmMain.acBoldExecute(Sender: TObject);
begin
  Editor.SelText:=Format('<b>%s</b>',[Editor.SelText]);
end;

procedure TfmMain.acItalicExecute(Sender: TObject);
begin
  Editor.SelText:=Format('<i>%s</i>',[Editor.SelText]);
end;

procedure TfmMain.acUnderlineExecute(Sender: TObject);
begin
  Editor.SelText:=Format('<u>%s</u>',[Editor.SelText]);
end;

procedure TfmMain.acBigExecute(Sender: TObject);
begin
  Editor.SelText:=Format('<big>%s</big>',[Editor.SelText]);
end;

procedure TfmMain.acSmallExecute(Sender: TObject);
begin
  Editor.SelText:=Format('<small>%s</small>',[Editor.SelText]);
end;

procedure TfmMain.acFindExecute(Sender: TObject);
begin
  fdEditor.Execute;
end;

procedure TfmMain.acFindNextExecute(Sender: TObject);
begin
  fdEditorFind(nil);
end;

procedure TfmMain.acReplaceExecute(Sender: TObject);
begin
  rdEditor.Execute;
end;

procedure TfmMain.acSelectAllExecute(Sender: TObject);
begin
  Editor.SelectAll;
end;

procedure TfmMain.acCutExecute(Sender: TObject);
begin
  Editor.CutToClipboard;
end;

procedure TfmMain.acCopyExecute(Sender: TObject);
begin
  Editor.CopyToClipboard;
end;

procedure TfmMain.acPasteExecute(Sender: TObject);
begin
  Editor.PasteFromClipboard;
end;

procedure TfmMain.acUndoExecute(Sender: TObject);
begin
  Editor.Undo;
end;

procedure TfmMain.acRedoExecute(Sender: TObject);
begin
  Editor.Redo;
end;

procedure TfmMain.fdEditorFind(Sender: TObject);
var
  Opt: TmwSearchOptions;
begin
  if Sender=fdEditor then fdEditor.CloseDialog;
  Opt:=[];
  if frMatchCase in fdEditor.Options then include(Opt,mwsoMatchCase);
  if frWholeWord in fdEditor.Options then include(Opt,mwsoWholeWord);
  if not (frDown in fdEditor.Options) then include(Opt,mwsoBackwards);
  Editor.SearchReplace(fdEditor.FindText,'',Opt);
end;

procedure TfmMain.rdEditorReplace(Sender: TObject);
var
  Opt: TmwSearchOptions;
begin
  Opt:=[];
  if frMatchCase in rdEditor.Options then include(Opt,mwsoMatchCase);
  if frWholeWord in rdEditor.Options then include(Opt,mwsoWholeWord);
  if frReplace in rdEditor.Options then include(Opt,mwsoReplace);
  if frReplaceAll in rdEditor.Options then include(Opt,mwsoReplaceAll);
  if not (frDown in rdEditor.Options) then include(Opt,mwsoBackwards);
  Editor.SearchReplace(rdEditor.FindText,rdEditor.ReplaceText,Opt);
end;

function TfmMain.AddPicture(const FN: string): string;
var
  PF,FF,QF,NF: string;
  I: integer;
begin
  if FFileName='' then acFileSaveExecute(nil);
  if FFileName='' then Abort;
  QF:=AnsiLowerCase(FN);
  FF:=ExtractFilePath(FFileName);
  PF:=ExtractFilePath(QF);
  if AnsiCompareText(PF,FF)=0 then NF:=QF else begin
    NF:=FF+AnsiLowerCase(ExtractFileName(QF));
    I:=0;
    while FileExists(NF) do begin
      if (FileSize(NF)=FileSize(QF)) and (FileAge(NF)=FileAge(QF)) then break;
      inc(I);
      NF:=FF+ChangeFileExt(AnsiLowerCase(ExtractFileName(QF)),'')+IntToStr(I)+ExtractFileExt(QF);
    end;
    CopyFile(PChar(QF),PChar(NF),TRUE);
  end;
  Result:=ExtractFileName(NF);
end;

procedure TfmMain.acPictureExecute(Sender: TObject);
var
  L,F,S,T,N: string;
  P1,P2,P,D,Idx: integer;
begin
  if OpenPictureDialog.Execute then begin
    F:=AddPicture(OpenPictureDialog.FileName);
    if Settings.PhoneStyle then begin
      Idx:=FindListItem(F);
      if Idx<0 then begin
        FillListItem(lvImages.Items.Add,ExtractFilePath(FFileName)+F);
        Idx:=lvImages.Items.Count-1;
      end;
    end else Idx:=-1;
    if Idx>=0 then F:=IntToStr(Idx+1);
    L:=Editor.Lines[Editor.CaretY-1];
    S:=AnsiUpperCase(Trim(L));
    if IsStyleString(S) then begin
      S:=AnsiUpperCase(L);
      P1:=Pos(' WP=',S);
      P2:=Pos(' IMAGE=',S);
      if P1=0 then P:=P2 else
        if P2=0 then P:=P1 else P:=Min(P1,P2);
      if P<>0 then begin
        T:=Copy(S,P+1,MaxInt);
        D:=Pos('=',T)+P;
        N:=Copy(L,1,D)+F;
        D:=Pos(' ',T)+P;
        if P>0 then N:=N+Copy(L,D,MaxInt);
      end else N:=L+' image='+F;
      if N<>L then begin
        Editor.Lines[Editor.CaretY-1]:=N;
        Editor.Modified:=TRUE;
      end;
    end else if IsImgString(S) then begin
      P:=0;
      P1:=0;
      if Pos('$KEYPAD',S)=1 then begin
        P1:=StrFindPart(4,S);
        P2:=StrFindPart(5,S);
        if Editor.CaretX>=P2 then begin
          P:=5;
          P1:=P2;
        end else P:=4;
      end else if (Pos('$SMILE',S)=1) or (Pos('$BOOKSMILE',S)=1) then begin
        P1:=StrFindPart(2,S);
        P:=2;
      end;
      if P>0 then begin
        Editor.Lines[Editor.CaretY-1]:=StrReplacePart(P,P1,Editor.Lines[Editor.CaretY-1],F);
        Editor.Modified:=TRUE;
      end;  
    end else if Settings.PhoneStyle then Editor.SelText:=Format('<img:%d:128>',[Idx+1]) else Editor.SelText:=Format('<img:%s>',[F]);
  end;
end;

procedure TfmMain.acMusicExecute(Sender: TObject);
var
  L,F,T,N: string;
  Idx: integer;
  function DelMus(const L: string): string;
  var
    P: integer;
    LC,T: string;
  begin
    Result:=L;
    repeat
      LC:=AnsiUpperCase(Result);
      P:=Pos(' MIDI=',LC);
      if P=0 then P:=Pos(' MP3=',LC);
      if P=0 then P:=Pos(' AMR=',LC);
      if P=0 then break;
      T:=Copy(Result,P+1,MaxInt);
      Result:=Copy(Result,1,P-1);
      LC:=Copy(LC,P+1,MaxInt);
      P:=Pos(' ',LC);
      if P>0 then Result:=Result+Copy(T,P,MaxInt); 
    until Application.Terminated;
  end;
begin
  if MusicOpenDialog.Execute then begin
    F:=AddPicture(MusicOpenDialog.FileName);
    T:=MusType(F);
    if T='' then ShowErr('Формат файла не поддерживается') else begin
      if Settings.PhoneStyle then begin
        Idx:=FindListItem(F);
        if Idx<0 then begin
          FillListItem(lvImages.Items.Add,ExtractFilePath(FFileName)+F);
          Idx:=lvImages.Items.Count-1;
        end;
      end else Idx:=-1;
      if Idx>=0 then F:=IntToStr(Idx+1);
      L:=Editor.Lines[Editor.CaretY-1];
      N:=DelMus(L);
      N:=Format('%s %s=%s',[N,T,F]);
      if N<>L then begin
        Editor.Lines[Editor.CaretY-1]:=N;
        Editor.Modified:=TRUE;
      end;
    end;
  end;
end;

procedure TfmMain.acColorExecute(Sender: TObject);
begin
  ColorDialog.HelpContext:=(Sender as TAction).HelpContext;
  ColorDialog.Color:=FLastFontColor;
  if ColorDialog.Execute then begin
    FLastFontColor:=ColorDialog.Color;
    Editor.SelText:=Format('<color:%s>',[StandardColor(ColorWindowsToBook(FLastFontColor))]);
  end;  
end;

procedure TfmMain.acAlignLeftExecute(Sender: TObject);
begin
  CurPara:='<p>';
end;

procedure TfmMain.acAlignCenterExecute(Sender: TObject);
begin
  CurPara:='<pc>';
end;

procedure TfmMain.acAlignRightExecute(Sender: TObject);
begin
  CurPara:='<pr>';
end;

procedure TfmMain.acAlignPoetExecute(Sender: TObject);
begin
  CurPara:='<ps>';
end;

function GetP(const S: string; From: integer): string;
begin
  if From=0 then Result:='' else begin
    Result:=Copy(S,From,3);
    if Result[3]<>'>' then Result:=Result+S[From+3];
  end;
end;

function CurPPos(const S: string): integer;
var
  P,PC,PR,PS: integer;
begin
  if Pos('<P',S)=0 then Result:=0 else begin
    P:=LastPos('<P>',S);
    PC:=LastPos('<PC>',S);
    PR:=LastPos('<PR>',S);
    PS:=LastPos('<PS>',S);
    Result:=AMax([P,PR,PS,PC]);
  end;
end;

function TfmMain.GetCurPara: string;
var
  S: string;
  I: integer;
begin
  S:=AnsiUpperCase(Copy(Editor.Lines[Editor.CaretY-1],1,Editor.CaretX));
  Result:=GetP(S,CurPPos(S));
  if Result<>'' then Exit;
  for I:=Editor.CaretY-2 downto 0 do begin
    S:=AnsiUpperCase(Editor.Lines[I]);
    Result:=GetP(S,CurPPos(S));
    if Result<>'' then break;
  end;  
end;

procedure TfmMain.SetCurPara(const Value: string);
var
  P,S: string;
  L,I,CPP: integer;
begin
  if ShiftPressed then Editor.SelText:=Value else begin
    S:=AnsiUpperCase(Copy(Editor.Text,1,Editor.GetSelStart));
    CPP:=CurPPos(S);
    P:=GetP(S,CPP);
    if P<>AnsiUpperCase(Value) then if CPP=0 then begin
      L:=Editor.CaretY-1;
      S:=Editor.Lines[L];
      I:=1;
      if S<>'' then while S[I] in [#1..#32] do inc(I);
      Insert(Value,S,I);
      Editor.Lines[L]:=S;
      Editor.Modified:=TRUE;
      EditorChange(nil);
    end else begin
      Editor.SetSelStart(CPP);
      Editor.SetSelEnd(CPP+Length(P));
      Editor.SelText:=Value;
    end;
  end;
end;

procedure TfmMain.EditorSelectionChange(Sender: TObject);
var
  L: integer;
  P: string;
begin
  L:=0;
  P:=AnsiUpperCase(EditorToken);
  if P<>'' then begin
    L:=KeyWords.IndexOf(P);
    if L>=0 then L:=integer(KeyWords.Objects[L])+1300 else L:=0;
  end;
  Editor.HelpContext:=L+2000;
  SelTimer.Enabled:=FALSE;
  SelTimer.Enabled:=TRUE;
end;

procedure TfmMain.AppHint(Sender: TObject);
begin
  sbMain.Panels[1].Text:=' '+Application.Hint;
end;

procedure TfmMain.acAddExecute(Sender: TObject);
begin
  if OpenPictureDialog.Execute then begin
    FillListItem(lvImages.Items.Add,AddPicture(OpenPictureDialog.FileName));
    Editor.Modified:=TRUE;
    EditorChange(nil);
  end;
end;

procedure TfmMain.acDeleteExecute(Sender: TObject);
var
  I,J,Idx,New: integer;
  S: string;
begin
  if lvImages.Selected=nil then Exit;
  Idx:=lvImages.Selected.Index+1;
  New:=lvImages.Items.Count;
  for I:=0 to Editor.Lines.Count-1 do begin
    S:=Editor.Lines[I];
    S:=ReplaceText(S,Format('<img:%d:',[Idx]),'<img:000:');
    for J:=Idx+1 to New do S:=ReplaceText(S,Format('<img:%d:',[J]),Format('<img:%d:',[J-1]));
    S:=ReplaceText(S,'<img:000:',Format('<img:%d:',[New]));
    Editor.Lines[I]:=S;
  end;  
  lvImages.DeleteSelected;
  Editor.Modified:=TRUE;
  EditorChange(nil);
end;

procedure TfmMain.lvImagesEnter(Sender: TObject);
var
  F: string;
begin
  if lvImages.Selected=nil then Exit;
  F:=ListItemFile(lvImages.Selected);
  if MusType(AnsiUpperCase(ExtractFileExt(F)))<>'' then TfmShowMusic.ShowInfo(F) else TfmShowImage.ShowInfo(F);
  Windows.SetFocus(lvImages.Handle);
end;

procedure TfmMain.lvImagesExit(Sender: TObject);
begin
  TfmShowImage.HideInfo;
  TfmShowMusic.HideInfo;
end;

procedure TfmMain.lvImagesSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  if Selected then lvImagesEnter(nil) else lvImagesExit(nil);
end;

procedure TfmMain.tmLoadTimer(Sender: TObject);
var
  S: integer;
  F: string;
const
  GetJCView =  'GET http://%s:%d/demo/bookdoc/jCview.zip HTTP/1.0'#13#10+
               'Host: %s:%d'#13#10+
               'If-Modified-Since: %s'#13#10#13#10;
  GetSetfile = 'GET http://%s:%d/demo/bookdoc/Bookedit.set HTTP/1.0'#13#10+
               'Host: %s:%d'#13#10+
               'If-Modified-Since: %s'#13#10#13#10;
begin
  tmLoad.Enabled:=FALSE;
  if FirstStartFlag and TfmFirstStart.ShowInfo then begin
    FirstStartFlag:=FALSE;
    SaveSettings;                
  end;
  if (ParamCount=1) and FileExists(ParamStr(1)) then LoadFromFile(ParamStr(1));
  StartHourGlass;
  try
    Indicate('Проверка обновлений...');
    S:=ConnectProxySocket(Settings.JCHost,Settings.JCPort);
    try
      SendString(S,Format(GetJCView,[Settings.JCHost,Settings.JCPort,Settings.JCHost,Settings.JCPort,LastView]));
      F:=ExtractFilePath(ParamStr(0))+'jcView\jcView.zip';
      if ReceiveModifiedZip(S,LastView,F) then begin
        Unzip.OpenArchive(F);
        Unzip.BaseDirectory:=ExtractFilePath(F);
        CheckDirectory(Unzip.BaseDirectory);
        Unzip.ExtractFiles('*.*');
        DeleteFile(F);
      end;
    finally
      DisconnectSocket(S);
    end;
    S:=ConnectProxySocket(Settings.JCHost,Settings.JCPort);
    try
      SendString(S,Format(GetSetfile,[Settings.JCHost,Settings.JCPort,Settings.JCHost,Settings.JCPort,LastSet]));
      ReceiveModifiedZip(S,LastSet,ExtractFilePath(ParamStr(0))+'Bookedit.set');
    finally
      DisconnectSocket(S);
    end;
  finally
    EndHourGlass;
    Indicate('');
  end;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  tmLoad.Enabled:=TRUE;
end;

procedure TfmMain.lvImagesDblClick(Sender: TObject);
var
  F: string;
begin
  if lvImages.Selected<>nil then begin
    OpenPictureDialog.FileName:=ListItemFile(lvImages.Selected);
    if OpenPictureDialog.Execute then begin
      F:=AddPicture(OpenPictureDialog.FileName);
      FillListItem(lvImages.Selected,ExtractFilePath(FFileName)+F);
      TfmShowImage.ShowInfo(ExtractFilePath(FFileName)+F);
      Windows.SetFocus(lvImages.Handle);
      Editor.Modified:=TRUE;
      EditorChange(nil);
    end;
  end;
end;

function TfmMain.ListItemFile(LI: TListItem; NameOnly: boolean = FALSE): string;
begin
  Result:=Trim(Split(2,LI.Caption,[':']));
  if not NameOnly then Result:=ExtractFilePath(FFileName)+Result;
end;

function TfmMain.FindListItem(const F: string): integer;
begin
  for Result:=0 to lvImages.Items.Count-1 do if AnsiCompareText(ListItemFile(lvImages.Items[Result],TRUE),F)=0 then Exit;
  Result:=-1; 
end;

procedure TfmMain.acHelpExecute(Sender: TObject);
begin
  Application.HelpCommand(HELP_CONTEXT,0);
end;

procedure TfmMain.acVoteExecute(Sender: TObject);
var
  SS: integer;
  V: string;
begin
  V:=TfmVote.ShowInfo;
  if V<>'' then begin
    SS:=Editor.GetSelStart;
    Editor.SelText:=V;
    Editor.SetSelStart(SS);
  end;
end;

procedure TfmMain.acVictorExecute(Sender: TObject);
var
  SS: integer;
  V: string;
begin
  V:=TfmVictor.ShowInfo;
  if V<>'' then begin
    SS:=Editor.GetSelStart;
    Editor.SelText:=V;
    Editor.SetSelStart(SS);
  end;  
end;

procedure TfmMain.AppException(Sender: TObject; E: Exception);
begin
  ShowErr(E.Message+#13#10#13#10'Сообщение Windows: '+SysErrorMessage(GetLastError));
end;

procedure TfmMain.SMTPDisplay(Sender: TObject; Msg: String);
begin
  Log(Msg);
end;

procedure TfmMain.SMTPSessionConnected(Sender: TObject; ErrCode: Word);
begin
  Log('=== Session connected ===');
end;

procedure TfmMain.SMTPSessionClosed(Sender: TObject; ErrCode: Word);
begin
  Log('=== Session closed ===');
end;

procedure TfmMain.stStatusDblClick(Sender: TObject);
begin
  if  stStatus.Font.Color=clRed then begin
    FErrLine:=stStatus.Tag;
    Editor.InvalidateLine(FErrLine);
    Editor.TopLine:=FErrLine-(Editor.LinesInWindow div 2);
    Editor.CaretY:=FErrLine;
    Editor.CaretX:=1;
  end;  
end;

procedure TfmMain.LinksTimerTimer(Sender: TObject);
begin
  LinksTimer.Enabled:=FALSE;
  FillLinks;
end;

procedure TfmMain.SelTimerTimer(Sender: TObject);
var
  P: string;
begin
  SelTimer.Enabled:=FALSE;
  P:=CurPara;
  acAlignLeft.Checked:=AnsiCompareText(P,'<p>')=0;
  acAlignRight.Checked:=AnsiCompareText(P,'<pr>')=0;
  acAlignCenter.Checked:=AnsiCompareText(P,'<pc>')=0;
  acAlignPoet.Checked:=AnsiCompareText(P,'<ps>')=0;
  P:=AnsiUpperCase(Trim(Editor.Lines[Editor.CaretY-1]));
  acMusic.Enabled:=IsStyleString(P);
end;

procedure TfmMain.EditorDropFiles(Sender: TObject; X,Y: Integer; Files: TStrings);
begin
  if (Files.Count>0) and ConfirmSave then LoadFromFile(Files[0]);
end;

procedure TfmMain.EditorScrollHint(Sender: TObject; NewTopLine: Integer; var HintText: string);
var
  I: integer;
  PN,S: string;
begin
  PN:='';
  for I:=NewTopLine-1 downto 0 do begin
    S:=Trim(Editor.Lines[I]);
    if (S<>'') and (S[1]=':') then begin
      PN:=Trim(Split(1,Copy(S,2,MaxInt),['(']));
      break;
    end;
  end;
  if PN<>'' then HintText:=Format('%s'#13#10'Страница: %s',[HintText,PN]); 
end;

procedure TfmMain.MacroClick(Sender: TObject);
var
  S: string;
begin
  S:=Editor.SelText;
  S:=ReplaceStr(ReplaceStr(Macro[(Sender as TMenuItem).Tag],'|',#13#10),'[...]',S);
  Editor.SelText:=S;
end;

procedure TfmMain.acMacroExecute(Sender: TObject);
begin
  if TfmEditMacro.ShowInfo then SaveSettings;
end;

function TfmMain.EditorToken: string;
var
  L: string;
  I,N: integer;
begin
  Result:='';
  with Editor do begin
    if (Lines.Count=0) or (CaretY>Lines.Count) then Exit;
    L:=Lines[CaretY-1];
    N:=Length(L);
    if N=0 then Exit;
    I:=CaretX;
    if I>N then Exit;
    Result:=L[I];
    while (I>0) and (L[I-1] in ['a'..'z','A'..'Z']) do begin
      Result:=L[I-1]+Result;
      dec(I);
    end;
    if (I>0) and (L[I-1] in ['/']) then begin
      Result:=L[I-1]+Result;
      dec(I);
    end;
    if (I>0) and (L[I-1] in ['<','$']) then Result:=L[I-1]+Result;
    I:=CaretX;
    if (I+1<=N) and (L[I] in ['<']) and (L[I+1] in ['/']) then begin
      Result:=Result+L[I+1];
      inc(I);
    end;
    while (I+1<=N) and (L[I+1] in ['a'..'z','A'..'Z']) do begin
      Result:=Result+L[I+1];
      inc(I);
    end;
    if (I+1<=N) and (L[I+1] in ['>',':']) then Result:=Result+L[I+1];
  end;  
end;

function TfmMain.CompletionProposalPaintItem(Key: string; Canvas: TCanvas; x,y: Integer): Boolean;
  function Clr(C: TColor): string;
  var
    R,G,B: integer;
  begin
    BreakColor(C,R,G,B);
    Result:=#1+chr(R)+chr(G)+chr(B);
  end;
begin
  Result:=TRUE;
  if Key='' then Exit;
  Canvas.Font:=Editor.Font;
  case Key[1] of
    '$': Key:=Clr(BookSyn.DirectiveAttri.Foreground)+Key;
    '<': Key:=Clr(BookSyn.KeyAttri.Foreground)+Key;
  end;
  PretyTextOut(Canvas,x,y,#3'B'+Key);
end;

procedure TfmMain.acBookFormatExecute(Sender: TObject);
var
  S: TStrings;
  R,O: string;
  I,J: integer;
  function ReplaceChars(const S: string): string;
  begin
    Result:=S;
    if (Result<>'') and (Result[1]='!') then Result:='&#33;'+Copy(Result,2,MaxInt);
    Result:=ReplaceStr(Result,'&','Ђ');
    Result:=ReplaceStr(Result,'$','&#36;');
    Result:=ReplaceStr(Result,'%','&#37;');
    Result:=ReplaceStr(Result,'=','&#61;');
    Result:=ReplaceStr(Result,'<','&lt;');
    Result:=ReplaceStr(Result,'>','&gt;');
    Result:=ReplaceStr(Result,'Ђ','&amp;');
    Result:=ReplaceStr(Result,'«','"');
    Result:=ReplaceStr(Result,'»','"');
    Result:=ReplaceStr(Result,'…','...');
    Result:=ReplaceStr(Result,'–','-');
    Result:=ReplaceStr(Result,'—','-');
  end;
begin
  R:='';
  S:=TStringList.Create;
  try
    S.Text:=Editor.SelText;
    for I:=0 to S.Count-1 do begin
      J:=Length(R);
      if J>0 then SetLength(R,J-5);
      O:='  <p>'+ReplaceChars(Trim(S[I]));
      while Length(O)>Editor.RightEdge-4 do for J:=Editor.RightEdge-4 downto 0 do if O[J]=' ' then begin
        R:=R+Copy(O,1,J-1)+#13#10'     ';
        O:=Copy(O,J+1,MaxInt);
        break;
      end;
      R:=R+O+#13#10'     ';
    end;
  finally
    S.Free;
  end;
  Editor.SelText:=R;
end;

function WEn(Wnd: HWnd; Param: LParam): boolean; stdcall;
var
  PID: Cardinal;
  C: string;
  Buf: array[0..255] of char;
begin
  PID:=0;
  GetWindowThreadProcessId(Wnd,PID);
  GetWindowText(Wnd,PChar(@Buf),256);
  C:=PChar(@Buf);
  Result:=(PID<>Cardinal(Param)) or (C<>'NHAL Win32 Emulator 1.0');
  if not Result then Emul:=Wnd;
end;

function CWEn(Wnd: HWnd; Param: LParam): boolean; stdcall;
var
  C: string;
  Buf: array[0..255] of char;
begin
  GetClassName(Wnd,PChar(@Buf),256);
  C:=PChar(@Buf);
  Result:=C<>'KWY_NHAL_DISPLAY_CLASS';
  if not Result then Dspl:=Wnd;
end;

function TfmMain.RunEmulator(const ID: string): THandle;
var
  SI: TStartupInfo;
  CL,F: string;
  EC: Cardinal;
  I: integer;
  P,CP: TPoint;
  N: TDateTime;
  F1,F2: boolean;
const
  aid = 'x-city-aid: ';
  hst = 'x-city-host: ';
begin
  LastAID:=ID;
  Result:=0;
  F:=ExtractFilePath(ParamStr(0))+'jCview\jCview.jad';
  with TStringList.Create do try
    LoadFromFile(F);
    F1:=FALSE;
    F2:=FALSE;
    for I:=0 to Count-1 do begin
      if Pos(aid,Strings[I])=1 then begin
        Strings[I]:=aid+ID;
        F1:=TRUE;
      end;
      if Pos(hst,Strings[I])=1 then begin
        Strings[I]:=hst+Settings.JCHost+':'+IntToStr(Settings.JCPort);
        F2:=TRUE;
      end;
    end;
    if not F1 then Add(aid+ID);
    if not F2 then Add(hst+Settings.JCHost+':'+IntToStr(Settings.JCPort));
    SaveToFile(F);
  finally
    Free;
  end;
  FillChar(SI,SizeOf(SI),0);
  FillChar(PI,SizeOf(PI),0);
  SI.cb:=SizeOf(SI);
  SI.dwFlags:=STARTF_USESHOWWINDOW;
  SI.wShowWindow:=SW_HIDE;
  CL:=Format(ExtractFilePath(ParamStr(0))+'MidpX\Midp2Exe\Midp2Exe.exe -jad "%s" -jar "%s"',[F,ChangeFileExt(F,'.jar')]);
  if not CreateProcess(nil,PChar(CL),nil,nil,false,0,nil,nil,SI,PI) then ShowErr(SysErrorMessage(GetLastError));
  repeat
    Application.ProcessMessages;
  until Application.Terminated or GetExitCodeProcess(PI.hProcess,EC) and (EC<>STILL_ACTIVE);
  SI.wShowWindow:=SW_SHOWNORMAL;
  CL:=ChangeFileExt(F,'.exe');
  if not CreateProcess(nil,PChar(CL),nil,nil,false,0,nil,nil,SI,PI) then ShowErr(SysErrorMessage(GetLastError));
  repeat
    Application.ProcessMessages;
    EnumWindows(@WEn,PI.dwProcessId);
  until Application.Terminated or (Emul<>0) and IsWindow(Emul);
  SetWindowText(Emul,'Эмулятор');
  pnEmul.Caption:='';
  if pnBook.Width=0 then pnBook.Width:=256;
  with pnEmul.ClientToScreen(Point(0,0)) do SetWindowPos(Emul,HWND_TOPMOST,X,Y,0,0,SWP_NOSIZE);
  repeat
    Application.ProcessMessages;
    EnumChildWindows(Emul,@CWEn,0);
  until Application.Terminated or (Dspl<>0) and IsWindow(Dspl);
  if IsWindow(Emul) and IsWindow(Dspl) then begin
    GetCursorPos(CP);
    N:=Now;
    repeat
      Application.ProcessMessages;
    until (Now-N)>6/24/60/60;
    P:=Point(70,360);
    Windows.ClientToScreen(Dspl,P);
    P:=Point(Round(P.X/Screen.Width*$10000),Round(P.Y/Screen.Height*$10000));
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE,P.X,P.Y,0,0);
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN,P.X,P.Y,0,0);
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP,P.X,P.Y,0,0);
    P:=Point(Round(CP.X/Screen.Width*$10000),Round(CP.Y/Screen.Height*$10000));
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE,P.X,P.Y,0,0);
    N:=Now;
    repeat
      Application.ProcessMessages;
    until (Now-N)>1/24/60/60;
    P:=Point(160,300);
    Windows.ClientToScreen(Dspl,P);
    P:=Point(Round(P.X/Screen.Width*$10000),Round(P.Y/Screen.Height*$10000));
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE,P.X,P.Y,0,0);
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTDOWN,P.X,P.Y,0,0);
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP,P.X,P.Y,0,0);
    P:=Point(Round(CP.X/Screen.Width*$10000),Round(CP.Y/Screen.Height*$10000));
    mouse_event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_MOVE,P.X,P.Y,0,0);
    tmEmul.Enabled:=TRUE;
  end;  
end;

procedure TfmMain.tmEmulTimer(Sender: TObject);
begin
  if Emul=0 then begin
    tmEmul.Enabled:=FALSE;
    Exit;
  end else if not IsWindow(Emul) then begin
    Emul:=0;
    pnEmul.Caption:='(эмулятор не запущен)';
    tmEmul.Enabled:=FALSE;
    Exit;
  end;
  with pnEmul.ClientToScreen(Point(0,0)) do SetWindowPos(Emul,HWND_TOPMOST,X,Y,0,0,SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);
end;

procedure TfmMain.StaticText2DblClick(Sender: TObject);
begin
  if pnBook.Width=0 then pnBook.Width:=256 else pnBook.Width:=0;
end;

procedure TfmMain.acMakeSourceBookExecute(Sender: TObject);
var
  y: integer;
  L,R,T,tL: string;
  A: TmwHighLightAttributes;
  C: TColor;
  B,I,U: boolean;
  function BookCodeChar(C: char): string;
  begin
    case C of
      '!': Result:='&#33;';
      '&': Result:='&amp;';
      '$': Result:='&#36;';
      '%': Result:='&#37;';
      '=': Result:='&#61;';
      '<': Result:='&lt;';
      '>': Result:='&gt;';
      '«': Result:='"';
      '»': Result:='"';
      '…': Result:='...';
      '–': Result:='-';
      '—': Result:='-';
    else
      Result:=C;
    end;
  end;
  function BookCodeToken(const S: string): string;
  var
    I: integer;
  begin
    Result:='';
    for I:=1 to Length(S) do Result:=Result+BookCodeChar(S[I]);
  end;
begin
  if not ShowCfm('Конвертировать исходник в книгу?') then Exit;
  StartHourGlass;
  try
    C:=0;
    B:=FALSE;
    I:=FALSE;
    U:=FALSE;
    R:='$title '+ExtractFileName(FileName)+#13#10;
    R:=R+'$background '+ColorWindowsToBook(Editor.Color)+#13#10;
    R:=R+'$style pg background=255:255:127'#13#10;
    R:=R+':root'#13#10;
    for y:=1 to Editor.LineCount do begin
      L:=Editor.Lines[y-1];
      tL:=Trim(L);
      if (tL<>'') and (tL[1]=':') then R:=R+'<p:pg>' else R:=R+'<p>';
      BookSyn.SetRange(Editor.Lines.Objects[y-1]);
      BookSyn.SetLine(L,y-1);
      while not BookSyn.GetEol do begin
        T:=BookSyn.GetToken;
        A:=BookSyn.GetTokenAttribute;
        T:=BookCodeToken(T);
        if A.Foreground=Editor.Color then T:=' ' else begin
          if A.Foreground<>C then begin
            C:=A.Foreground;
            R:=R+'<color:'+ColorWindowsToBook(C)+'>';
          end;
          if (fsBold in A.Style) and not B then begin
            B:=TRUE;
            R:=R+'<b>';
          end else if not (fsBold in A.Style) and B then begin
            B:=FALSE;
            R:=R+'</b>';
          end;
          if (fsItalic in A.Style) and not I then begin
            I:=TRUE;
            R:=R+'<i>';
          end else if not (fsItalic in A.Style) and I then begin
            I:=FALSE;
            R:=R+'</i>';
          end;
          if (fsUnderline in A.Style) and not U then begin
            U:=TRUE;
            R:=R+'<u>';
          end else if not (fsUnderline in A.Style) and U then begin
            U:=FALSE;
            R:=R+'</u>';
          end;
        end;
        R:=R+T;
        BookSyn.Next;
      end;
      R:=R+#13#10;
    end;
    acFileNew.Execute;
    Editor.Text:=R;
  finally
    EndHourGlass;
  end;
end;

procedure TfmMain.StorageRestorePlacement(Sender: TObject);
var
  F: string;
  L: TStrings;
  I: integer;
begin
  F:=ChangeFileExt(ParamStr(0),'.set');
  if FileExists(F) then with TIniFile.Create(F) do try
    ReadSection('Book Keywords',BookSyn.KeyWords);
    ReadSection('Script Keywords',BookSyn.ScriptKeyWords);
    ReadSection('Script Functions',BookSyn.ScriptFuncs);
    ReadSection('Completion Proposal',CompletionProposal.ItemList);
    BookSyn.IdentifierChars:=ReadString('Syntax','IdentifierChars',BookSyn.IdentifierChars);
    CompletionProposal.EndOfTokenChr:=ReadString('Syntax','EndOfTokenChr',CompletionProposal.EndOfTokenChr);
    OpenPictureDialog.Filter:=ReadString('Filters','PictureDialog',OpenPictureDialog.Filter);
    MusicOpenDialog.Filter:=ReadString('Filters','MusicDialog',MusicOpenDialog.Filter);
    L:=TStringList.Create;
    try
      ReadSectionValues('Colors',L);
      CNC:=L.Count;
      CN:=AllocMem(SizeOf(CTbl)*CNC);
      for I:=0 to CNC-1 do begin
        CN^[I,0]:=L.Names[I];
        CN^[I,1]:=L.Values[L.Names[I]];
      end;
    finally
      L.Free;
    end;
  finally
    Free;
  end;
end;

initialization
  CNC:=0;
  CN:=nil;
  Emul:=0;
  Dspl:=0;
  TB2Item.DrawGlyphProc:=@ImageListDraw;
  TB2Item.DrawEdgeProc:=@ipDrawEdge;
  CS:=TCriticalSection.Create;
  LogFile:=ExtractFilePath(Application.ExeName)+'mail.log';
  KeyWords:=TStringList.Create;
  KeyWords.AddObject('$BACKGROUND',TObject(0));
  KeyWords.AddObject('$DEFINE',TObject(1));
  KeyWords.AddObject('$TITLE',TObject(2));
  KeyWords.AddObject('$VOTE',TObject(3));
  KeyWords.AddObject('$VOTETO',TObject(4));
  KeyWords.AddObject('</B>',TObject(7));
  KeyWords.AddObject('</BIG>',TObject(8));
  KeyWords.AddObject('</COLOR>',TObject(11));
  KeyWords.AddObject('</I>',TObject(16));
  KeyWords.AddObject('</MONO>',TObject(23));
  KeyWords.AddObject('</SMALL>',TObject(39));
  KeyWords.AddObject('</U>',TObject(41));
  KeyWords.AddObject('<A:',TObject(5));
  KeyWords.AddObject('<ABOUNTME>',TObject(6));
  KeyWords.AddObject('<ATTACH:',TObject(5));
  KeyWords.AddObject('<B>',TObject(7));
  KeyWords.AddObject('<BIG>',TObject(8));
  KeyWords.AddObject('<BR>',TObject(9));
  KeyWords.AddObject('<CHAT:',TObject(10));
  KeyWords.AddObject('<COLOR:',TObject(11));
  KeyWords.AddObject('<COLOR>',TObject(11));
  KeyWords.AddObject('<COUNTER>',TObject(12));
  KeyWords.AddObject('<ELSE>',TObject(17));
  KeyWords.AddObject('<ELSEIF:',TObject(17));
  KeyWords.AddObject('<ELSEIFMASK:',TObject(18));
  KeyWords.AddObject('<ENDIF>',TObject(17));
  KeyWords.AddObject('<FORUM:',TObject(13));
  KeyWords.AddObject('<G:',TObject(14));
  KeyWords.AddObject('<HR>',TObject(15));
  KeyWords.AddObject('<I>',TObject(16));
  KeyWords.AddObject('<IF:',TObject(17));
  KeyWords.AddObject('<IFMASK:',TObject(18));
  KeyWords.AddObject('<IMG:',TObject(19));
  KeyWords.AddObject('<MASK>',TObject(20));
  KeyWords.AddObject('<MCHAT:',TObject(21));
  KeyWords.AddObject('<MFORUM:',TObject(22));
  KeyWords.AddObject('<MONO>',TObject(23));
  KeyWords.AddObject('<NICK>',TObject(24));
  KeyWords.AddObject('<P>',TObject(25));
  KeyWords.AddObject('<PAY:',TObject(26));
  KeyWords.AddObject('<PAYME>',TObject(27));
  KeyWords.AddObject('<PC>',TObject(28));
  KeyWords.AddObject('<PCHAT:',TObject(29));
  KeyWords.AddObject('<PFORUM:',TObject(30));
  KeyWords.AddObject('<PR>',TObject(31));
  KeyWords.AddObject('<PS>',TObject(32));
  KeyWords.AddObject('<PSITE:',TObject(33));
  KeyWords.AddObject('<SENDME>',TObject(34));
  KeyWords.AddObject('<SHOWTOP>',TObject(35));
  KeyWords.AddObject('<SHOWVOTE:',TObject(36));
  KeyWords.AddObject('<SITE:',TObject(37));
  KeyWords.AddObject('<SIZE>',TObject(38));
  KeyWords.AddObject('<SMALL>',TObject(39));
  KeyWords.AddObject('<STORE>',TObject(40));
  KeyWords.AddObject('<U>',TObject(41));
  KeyWords.AddObject('<VOTE:',TObject(42));
  KeyWords.AddObject('<VOTEP:',TObject(43));
  KeyWords.AddObject('<WRITETOP>',TObject(44));
  KeyWords.AddObject('<Z:',TObject(45));
finalization
  KeyWords.Free;
  CS.Free;
end.
