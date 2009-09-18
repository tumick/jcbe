unit Settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ipControls, ipButtons, StdCtrls, ipEdit, ipPlacemnt,
  ipOther, ExtCtrls, ipHTMLHelp;

type
  TfmSettings = class(TipHTMLHelpForm)
    bOK: TipButton;
    bCancel: TipButton;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    eID: TipEditTS;
    Storage: TipFormStorage;
    GroupBox1: TGroupBox;
    rbPhone: TRadioButton;
    rbRegular: TRadioButton;
    TabSheet2: TTabSheet;
    Label16: TLabel;
    eHost: TipEditTS;
    Label18: TLabel;
    eLogin: TipEditTS;
    Label19: TLabel;
    ePassword: TipPasswordEditTS;
    eTo: TipEditTS;
    Label23: TLabel;
    eFrom: TipEditTS;
    Label21: TLabel;
    Label2: TLabel;
    rgAuth: TRadioGroup;
    ePort: TipEditTS;
    Label3: TLabel;
    seUndo: TipSpinEditTS;
    bHelp: TipButton;
    ePwd: TipEditTS;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    bInfo: TipButton;
    Label7: TLabel;
    eJCHost: TipEditTS;
    eJCPort: TipEditTS;
    Label8: TLabel;
    procedure bInfoClick(Sender: TObject);
  private
    { Private declarations }
  public
    class function ShowInfo: boolean;
  end;

var
  fmSettings: TfmSettings;

implementation

{$R *.dfm}

uses
  Main, Info, SmtpProt, ipUtils, mwCustomEdit;

{ TfmSettings }

class function TfmSettings.ShowInfo: boolean;
begin
  with TfmSettings.Create(Application) do try
    rbRegular.Hint:=ReplaceStr(rbRegular.Hint,'|',#13#10);
    rbPhone.Hint:=ReplaceStr(rbPhone.Hint,'|',#13#10);
    with fmMain.Settings do begin
      eID.Text:=Ident;
      ePwd.Text:=Password;
      rbRegular.Checked:=not PhoneStyle;
      rbPhone.Checked:=PhoneStyle;
      eJCHost.Text:=JCHost;
      eJCPort.Text:=IntToStr(JCPort);
    end;
    with fmMain.SMTP do begin
      eHost.Text:=Host;
      ePort.Text:=Port;
      eLogin.Text:=Username;
      ePassword.Text:=Password;
      eFrom.Text:=HdrFrom;
      eTo.Text:=HdrTo;
      rgAuth.ItemIndex:=integer(AuthType);
    end;
    with fmMain.Editor do begin
      seUndo.Value:=MaxUndo;
    end;  
    Result:=ShowModal=mrOK;
    if Result then begin
      with fmMain.Settings do begin
        Ident:=eID.Text;
        Password:=ePwd.Text;
        PhoneStyle:=rbPhone.Checked;
        JCHost:=eJCHost.Text;
        JCPort:=StrToIntDef(eJCPort.Text,80);
      end;
      with fmMain.SMTP do begin
        Host:=eHost.Text;
        Port:=ePort.Text;
        Username:=eLogin.Text;
        Password:=ePassword.Text;
        HdrFrom:=eFrom.Text;
        FromName:=HdrFrom;
        HdrTo:=eTo.Text;
        RcptName.Text:=eTo.Text;
        AuthType:=TSmtpAuthType(rgAuth.ItemIndex);
      end;
      with fmMain.Editor do begin
        MaxUndo:=seUndo.Value;
      end;
    end;
  finally
    Free;
  end;
end;

procedure TfmSettings.bInfoClick(Sender: TObject);
begin
  TfmInfo.ShowInfo;
end;

end.
