program frmKiosk_p;



uses
  Forms,
  frmLogin_u in 'frmLogin_u.pas' {frmLogin},
  frmLogin2_u in 'frmLogin2_u.pas' {frmLogin2},
  frmHome_u in 'frmHome_u.pas' {frmHome},
  frmHomeG_u in 'frmHomeG_u.pas' {frmHomeG},
  frmInfo_u in 'frmInfo_u.pas' {frmInfo},
  dmMain_u in 'dmMain_u.pas' {dmMain: TDataModule},
  frmMenu_u in 'frmMenu_u.pas' {frmMenu},
  frmMenu2_u in 'frmMenu2_u.pas' {frmMenu2},
  frmCheckout_u in 'frmCheckout_u.pas' {frmCheckout},
  frmHist_u in 'frmHist_u.pas' {frmHist},
  frmInfoM_u in 'frmInfoM_u.pas' {frmInfoM},
  frmMenuM_u in 'frmMenuM_u.pas' {frmMenuM},
  frmMenuM2_u in 'frmMenuM2_u.pas' {frmMenuM2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmLogin2, frmLogin2);
  Application.CreateForm(TfrmLogin2, frmLogin2);
  Application.CreateForm(TfrmHome, frmHome);
  Application.CreateForm(TfrmHomeG, frmHomeG);
  Application.CreateForm(TfrmInfo, frmInfo);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmMenu2, frmMenu2);
  Application.CreateForm(TfrmCheckout, frmCheckout);
  Application.CreateForm(TfrmHist, frmHist);
  Application.CreateForm(TfrmInfoM, frmInfoM);
  Application.CreateForm(TfrmMenuM, frmMenuM);
  Application.CreateForm(TfrmMenuM2, frmMenuM2);
  Application.Run;
end.
