unit CustomizeEditor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, mwCustomEdit, StdCtrls, ColorGrd, ExtCtrls, ipUtils, ipPlacemnt,
  ipOther, ipFontMng, ipEdit, ipControls, ipButtons, mwHighlighter,
  ipBookSyn, ipHTMLHelp;

type
  TfmCustomizeEditor = class(TipHTMLHelpForm)
    GroupBox3: TGroupBox;
    lbSyntax: TipListBoxTS;
    fssSyntax: TipFontStylesSet;
    Label1: TLabel;
    Label7: TLabel;
    bbOK: TipButton;
    bbCancel: TipButton;
    ssFormPlacement1: TipFormPlacement;
    cpText: TipColorPanel;
    cpBack: TipColorPanel;
    GroupBox1: TGroupBox;
    cpMain: TipColorPanel;
    Label8: TLabel;
    ccbRight: TipColorComboBox;
    Label5: TLabel;
    fseRight: TipFontSizeEdit;
    Label6: TLabel;
    fcbText: TipFontComboBox;
    Label3: TLabel;
    fseText: TipFontSizeEdit;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    mwSample: TmwCustomEdit;
    Label2: TLabel;
    bHelp: TipButton;
    Syn: TipBookSyn;
    procedure fcbTextChange(Sender: TObject);
    procedure fseTextChange(Sender: TObject);
    procedure ccbRightChange(Sender: TObject);      
    procedure fseRightChange(Sender: TObject);
    procedure lbSyntaxClick(Sender: TObject);
    procedure cpMainChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cgSyntaxChange(Sender: TObject);
    procedure cpTextChange(Sender: TObject);
    procedure cpBackChange(Sender: TObject);
  private
    FActiveAttri: TmwHighLightAttributes;
    procedure GetSyntax;
    procedure SetSyntax;
  public
    class function ShowInfo: boolean;
  end;

implementation

{$R *.DFM}

uses
  Main;

class function TfmCustomizeEditor.ShowInfo: boolean;
begin
  with TfmCustomizeEditor.Create(Application) do try
    with fmMain,mwSample do begin
      cpMain.Color:=Editor.Color;
      fcbText.SelectedFont:=Editor.Font.Name;
      fseText.Value:=Editor.Font.Size;
      fseTextChange(nil);
      ccbRight.SelectedColor:=Editor.RightEdgeColor;
      fseRight.Value:=Editor.RightEdge;
      fseRightChange(nil);
    end;
    with fmMain.BookSyn do begin
      Syn.ArgAttri.Assign(ArgAttri);
      Syn.CommentAttri.Assign(CommentAttri);
      Syn.DirectiveAttri.Assign(DirectiveAttri);
      Syn.InvalidAttri.Assign(InvalidAttri);
      Syn.KeyAttri.Assign(KeyAttri);
      Syn.LinkAttri.Assign(LinkAttri);
      Syn.LabelAttri.Assign(LabelAttri);
      Syn.NumberAttri.Assign(NumberAttri);
      Syn.SpaceAttri.Assign(SpaceAttri);
      Syn.SplitAttri.Assign(SplitAttri);
      Syn.SubstAttri.Assign(SubstAttri);
      Syn.SymbolAttri.Assign(SymbolAttri);
      Syn.ValueAttri.Assign(ValueAttri);
      Syn.ScriptAttri.Assign(ScriptAttri);
      Syn.ScriptKeywordAttri.Assign(ScriptKeywordAttri);
      Syn.ScriptFuncAttri.Assign(ScriptFuncAttri);      
      Syn.ScriptLabelAttri.Assign(ScriptLabelAttri);
      Syn.ScriptConstAttri.Assign(ScriptConstAttri);      
    end;
    Result:=ShowModal = mrOK;
    if Result then begin
      with fmMain,mwSample do begin
        Editor.Color:=Color;
        Editor.Font.Size:=Font.Size;
        Editor.Font.Name:=Font.Name;
        Editor.RightEdge:=RightEdge;
        Editor.RightEdgeColor:=RightEdgeColor;
      end;
      with fmMain.BookSyn do begin
        ArgAttri.Assign(Syn.ArgAttri);
        CommentAttri.Assign(Syn.CommentAttri);
        DirectiveAttri.Assign(Syn.DirectiveAttri);
        InvalidAttri.Assign(Syn.InvalidAttri);
        KeyAttri.Assign(Syn.KeyAttri);
        LinkAttri.Assign(Syn.LinkAttri);
        LabelAttri.Assign(Syn.LabelAttri);
        NumberAttri.Assign(Syn.NumberAttri);
        SpaceAttri.Assign(Syn.SpaceAttri);
        SplitAttri.Assign(Syn.SplitAttri);
        SubstAttri.Assign(Syn.SubstAttri);
        SymbolAttri.Assign(Syn.SymbolAttri);
        ValueAttri.Assign(Syn.ValueAttri);
        ScriptAttri.Assign(Syn.ScriptAttri);
        ScriptKeywordAttri.Assign(Syn.ScriptKeywordAttri);
        ScriptFuncAttri.Assign(Syn.ScriptFuncAttri);
        ScriptLabelAttri.Assign(Syn.ScriptLabelAttri);
        ScriptConstAttri.Assign(Syn.ScriptConstAttri);
      end;
    end;
  finally
    Free;
  end;
