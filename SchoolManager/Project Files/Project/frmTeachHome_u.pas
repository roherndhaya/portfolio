unit frmTeachHome_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, pngimage, frmTextBooksT_u, frmNoticesT_u, frmUpcomingassessT_u, frmWelcome_u,
  Buttons;

type
  TfrmTeachHome = class(TForm)
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
  frmTeachHome: TfrmTeachHome;

implementation

uses
frmLogin_u;

{$R *.dfm}

procedure TfrmTeachHome.btnBackClick(Sender: TObject);
begin
frmLogin_u.frmLogin.Show;                                            // sends user back to login screen
frmTeachHome.Hide;
end;

procedure TfrmTeachHome.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

procedure TfrmTeachHome.imgNoticesClick(Sender: TObject);
begin
frmTeachhome.hide;                                                                 //sends user to teacher notices screen
frmNoticesT_u.frmNoticesT.Show;
end;

procedure TfrmTeachHome.imgTextbooksClick(Sender: TObject);
begin
frmTeachhome.hide;                                                                       //sends user to teacher textbooks screen
frmTextbooksT_u.frmTextbooksT.Show;

end;

procedure TfrmTeachHome.imgUpAssessClick(Sender: TObject);
begin
frmTeachhome.hide;
frmUpcomingAssessT_u.frmUpcomingAssessT.Show;                                      //sends users to teacher assessment screen
end;

end.
