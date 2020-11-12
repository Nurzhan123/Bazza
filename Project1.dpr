program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormFirma},
  Unit2 in 'Unit2.pas' {DM: TDataModule},
  Unit3 in 'Unit3.pas' {MainForm},
  Unit4 in 'Unit4.pas' {TovarForm},
  Unit5 in 'Unit5.pas' {ProdazhaForm},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {OtchetForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TFormFirma, FormFirma);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TTovarForm, TovarForm);
  Application.CreateForm(TProdazhaForm, ProdazhaForm);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TOtchetForm, OtchetForm);
  Application.Run;
end.
