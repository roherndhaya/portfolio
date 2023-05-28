unit frmUpcomingAssessT_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Grids, DBGrids, jpeg, dmMain_u, frmAssessCreator_u, frmWelcome_u,
  Buttons;

type
  TfrmUpcomingAssessT = class(TForm)
    imgBackground: TImage;
    dbgUpcomingAssess: TDBGrid;
    lblUpcomingAssess: TLabel;
    btnAdd: TButton;
    btnDel: TButton;
    btnBack: TButton;
    dbnav1: TDBNavigator;
    btnClose: TButton;
    procedure btnBackClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUpcomingAssessT: TfrmUpcomingAssessT;

implementation

uses
frmTeachHome_u;

{$R *.dfm}

procedure TfrmUpcomingAssessT.btnAddClick(Sender: TObject);
begin
frmAssessCreator_u.frmAssessCreator.Show;                                               // opens assessment creator form
end;

procedure TfrmUpcomingAssessT.btnBackClick(Sender: TObject);
begin
frmUpcomingAssessT.Hide;
frmTeachHome_u.frmTeachHome.Show;
end;

procedure TfrmUpcomingAssessT.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

procedure TfrmUpcomingAssessT.btnDelClick(Sender: TObject);
var
sInput : string;
begin
sInput:= inputbox('Delete an assessment', 'Insert AssessmentNo of notice you wish to delete', '');

if sInput = '' then
begin
messagedlg('Please input AssessmentNo', mtError, [mbOk], 0);
exit;
end;

with dmMain do
begin
adoUpcoming.First;
  while not adoUpcoming.Eof do
    begin                                                                                         // algorithm to delete the assessment teacher has chosen
      if adoUpcoming['AssessmentNo'] = sInput then
      begin
      adoUpcoming.Delete;
      messagedlg('Assessment successfully deleted', mtInformation, [mbOk], 0);
      end
      else adoUpcoming.Next;
end; // end of while
end; // end with
end;

end.
