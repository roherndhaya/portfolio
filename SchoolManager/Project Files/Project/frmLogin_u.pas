unit frmLogin_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, pngimage, dmMain_u, frmTeachHome_u, Buttons,
  frmWelcome_u, clsRegister_u, ClipBrd;

type
  TfrmLogin = class(TForm)
    imgBackground: TImage;
    pnlLogin: TPanel;
    lblLogin: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnBack: TButton;
    imgLogo: TImage;
    imgEye: TImage;
    lblForgor: TLabel;
    imgEyeCl: TImage;
    btnClose: TButton;
    procedure btnBackClick(Sender: TObject);
    procedure lblLoginClick(Sender: TObject);
    procedure lblLoginMouseLeave(Sender: TObject);
    procedure lblLoginMouseEnter(Sender: TObject);
    procedure lblForgorMouseEnter(Sender: TObject);
    procedure lblForgorMouseLeave(Sender: TObject);
    procedure imgEyeClick(Sender: TObject);
    procedure imgEyeClClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure lblForgorClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    F : textfile

  end;

var
  frmLogin: TfrmLogin;

implementation

uses
frmHome_u, frmStudentHome_u;

{$R *.dfm}

procedure TfrmLogin.btnBackClick(Sender: TObject);
begin
frmLogin.hide;
frmHome_u.Form1.Show;
end;

procedure TfrmLogin.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

procedure TfrmLogin.imgEyeClClick(Sender: TObject);
begin
edtPassword.PasswordChar := '*';
imgEye.visible := true;
imgEyeCl.Visible := false;
end;

procedure TfrmLogin.imgEyeClick(Sender: TObject);
begin
edtPassword.PasswordChar := #0;
imgEye.visible := false;
imgEyeCl.Visible := true;
end;

procedure TfrmLogin.lblForgorClick(Sender: TObject);
var
oRegister : TItem;
sUser, sPass : string;
begin

with dmMain do
begin
  sUser := oRegister.genUser;                                                  //saves generated password to variable
  sPass := oRegister.genPass;

  clipboard.AsText := sPass;                                                   // copies password to clipboard

  adoUsers.Insert;
  adoUsers['Username'] := sUser;
  adoUsers['Password'] := sPass;
  adoUsers.Post;

  messageDlg('Account has been created', mtInformation, [mbok], 0);
  messageDlg ('Username: ' + sUser + #13 + 'Password: ' + sPass, mtInformation, [mbok], 0);      //displays useful message
  messageDlg('Password copied to clipboard', mtInformation, [mbok], 0);
end;


end;

procedure TfrmLogin.lblForgorMouseEnter(Sender: TObject);
begin
lblForgor.Font.Color := clHighlight;
end;

procedure TfrmLogin.lblForgorMouseLeave(Sender: TObject);
begin
lblForgor.Font.Color := clBlack;
end;

procedure TfrmLogin.lblLoginClick(Sender: TObject);
var
sUsername, sPassword : string;
bFound : boolean;
begin
sUsername := edtUsername.Text;
sPassword := edtPassword.Text;

bFound := false;

with dmMain do
  begin
   adoUsers.First;
   while (not adoUsers.eof) and (bFound = false) do
    begin
      if (sUsername = adoUsers['Username']) AND (sPassword = adoUsers['Password']) then
        begin                                                                                  //algorithm to check if password is correct
          bFound := true;
          frmLogin.Hide;
          frmTeachHome_u.frmTeachHome.Show;

          AssignFile(F, 'LogFiles\Logins.txt');

          if FileExists('LogFiles\Logins.txt') = true then
          begin
          Append(F);
          WriteLn(F, 'User: ' + sUsername);
          Writeln(F, 'Logon at: ' + DateToStr(Date) + ' ' + TimeToStr(Now));         // algorithm to log logins in a textfile
          Writeln(F, '');
          closefile(f);
          end
          else
          begin
          Rewrite(F);
          WriteLn(F, 'User: ' + sUsername);
          Writeln(F, 'Logon at: ' + DateToStr(Date) + ' ' + TimeToStr(Now));
          Writeln(F, '');
          closefile(f);
          end;

        end
        else
      adoUsers.Next;
    end;
 end;

 if bFound = false then                                                           //error check
 messagedlg('Incorrect username or password', mtError, [mbOk], 0);

end;

procedure TfrmLogin.lblLoginMouseEnter(Sender: TObject);
begin
lblLogin.Font.Color := clHighlight;
end;

procedure TfrmLogin.lblLoginMouseLeave(Sender: TObject);
begin
lblLogin.Font.Color := clWhite;
end;



end.
