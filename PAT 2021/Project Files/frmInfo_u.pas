unit frmInfo_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, Grids, DBGrids, StdCtrls, dmMain_u;

type
  TfrmInfo = class(TForm)
    imgBackground: TImage;
    btnContact: TButton;
    btnRest: TButton;
    dbMain: TDBGrid;
    btnBack: TButton;
    procedure btnContactClick(Sender: TObject);
    procedure btnRestClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInfo: TfrmInfo;

implementation
uses
frmHomeG_u;

{$R *.dfm}

procedure TfrmInfo.btnBackClick(Sender: TObject);
begin
  frmHomeG_u.frmHomeG.Show;
  frmInfo.Hide;
end;

procedure TfrmInfo.btnContactClick(Sender: TObject);
begin
dbMain.DataSource := dmMain.srcContact;
end;

procedure TfrmInfo.btnRestClick(Sender: TObject);
begin
dbMain.DataSource := dmMain.srcBranch;
end;

end.
