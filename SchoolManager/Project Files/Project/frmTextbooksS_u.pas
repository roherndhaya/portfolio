unit frmTextbooksS_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, pngimage, dmMain_u, ComCtrls, Grids, frmWelcome_u,
  DBGrids, Buttons, ShellApi;

type
  TfrmTextbooksS = class(TForm)
    imgBackground: TImage;
    btnBack: TButton;
    imgThumbnail: TImage;
    lblName: TLabel;
    lblSynopsis: TLabel;
    lblAuthor: TLabel;
    btnSearch: TButton;
    btnList: TButton;
    btnNext: TButton;
    lblPrevious: TButton;
    redAbout: TRichEdit;
    pnlList: TPanel;
    dbgList: TDBGrid;
    btnHide: TButton;
    btnClose: TButton;
    btnOpen: TButton;
    procedure btnBackClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure lblPreviousClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnListClick(Sender: TObject);
    procedure btnHideClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTextbooksS: TfrmTextbooksS;

implementation

uses
frmStudentHome_u;

{$R *.dfm}

procedure TfrmTextbooksS.btnBackClick(Sender: TObject);
begin
frmTextbooksS.Hide;
frmStudentHome_u.frmStudentHomee.show;
end;

procedure TfrmTextbooksS.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

procedure TfrmTextbooksS.btnHideClick(Sender: TObject);
begin
pnlList.Visible := false;

end;

procedure TfrmTextbooksS.btnListClick(Sender: TObject);
begin
pnlList.Visible := true;                                                              //displays list of textbook
end;

procedure TfrmTextbooksS.btnNextClick(Sender: TObject);
var
sTextbookName, sPublisher, sAbout, sImage : string;

begin
redAbout.Lines.Clear;
   with dmMain do
    begin
      adoTextbooks.Next;                                                               //shows next textbook
      sTextbookName := adoTextbooks['Name'];
      sPublisher := adoTextbooks['Publisher'];
      sImage := adoTextbooks['Thumbnail'];
      lblName.caption := sTextbookName;
      lblAuthor.Caption := sPublisher;
      redAbout.Lines.Add(adoTextbooks['About']);;
      imgThumbnail.Picture.LoadFromFile('Textbooks\' + sImage);

    end;
end;

procedure TfrmTextbooksS.btnOpenClick(Sender: TObject);
var
  sFileName: String;
begin
  sFileName := 'Textbooks\' + dmMain.adoTextbooks['NameOfFile'];                          //opens textbook
  ShellExecute(Handle, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL)
end;

procedure TfrmTextbooksS.btnSearchClick(Sender: TObject);
var
sTextbookName : string;
bFound : boolean;
begin
redAbout.Clear;
sTextbookName := inputbox('Search', 'Enter textbook name', 'Enjoy Delphi');
bFound := false;                                                                                //allows user to search for textbook

  with dmMain do
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

procedure TfrmTextbooksS.lblPreviousClick(Sender: TObject);
var
  sTextbookName, sPublisher, sAbout, sImage : string;
begin
  redAbout.Clear;
   with dmMain do
    begin
      adoTextbooks.Prior;                                                           //shows previous textbook
      sTextbookName := adoTextbooks['Name'];
      sPublisher := adoTextbooks['Publisher'];
      sImage := adoTextbooks['Thumbnail'];
      lblName.caption := sTextbookName;
      lblAuthor.Caption := sPublisher;
      redAbout.lines.add(adoTextbooks['About']);
      imgThumbnail.Picture.LoadFromFile('Textbooks\' + sImage);

    end;
end;

end.
