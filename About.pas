unit About;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ipPlacemnt, ExtCtrls, StdCtrls, ipControls, ipButtons, ipHTMLHelp;

type
  TfmAbout = class(TipHTMLHelpForm)
    Storage: TipFormStorage;
    Bevel1: TBevel;
    Image1: TImage;
    lblProductName: TLabel;
    lblVersion: TLabel;
    lblCopyright: TLabel;
    stComment: TStaticText;
    bOK: TipButton;
    lbMail: TLabel;
    procedure lbMailClick(Sender: TObject);
  private
    { Private declarations }
  public
    class procedure ShowInfo;
  end;

var
  fmAbout: TfmAbout;

implementation

{$R *.dfm}

uses
  ipUtils;

{ TfmAbout }

class procedure TfmAbout.ShowInfo;
begin
  with TfmAbout.Create(Application) do try
    lblProductName.Caption:=GetProductName+' ®';
//    while lblProductName.Width>280 do with lblProductName.Font do Size:=Size-1;
    lblVersion.Caption:='Версия '+GetVersionNumber;
    lblCopyright.Caption:=GetCopyright;
    stComment.Caption:=' '+GetComment;
    ShowModal
  finally
    Free;
  end;
end;

procedure TfmAbout.lbMailClick(Sender: TObject);
begin
  lbMail.Font.Color:=clPurple;
  HyperLink('mailto:tumick@ukr.net');
end;

end.
