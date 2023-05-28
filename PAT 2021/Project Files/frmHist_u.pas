unit frmHist_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, pngimage, ExtCtrls, dmMain_u, DBCtrls, StdCtrls;

type
  TfrmHist = class(TForm)
    Image1: TImage;
    dbHist: TDBGrid;
    DBNavigator1: TDBNavigator;
    btnBack: TButton;
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHist: TfrmHist;

implementation
uses
frmHome_u;

{$R *.dfm}

procedure TfrmHist.btnBackClick(Sender: TObject);
begin
frmHome.show;
frmHist.Hide;

end;

end.
