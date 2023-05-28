unit frmLogin2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls;

type
  TfrmLogin2 = class(TForm)
    imgBackground: TImage;
    edtUser: TEdit;
    edtPass: TEdit;
    imgLoginBox: TImage;
    imgLogin: TImage;
    lblForgot: TLabel;
    imgEye: TImage;
    imgEyeHide: TImage;
    btnBack: TButton;
    procedure imgBorderMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lblForgotMouseEnter(Sender: TObject);
    procedure lblForgotMouseLeave(Sender: TObject);
    procedure lblForgotClick(Sender: TObject);
    procedure imgEyeClick(Sender: TObject);
    procedure imgEyeHideClick(Sender: TObject);
    procedure imgLoginClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin2: TfrmLogin2;

implementation

uses frmHome_u, frmLogin_u;

{$R *.dfm}

procedure TfrmLogin2.imgEyeClick(Sender: TObject);
begin
edtPass.PasswordChar := '*';
imgEye.Visible := false;
imgEyeHide.Visible := true;

end;

procedure TfrmLogin2.imgEyeHideClick(Sender: TObject);
begin
edtPass.PasswordChar := #0;
imgEye.Visible := true;
imgEyeHide.Visible := false;
end;

procedure TfrmLogin2.imgLoginClick(Sender: TObject);
begin
if (edtUser.Text = 'admin') and (edtPass.Text = 'admin') then
begin
  frmHome_u.frmHome.show;
  frmLogin2.hide;
end
else
begin
  messageDlg('Incorrect username or password!', mtError, [mbOk], 0);
end;
end;

procedure TfrmLogin2.btnBackClick(Sender: TObject);
begin
  frmLogin2.Hide;
  frmLogin_u.frmLogin.Show;
end;

procedure TfrmLogin2.imgBorderMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbLeft then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure TfrmLogin2.lblForgotClick(Sender: TObject);
begin
messageDlg('Check login.txt for login details', mtInformation, [mbOk], 0);
end;

procedure TfrmLogin2.lblForgotMouseEnter(Sender: TObject);
begin
lblForgot.Font.Color := clHighlight;
end;

procedure TfrmLogin2.lblForgotMouseLeave(Sender: TObject);
begin
lblForgot.Font.Color := clWhite;
end;

end.
