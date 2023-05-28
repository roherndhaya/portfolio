unit frmNotice2T_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, jpeg, ExtCtrls, ComCtrls, dmMain_u;

type
  TfrmNotice2T = class(TForm)
    imgBackground: TImage;
    lblNC: TLabel;
    lblTitle: TLabel;
    edtTitle: TEdit;
    lblBody: TLabel;
    edtAuthor: TEdit;
    lblAuthor: TLabel;
    btnPost: TButton;
    btnClear: TButton;
    btnClose: TBitBtn;
    redBody: TRichEdit;
    procedure btnCloseClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNotice2T: TfrmNotice2T;

implementation

{$R *.dfm}

procedure TfrmNotice2T.btnClearClick(Sender: TObject);
begin
edtTitle.Clear;
redBody.Lines.Clear;
edtAuthor.Clear;
edtTitle.SetFocus;
end;

procedure TfrmNotice2T.btnCloseClick(Sender: TObject);
begin
frmNotice2t.Close;
end;

procedure TfrmNotice2T.btnPostClick(Sender: TObject);
var
sTitle, sBody, sAuthor : string;
bCheck : boolean;
F : textfile;

begin
sTitle := edtTitle.Text;
sBody := redBody.Text;
sAuthor := edtAuthor.Text;
bCheck := false;

if sTitle = '' then                                                               //checks if all relevant ifnormation is filled out
messagedlg('Please fill in a title', mtError, [mbOk], 0);

if sBody = ''  then
messagedlg('Please fill in a body', mtError, [mbOk], 0);

if sAuthor = '' then
messagedlg('Please fill in an author', mtError, [mbOk], 0);

if (sTitle <> '') and (sBody <> '') and (sAuthor <> '') then
bCheck := true;




if bCheck = true then
begin
  with dmMain do
    begin
      adoNotices.Insert;                                                        //posts all relevant information into the database
      adoNotices['Heading'] := sTitle;
      adoNotices['Content'] := sBody;
      adoNotices['Author'] := sAuthor;
      adoNotices.Post;
    end;  // end with
end; // end if

AssignFile (F, 'LogFiles\Notices.txt');

if FileExists('LogFiles\Notices.txt') = True then
begin
  Append(F);
  Writeln(F, sAuthor + ' has posted: ');                                                 //creates log
  Writeln(F, sTitle);
  Writeln(F, sBody );
  WriteLn(F, 'At ' + DateToStr(Date) + ' ' + TimeToStr(Now));
  WriteLn(F, '');
  CloseFile(f);
end
else
begin
  Rewrite(F);
  Writeln(F, sAuthor + ' has posted: ');
  Writeln(F, sTitle);
  Writeln(F, sBody );
  WriteLn(F, 'At ' + DateToStr(Date) + ' ' + TimeToStr(Now));
  WriteLn(F, '');
  CloseFile(f);
end;




end;

end.
