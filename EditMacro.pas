unit EditMacro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ipEdit, ipControls, ipButtons;

type
  TfmEditMacro = class(TForm)
    Label1: TLabel;
    e1: TipEditTS;
    Label2: TLabel;
    e2: TipEditTS;
    Label3: TLabel;
    e3: TipEditTS;
    Label4: TLabel;
    e4: TipEditTS;
    Label5: TLabel;
    e5: TipEditTS;
    Label6: TLabel;
    e6: TipEditTS;
    Label7: TLabel;
    e7: TipEditTS;
    Label8: TLabel;
    e8: TipEditTS;
    Label9: TLabel;
    e9: TipEditTS;
    Label10: TLabel;
    e0: TipEditTS;
    bOK: TipButton;
    bCancel: TipButton;
    bHelp: TipButton;
  private
    { Private declarations }
  public
    class function ShowInfo: boolean;
  end;

var
  fmEditMacro: TfmEditMacro;

implementation

{$R *.dfm}

uses
  Main;

{ TfmMacro }

class function TfmEditMacro.ShowInfo: boolean;
begin
  with TfmEditMacro.Create(Application) do try
    e0.Text:=fmMain.Macro[0];
    e1.Text:=fmMain.Macro[1];
    e2.Text:=fmMain.Macro[2];
    e3.Text:=fmMain.Macro[3];
    e4.Text:=fmMain.Macro[4];
    e5.Text:=fmMain.Macro[5];
    e6.Text:=fmMain.Macro[6];
    e7.Text:=fmMain.Macro[7];
    e8.Text:=fmMain.Macro[8];
    e9.Text:=fmMain.Macro[9];
    Result:=ShowModal=mrOK;
    if Result then begin
      fmMain.Macro[0]:=e0.Text;
      fmMain.Macro[1]:=e1.Text;
      fmMain.Macro[2]:=e2.Text;
      fmMain.Macro[3]:=e3.Text;
      fmMain.Macro[4]:=e4.Text;
      fmMain.Macro[5]:=e5.Text;
      fmMain.Macro[6]:=e6.Text;
      fmMain.Macro[7]:=e7.Text;
      fmMain.Macro[8]:=e8.Text;
      fmMain.Macro[9]:=e9.Text;
    end;
  finally
    Free;
  end;
end;

end.
