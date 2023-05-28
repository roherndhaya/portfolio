unit frmStudentHome_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, pngimage, frmTextbooksS_u, frmNoticesS_u, frmUpcomingAssessS_u, frmWelcome_u,
  Buttons;

type
  TfrmStudentHomee = class(TForm)
    imgBackground: TImage;
    imgTextbooks: TImage;
    imgNotices: TImage;
    imgUpAssess: TImage;
    lblHome: TLabel;
    btnBack: TButton;
    lblTextbooks: TLabel;
    lblNotices: TLabel;
    lblUpAssess: TLabel;
    btnClose: TButton;
    procedure imgTextbooksClick(Sender: TObject);
    procedure imgNoticesClick(Sender: TObject);
    procedure imgUpAssessClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStudentHomee: TfrmStudentHomee;

implementation

uses
frmHome_u;

{$R *.dfm}

procedure TfrmStudentHomee.btnBackClick(Sender: TObject);
begin
frmHome_u.Form1.Show;                                                //sends user back to Login screen
frmStudentHomee.hide;
end;

procedure TfrmStudentHomee.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

procedure TfrmStudentHomee.imgNoticesClick(Sender: TObject);
begin
frmStudentHomee.Hide;                                                             //sends user to student notice screen
frmNoticesS_u.frmNoticesS.show;
end;


procedure TfrmStudentHomee.imgTextbooksClick(Sender: TObject);
begin
frmStudentHomee.Hide;
frmTextBooksS_u.frmTextbooksS.Show;                                    //sends user to student textbook screen
end;

procedure TfrmStudentHomee.imgUpAssessClick(Sender: TObject);
begin
frmStudentHomee.Hide;                                       // sends user to student assessment screen
frmUpcomingAssessS_u.frmUpcomingAssessS.Show;
end;

end.
