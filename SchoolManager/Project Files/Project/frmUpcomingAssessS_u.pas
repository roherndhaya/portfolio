unit frmUpcomingAssessS_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids, dmMain_u, Buttons, frmWelcome_u;

type
  TfrmUpcomingAssessS = class(TForm)
    imgBackground: TImage;
    btnBack: TButton;
    dbAssess: TDBGrid;
    lblAssess: TLabel;
    cmbSubject: TComboBox;
    Subject: TLabel;
    lblGrade: TLabel;
    cmbGrade: TComboBox;
    btnFilter: TButton;
    btnReset: TButton;
    btnClose: TButton;
    procedure btnBackClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUpcomingAssessS: TfrmUpcomingAssessS;

implementation

uses
frmStudentHome_u;

{$R *.dfm}

procedure TfrmUpcomingAssessS.btnBackClick(Sender: TObject);
begin
  frmUpcomingAssessS.Hide;
  frmStudentHome_u.frmStudentHomee.Show;
end;

procedure TfrmUpcomingAssessS.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

procedure TfrmUpcomingAssessS.btnFilterClick(Sender: TObject);
begin
with dmMain do
begin
  qryAssess.sql.Clear;
  qryAssess.SQL.Add('Select * From tblUpcoming');
  qryAssess.SQL.Add('WHERE Subject = ' + '"' + cmbSubject.Text + '" AND Grade = "' + cmbGrade.Text + '"');    // sql code for filter according to users input
  qryAssess.Open;
end;
end;

procedure TfrmUpcomingAssessS.btnResetClick(Sender: TObject);
begin
with dmMain do
begin
  qryAssess.sql.Clear;
  qryAssess.SQL.Add('Select * From tblUpcoming');                   //sql code to reset filter
  qryAssess.Open;
end;
end;

end.
