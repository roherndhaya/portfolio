unit frmInfoM_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dmMain_u, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, pngimage;

type
  TfrmInfoM = class(TForm)
    imgBackground: TImage;
    dbInfo: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnContact: TButton;
    btnBranch: TButton;
    btnBack: TButton;
    procedure btnContactClick(Sender: TObject);
    procedure btnBranchClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfoM: TfrmInfoM;

implementation
uses
frmHome_u;

{$R *.dfm}

procedure TfrmInfoM.btnBackClick(Sender: TObject);
begin
frmHome_u.frmHome.Show;
frmInfoM.Hide;
end;

procedure TfrmInfoM.btnBranchClick(Sender: TObject);
begin
dbInfo.DataSource := dmMain.srcBranch;
end;

procedure TfrmInfoM.btnContactClick(Sender: TObject);
begin
dbInfo.DataSource := dmMain.srcContact;
end;

end.