end;

procedure TfmCustomizeEditor.fcbTextChange(Sender: TObject);
begin
  mwSample.Font.Name:=fcbText.SelectedFont;
end;

procedure TfmCustomizeEditor.fseTextChange(Sender: TObject);
begin
  mwSample.Font.Size:=fseText.Value;
end;

procedure TfmCustomizeEditor.ccbRightChange(Sender: TObject);
begin
  mwSample.RightEdgeColor:=ccbRight.SelectedColor;
end;

procedure TfmCustomizeEditor.fseRightChange(Sender: TObject);
begin
  mwSample.RightEdge:=fseRight.Value;
end;

procedure TfmCustomizeEditor.cpMainChange(Sender: TObject);
begin
  mwSample.Color:=cpMain.Color;
end;

procedure TfmCustomizeEditor.GetSyntax;
begin
  with Syn do case lbSyntax.ItemIndex of
    0: FActiveAttri.Assign(SymbolAttri);
    1: FActiveAttri.Assign(KeyAttri);
    2: FActiveAttri.Assign(DirectiveAttri);
    3: FActiveAttri.Assign(LinkAttri);
    4: FActiveAttri.Assign(InvalidAttri);
    5: FActiveAttri.Assign(ArgAttri);
    6: FActiveAttri.Assign(ValueAttri);
    7: FActiveAttri.Assign(LabelAttri);
    8: FActiveAttri.Assign(SplitAttri);
    9: FActiveAttri.Assign(SubstAttri);
   10: FActiveAttri.Assign(CommentAttri);
   11: FActiveAttri.Assign(SpaceAttri);
   12: FActiveAttri.Assign(NumberAttri);
   13: FActiveAttri.Assign(ScriptAttri);
   14: FActiveAttri.Assign(ScriptKeywordAttri);
   15: FActiveAttri.Assign(ScriptFuncAttri);
   16: FActiveAttri.Assign(ScriptLabelAttri);
   17: FActiveAttri.Assign(ScriptConstAttri);
  end;
  fssSyntax.OnChange:=nil;
  fssSyntax.FontStyles:=FActiveAttri.Style;
  fssSyntax.OnChange:=cgSyntaxChange;
  cpText.OnChange:=nil;
  cpText.Color:=FActiveAttri.Foreground;
  cpText.OnChange:=cpTextChange;
  cpBack.OnChange:=nil;
  cpBack.Color:=FActiveAttri.Background;
  cpBack.OnChange:=cpBackChange;
end;

procedure TfmCustomizeEditor.SetSyntax;
begin
  with Syn do case lbSyntax.ItemIndex of
    0: SymbolAttri.Assign(FActiveAttri);
    1: KeyAttri.Assign(FActiveAttri);
    2: DirectiveAttri.Assign(FActiveAttri);
    3: LinkAttri.Assign(FActiveAttri);
    4: InvalidAttri.Assign(FActiveAttri);
    5: ArgAttri.Assign(FActiveAttri);
    6: ValueAttri.Assign(FActiveAttri);
    7: LabelAttri.Assign(FActiveAttri);
    8: SplitAttri.Assign(FActiveAttri);
    9: SubstAttri.Assign(FActiveAttri);
   10: CommentAttri.Assign(FActiveAttri);
   11: SpaceAttri.Assign(FActiveAttri);
   12: NumberAttri.Assign(FActiveAttri);
   13: ScriptAttri.Assign(FActiveAttri);
   14: ScriptKeywordAttri.Assign(FActiveAttri);
   15: ScriptFuncAttri.Assign(FActiveAttri);
   16: ScriptLabelAttri.Assign(FActiveAttri);
   17: ScriptConstAttri.Assign(FActiveAttri);
  end;
  mwSample.Highlighter:=nil;
  mwSample.Highlighter:=Syn;
end;

procedure TfmCustomizeEditor.lbSyntaxClick(Sender: TObject);
begin
  fssSyntax.Enabled:=lbSyntax.ItemIndex>=0;
  cpText.Enabled:=fssSyntax.Enabled;
  cpBack.Enabled:=fssSyntax.Enabled;
  GetSyntax;
end;

procedure TfmCustomizeEditor.FormCreate(Sender: TObject);
begin
  FActiveAttri:=TmwHighLightAttributes.Create('');
end;

procedure TfmCustomizeEditor.FormDestroy(Sender: TObject);
begin
  FActiveAttri.Free;
end;

procedure TfmCustomizeEditor.cgSyntaxChange(Sender: TObject);
begin
  FActiveAttri.Style:=fssSyntax.FontStyles;
  SetSyntax;
end;

procedure TfmCustomizeEditor.cpTextChange(Sender: TObject);
begin
  FActiveAttri.Foreground:=cpText.Color;
  SetSyntax;
end;

procedure TfmCustomizeEditor.cpBackChange(Sender: TObject);
begin
  FActiveAttri.Background:=cpBack.Color;
  SetSyntax;
end;

end.
