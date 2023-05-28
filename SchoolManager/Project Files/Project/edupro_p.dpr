program edupro_p;

uses
  Forms,
  frmWelcome_u in 'frmWelcome_u.pas' {frmWelcome},
  frmHome_u in 'frmHome_u.pas' {Form1},
  frmLogin_u in 'frmLogin_u.pas' {frmLogin},
  frmTeachHome_u in 'frmTeachHome_u.pas' {frmTeachHome},
  frmStudentHome_u in 'frmStudentHome_u.pas' {frmStudentHomee},
  frmUpcomingAssessT_u in 'frmUpcomingAssessT_u.pas' {frmUpcomingAssessT},
  frmNoticesT_u in 'frmNoticesT_u.pas' {frmNoticesT},
  frmTextbooksT_u in 'frmTextbooksT_u.pas' {frmTextbooksT},
  frmNoticesS_u in 'frmNoticesS_u.pas' {frmNoticesS},
  frmUpcomingAssessS_u in 'frmUpcomingAssessS_u.pas' {frmUpcomingAssessS},
  frmNotice2T_u in 'frmNotice2T_u.pas' {frmNotice2T},
  frmTextbooksS_u in 'frmTextbooksS_u.pas' {frmTextbooksS},
  dmMain_u in 'dmMain_u.pas' {dmMain: TDataModule},
  frmAssessCreator_u in 'frmAssessCreator_u.pas' {frmAssessCreator},
  clsRegister_u in 'clsRegister_u.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmWelcome, frmWelcome);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmTeachHome, frmTeachHome);
  Application.CreateForm(TfrmStudentHomee, frmStudentHomee);
  Application.CreateForm(TfrmUpcomingAssessT, frmUpcomingAssessT);
  Application.CreateForm(TfrmNoticesT, frmNoticesT);
  Application.CreateForm(TfrmTextbooksT, frmTextbooksT);
  Application.CreateForm(TfrmNoticesS, frmNoticesS);
  Application.CreateForm(TfrmUpcomingAssessS, frmUpcomingAssessS);
  Application.CreateForm(TfrmNotice2T, frmNotice2T);
  Application.CreateForm(TfrmTextbooksS, frmTextbooksS);
  Application.CreateForm(TfrmTextbooksT, frmTextbooksT);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmAssessCreator, frmAssessCreator);
  Application.Run;
end.
