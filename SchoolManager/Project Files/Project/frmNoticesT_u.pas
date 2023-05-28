unit frmNoticesT_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Grids, DBGrids, dmMain_u, frmNotice2T_u, frmWelcome_u,
  Buttons;

type
  TfrmNoticesT = class(TForm)
    imgBackground: TImage;
    btnBack: TButton;
    dbNotices: TDBGrid;
    btnClose: TLabel;
    btnAdd: TButton;
    btnRemove: TButton;
    Button1: TButton;
    procedure btnBackClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNoticesT: TfrmNoticesT;

implementation

uses
frmTeachHome_u;

{$R *.dfm}

procedure TfrmNoticesT.btnAddClick(Sender: TObject);
begin
frmNotice2T_u.frmNotice2T.Show;                                                    //sends teacher to notice creator screen
end;

procedure TfrmNoticesT.btnBackClick(Sender: TObject);
begin
frmNoticesT.Hide;
frmTeachHome_u.frmTeachHome.Show;
end;

procedure TfrmNoticesT.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

procedure TfrmNoticesT.btnRemoveClick(Sender: TObject);
var
sInput : string;
begin
sInput:= inputbox('Delete a notice', 'Insert NoticeNo of notice you wish to delete', '');

if sInput = '' then
begin
messagedlg('Please input NoticeNo', mtError, [mbOk], 0);
exit;
end;

with dmMain do
begin
adoNotices.First;
  while not adoNotices.Eof do
    begin                                                                                //algorithm to delete the teacehrs selected notice
      if adoNotices['NoticeNo'] = sInput then
      begin
      adoNotices.Delete;
      messagedlg('Notice successfully deleted', mtInformation, [mbOk], 0);
      end
      else adoNotices.Next;
end; // end of while
end; // end with
end;

end.
