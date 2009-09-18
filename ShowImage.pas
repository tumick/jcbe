unit ShowImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ipPlacemnt, ipHTMLHelp;

type
  TfmShowImage = class(TipHTMLHelpForm)
    Image: TImage;
    Placement: TipFormPlacement;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    class procedure ShowInfo(const FN: string);
    class function GetPicSize(const FN: string; var Sz: TSize): boolean;
    class procedure HideInfo;
  end;

implementation

{$R *.dfm}

uses
  JPEG, GIFImage, PNGImage;

var
  fmShowImage: TfmShowImage;

{ TfmShowImage }

class procedure TfmShowImage.HideInfo;
begin
  if fmShowImage<>nil then fmShowImage.Close;
end;

class procedure TfmShowImage.ShowInfo(const FN: string);
begin
  if fmShowImage=nil then fmShowImage:=TfmShowImage.Create(Application);
  with fmShowImage do begin
    Image.Picture.LoadFromFile(FN);
    ClientWidth:=Image.Width;
    ClientHeight:=Image.Height;
    Show;
  end;
end;

class function TfmShowImage.GetPicSize(const FN: string; var Sz: TSize): boolean;
begin
  Result:=FALSE;
  with TfmShowImage.Create(Application) do try
    try
      Image.Picture.LoadFromFile(FN);
    except
      Exit;
    end;
    Sz.cx:=Image.Width;
    Sz.cy:=Image.Height;
    Result:=TRUE;
  finally
    Free;
  end;
end;

procedure TfmShowImage.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  fmShowImage:=nil;
end;

initialization
  fmShowImage:=nil;
end.
