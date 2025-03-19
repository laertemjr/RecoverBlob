program RecoverBlob;

uses
  Vcl.Forms,
  uRecoverBlob in 'uRecoverBlob.pas' {frmRecoverBlob},
  uMultiLanguage in 'uMultiLanguage.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmRecoverBlob, frmRecoverBlob);
  Application.Run;
end.
