program BookEdit;

uses
  Forms,
  Windows,
  Main in 'Main.pas' {fmMain},
  Settings in 'Settings.pas' {fmSettings},
  About in 'About.pas' {fmAbout},
  CustomizeEditor in 'CustomizeEditor.pas' {fmCustomizeEditor},
  ShowColor in 'ShowColor.pas' {fmShowColor},
  ShowMusic in 'ShowMusic.pas' {fmShowMusic},
  Vote in 'Vote.pas' {fmVote},
  Victor in 'Victor.pas' {fmVictor},
  BookTitle in 'BookTitle.pas' {fmTitle},
  EditMacro in 'EditMacro.pas' {fmEditMacro},
  socks in '..\BookFormat\socks.pas',
  Info in 'Info.pas' {fmInfo},
  FirstStart in 'FirstStart.pas' {fmFirstStart},
  ShowImage in 'ShowImage.pas' {fmShowImage};

{$R *.res}

begin
  CreateMutex(nil,False,'InfoPolus_JetCity_BookEditor');
  Application.Initialize;
  Application.Title := 'Редактор книг 2.0';
  Application.HelpFile := '';
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
