unit frmTextbooksT_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, pngimage, dmMain_u, ComCtrls, Grids, frmWelcome_u,
  DBGrids, Buttons, ShellApi;

type
  TfrmTextbooksT = class(TForm)
    imgBackground: TImage;
    btnBack: TButton;
    imgThumbnail: TImage;
    lblName: TLabel;
    lblAuthor: TLabel;
    btnDelete: TButton;
    btnSearch: TButton;
    btnList: TButton;
    redAbout: TRichEdit;
    pnlList: TPanel;
    dbgList: TDBGrid;
    btnHide: TButton;
    Image1: TImage;
    btnNext: TButton;
    lblPrevious: TButton;
    btnClose: TButton;
    btnOpen: TButton;
    procedure btnBackClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnHideClick(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure lblPreviousClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTextbooksT: TfrmTextbooksT;

implementation

uses
frmTeachHome_u;

{$R *.dfm}

procedure TfrmTextbooksT.btnBackClick(Sender: TObject);
begin
frmTextbooksT.Hide;
frmTeachHome_u.frmTeachHome.Show;
end;

procedure TfrmTextbooksT.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

procedure TfrmTextbooksT.btnDeleteClick(Sender: TObject);
var
sInput : string;
begin
sInput:= inputbox('Remove a textbook', 'Insert TextbookNo of notice you wish to delete', '');     //allows user to delete textbook

if sInput = '' then
begin
messagedlg('Please input NoticeNo', mtError, [mbOk], 0);
exit;
end;

with dmMain do
begin
adoTextbooks.First;
  while not adoTextbooks.Eof do
    begin
      if adoTextbooks['TextbookNo'] = sInput then
      begin                                                                           //delete selected textbook
      adoTextbooks.Delete;
      messagedlg('Textbook successfully deleted', mtInformation, [mbOk], 0);
      end
      else adoTextbooks.Next;
    end;
end;


end;

procedure TfrmTextbooksT.btnHideClick(Sender: TObject);
begin
pnlList.Visible := false;
end;

procedure TfrmTextbooksT.btnListClick(Sender: TObject);
begin
pnlList.Visible := true;
end;

procedure TfrmTextbooksT.btnNextClick(Sender: TObject);
var
sTextbookName, sPublisher, sAbout, sImage : string;

begin
redAbout.Lines.Clear;
   with dmMain do
    begin
      adoTextbooks.Next;
      sTextbookName := adoTextbooks['Name'];
      sPublisher := adoTextbooks['Publisher'];
      sImage := adoTextbooks['Thumbnail'];
      lblName.caption := sTextbookName;
      lblAuthor.Caption := sPublisher;                                                 //shows all relevant information of textbook
      redAbout.Lines.Add(adoTextbooks['About']);;
      imgThumbnail.Picture.LoadFromFile('Textbooks\' + sImage);

    end;
end;

procedure TfrmTextbooksT.btnOpenClick(Sender: TObject);
var
sFileName : string;
begin                                                                                     // code to open textbook
  sFileName := 'Textbooks\' + dmMain.adoTextbooks['NameOfFile'];
  ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL)
end;

procedure TfrmTextbooksT.btnSearchClick(Sender: TObject);
var
sTextbookName : string;
bFound : boolean;
begin
redAbout.Clear;
sTextbookName := inputbox('Search', 'Enter textbook name', 'Enjoy Delphi');
bFound := false;

  with dmMain do                                                                      // algorithm to search for textbook in database
    begin
      adoTextbooks.First;
      while (NOT adoTextbooks.Eof) and (bFound = false) do
      begin
        if adoTextbooks['Name'] = sTextbookName then
        begin
          bFound := true;
          messageDlg('Textbook found', mtInformation, [mbOk], 0);
          lblName.caption := adoTextbooks['Name'];
          lblAuthor.Caption := adoTextbooks['Publisher'];
          redAbout.Lines.Add(adoTextbooks['About']);
          imgThumbnail.Picture.LoadFromFile('Textbooks\' + adoTextbooks['Thumbnail']);
        end
        else
        begin
          adoTextbooks.Next;
        end; // end of if
      end; //end of while
    end; // end of with

  if bFound = false then messagedlg('Textbook not found', mtError, [mbOk], 0);


end;

procedure TfrmTextbooksT.lblPreviousClick(Sender: TObject);
var
  sTextbookName, sPublisher, sAbout, sImage : string;

begin
  redAbout.Clear;
   with dmMain do
    begin
      adoTextbooks.Prior;
      sTextbookName := adoTextbooks['Name'];                                       //algorithm to scroll backwards in database
      sPublisher := adoTextbooks['Publisher'];
      sImage := adoTextbooks['Thumbnail'];
      lblName.caption := sTextbookName;
      lblAuthor.Caption := sPublisher;
      redAbout.lines.add(adoTextbooks['About']);
      imgThumbnail.Picture.LoadFromFile('Textbooks\' + sImage);

    end;
end;

end.
