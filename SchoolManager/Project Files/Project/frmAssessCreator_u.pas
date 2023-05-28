unit frmAssessCreator_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, jpeg, ExtCtrls, dmMain_u;

type
  TfrmAssessCreator = class(TForm)
    imgBackground: TImage;
    lblAssessCreator: TLabel;
    redBody: TRichEdit;
    lblBody: TLabel;
    btnClose: TBitBtn;
    btnClear: TButton;
    btnPost: TButton;
    lblSubject: TLabel;
    cmbSubject: TComboBox;
    cmbGrade: TComboBox;
    lblGrade: TLabel;
    dtpAssess: TDateTimePicker;
    lblDate: TLabel;
    cmbPaper: TComboBox;
    Label1: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAssessCreator: TfrmAssessCreator;

implementation

{$R *.dfm}

procedure TfrmAssessCreator.btnClearClick(Sender: TObject);
begin
cmbSubject.Text := 'Pure Maths';
cmbPaper.Text := '1';
cmbGrade.Text := '8';
redBody.Clear;
dtpAssess.Date := Date;
end;

procedure TfrmAssessCreator.btnCloseClick(Sender: TObject);
begin
frmAssessCreator.Hide;
end;

procedure TfrmAssessCreator.btnPostClick(Sender: TObject);
var
F : textfile;
sSubject, sPaper, sGrade, sScope : string;
begin

sSubject := cmbSubject.Text;
sPaper := cmbPaper.Text;
sGrade := cmbGrade.Text;
sScope := redBody.Text;

with dmMain do
  begin
    adoUpcoming.Insert;
    adoUpcoming['Subject'] := sSubject;                                                      // adds all relevant information into the database
    adoUpcoming['Paper'] := sPaper;
    adoUpcoming['Grade'] := sGrade;
    adoUpcoming['Scope'] := sScope;
    adoUpcoming['Date'] := dtpAssess.Date;
    adoUpcoming.Post;
    MessageDlg('Assessment successfully posted', mtInformation, [mbOk], 0);
  end; // end of with

AssignFile (F, 'LogFiles\Assessments.txt');

if FileExists('LogFiles\Assessments.txt') = True then
begin
  Append(F);
  Writeln(F, DateToStr(Date) + ' ' + TimeToStr(Now));
  Writeln(F, sSubject + ' Grade: ' + sGrade + ' Date : ' + DateToStr(dtpAssess.Date));
  Writeln(F,'Paper: ' + sPaper);                                                               //algorithm to log changes made to database
  Writeln(F, 'Scope :');
  Writeln(F, sScope);
  Writeln(F, ' ');
  CloseFile(f);
end
else
begin
  Rewrite(F);
  Writeln(F, DateToStr(Date) + ' ' + TimeToStr(Now));
  Writeln(F, sSubject + ' Grade: ' + sGrade + ' Date : ' + DateToStr(dtpAssess.Date));
  Writeln(F,'Paper: ' + sPaper);
  Writeln(F, 'Scope : ');
  Writeln(F, sScope);
  WriteLn(F, '');
  CloseFile(f);
end;
end;

end.
