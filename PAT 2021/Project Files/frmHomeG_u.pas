unit frmHomeG_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, frmInfo_u, frmMenu_u, StdCtrls;

type
  TfrmHomeG = class(TForm)
    imgBackground: TImage;
    imgMenu: TImage;
    Image1: TImage;
    btnBack: TButton;
    procedure Image1Click(Sender: TObject);
    procedure imgMenuClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHomeG: TfrmHomeG;

implementation
uses
frmLogin_u;

{$R *.dfm}

procedure TfrmHomeG.btnBackClick(Sender: TObject);
begin
  frmLogin_u.frmLogin.Show;
  frmHomeG.Hide;
end;

procedure TfrmHomeG.Image1Click(Sender: TObject);
begin
  frmInfo_u.frmInfo.show;
  frmHomeG.Hide;
end;

procedure TfrmHomeG.imgMenuClick(Sender: TObject);
begin
  frmMenu_u.frmMenu.Show;
  frmHomeG.Hide;
end;

end.
