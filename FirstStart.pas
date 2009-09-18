unit FirstStart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ipControls, ipButtons, StdCtrls, ipEdit;

type
  TfmFirstStart = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    eTo: TipEditTS;
    Label8: TLabel;
    eFrom: TipEditTS;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    eID: TipEditTS;
    Label4: TLabel;
    ePwd: TipEditTS;
    Label5: TLabel;
    Label6: TLabel;
    bInfo: TipButton;
    bOK: TipButton;
    bCancel: TipButton;
    procedure bInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    class function ShowInfo: boolean;
  end;

var
  fmFirstStart: TfmFirstStart;

implementation

{$R *.dfm}

uses
  Main, Info;

procedure TfmFirstStart.bInfoClick(Sender: TObject);
begin
  TfmInfo.ShowInfo;
end;

class function TfmFirstStart.ShowInfo: boolean;
begin
  with TfmFirstStart.Create(Application) do try
    with fmMain.Settings do begin
      eID.Text:=Ident;
      ePwd.Text:=Password;
    end;
    with fmMain.SMTP do begin
      eFrom.Text:=HdrFrom;
      eTo.Text:=HdrTo;
    end;
    Result:=ShowModal=mrOK;
    if Result then begin
      with fmMain.Settings do begin
        Ident:=eID.Text;
        Password:=ePwd.Text;
      end;
      with fmMain.SMTP do begin
        HdrFrom:=eFrom.Text;
        HdrTo:=eTo.Text;
      end;
    end;
  finally
    Free;
  end;
end;

end.
