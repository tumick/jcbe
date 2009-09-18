unit ShowColor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ipOther, ipControls, ipButtons, ipHTMLHelp;

type
  TfmShowColor = class(TipHTMLHelpForm)
    ColorPanel: TipColorPanel;
    Label1: TLabel;
    bOK: TipButton;
    bCancel: TipButton;
    lColor: TLabel;
    bHelp: TipButton;
    procedure ColorPanelChange(Sender: TObject);
  private
    { Private declarations }
  public
    class function ShowInfo(var C: TColor): boolean;
  end;

var
  fmShowColor: TfmShowColor;

implementation

{$R *.dfm}

uses
  Main;

{ TfmShowColor }

class function TfmShowColor.ShowInfo(var C: TColor): boolean;
begin
  with TfmShowColor.Create(Application) do try
    ColorPanel.Color:=C;
    Result:=ShowModal=mrOK;
    if Result then C:=ColorPanel.Color;
  finally
    Free;
  end;
end;

procedure TfmShowColor.ColorPanelChange(Sender: TObject);
begin
  lColor.Caption:=ColorWindowsToBook(ColorPanel.Color);
end;

end.
