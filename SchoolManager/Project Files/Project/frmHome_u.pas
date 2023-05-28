unit frmHome_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, pngimage, Buttons;

type
  TForm1 = class(TForm)
    imgBackground: TImage;
    imgStudent: TImage;
    imgTeacher: TImage;
    lblStudent: TLabel;
    lblTeacher: TLabel;
    lblLogin: TLabel;
    btnClose: TButton;
    procedure imgStudentClick(Sender: TObject);
    procedure imgTeacherClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
frmStudentHome_u,  frmLogin_u, frmWelcome_u;

{$R *.dfm}

procedure TForm1.btnCloseClick(Sender: TObject);
begin
  application.Terminate;
end;

procedure TForm1.imgStudentClick(Sender: TObject);
begin
  form1.Hide;
  frmStudentHome_u.frmStudentHomee.Show;            //sends user to student home screen
end;

procedure TForm1.imgTeacherClick(Sender: TObject);
begin
  form1.Hide;                                        // sends user to teacher login screen
  frmLogin_u.frmLogin.Show;

end;

end.
