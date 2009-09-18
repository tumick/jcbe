unit BookTitle;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ipControls, ipButtons, StdCtrls, ipEdit;

type
  TfmTitle = class(TForm)
    bOK: TipButton;
    bCancel: TipButton;
    bHelp: TipButton;
    Label1: TLabel;
    eTitle: TipEditTS;
  public
    class function ShowInfo(var T: string): boolean;
  end;

var
  fmTitle: TfmTitle;

implementation

{$R *.dfm}

{ TfmTitle }

class function TfmTitle.ShowInfo(var T: string): boolean;
begin
  with TfmTitle.Create(Application) do try
    eTitle.Text:=T;
    Result:=ShowModal=mrOK;
    if Result then T:=eTitle.Text;
  finally
    Free;
  end;
end;

end.
