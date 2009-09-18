unit Info;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ipControls, ipButtons;

type
  TfmInfo = class(TForm)
    bOK: TipButton;
    reInfo: TRichEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    class procedure ShowInfo; 
  end;

var
  fmInfo: TfmInfo;

implementation

{$R *.dfm}

class procedure TfmInfo.ShowInfo;
begin
  with TfmInfo.Create(Application) do try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TfmInfo.FormCreate(Sender: TObject);
begin
  reInfo.Lines.LoadFromFile(ExtractFilePath(ParamStr(0))+'info.rtf');
end;

end.
