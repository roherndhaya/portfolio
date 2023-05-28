unit frmHome_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, frmHist_u, StdCtrls, frmInfoM_u, frmMenuM_u;

type
  TfrmHome = class(TForm)
    imgBackground: TImage;
    imgMenu: TImage;
    imgInfo: TImage;
    imgHist: TImage;
    btnBack: TButton;
    procedure imgHistClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure imgInfoClick(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHome: TfrmHome;

implementation
uses
frmLogin2_u;

{$R *.dfm}

procedure TfrmHome.btnBackClick(Sender: TObject);
begin
frmHome.Hide;
frmLogin2_u.frmLogin2.Show;

end;

procedure TfrmHome.imgHistClick(Sender: TObject);
begin
 frmHist_u.frmHist.Show;
 frmHome.Hide;
end;

procedure TfrmHome.imgInfoClick(Sender: TObject);
begin
 frmInfoM_u.frmInfoM.Show;
 frmHome.Hide;
end;

procedure TfrmHome.imgMenuClick(Sender: TObject);
begin
 frmMenuM_u.frmMenuM.Show;
 frmHome.Hide;
end;

end.
