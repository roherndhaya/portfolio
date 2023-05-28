unit frmNoticesS_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Grids, DBGrids, dmMain_u, Buttons, frmWelcome_u;

type
  TfrmNoticesS = class(TForm)
    imgBackground: TImage;
    btnBack: TButton;
    lblNotices: TLabel;
    dbNotices: TDBGrid;
    btnMore: TButton;
    btnClose: TButton;
    procedure btnBackClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNoticesS: TfrmNoticesS;

implementation

uses
frmStudentHome_u;

{$R *.dfm}

procedure TfrmNoticesS.btnBackClick(Sender: TObject);
begin
  frmNoticesS.Hide;
  frmStudentHome_u.frmStudentHomee.Show;
end;

procedure TfrmNoticesS.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

end.
