unit frmMenuM_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, dmMain_u, frmMenuM2_u;

type
  TfrmMenuM = class(TForm)
    imgBackground: TImage;
    imgBurger: TImage;
    imgChicken: TImage;
    btnBack: TButton;
    imgDrinks: TImage;
    imgTreats: TImage;
    imgWraps: TImage;
    imgSnacks: TImage;
    procedure btnBackClick(Sender: TObject);
    procedure imgBurgerClick(Sender: TObject);
    procedure imgChickenClick(Sender: TObject);
//  procedure imgWrapsClick(Sender: TObject);
 //   procedure imgDrinksClick(Sender: TObject);
 //   procedure imgSnackssClick(Sender: TObject);
    procedure imgTreatsClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure imgSnacksClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuM: TfrmMenuM;

implementation
uses
frmHome_u;

{$R *.dfm}

procedure TfrmMenuM.btnBackClick(Sender: TObject);
begin
frmHome_u.frmHome.Show;
frmMenuM.Hide;
end;

procedure TfrmMenuM.Image1Click(Sender: TObject);
begin
  frmMenuM2_u.frmMenuM2.Show;
  frmMenuM.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Drinks');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenuM.imgTreatsClick(Sender: TObject);
begin
  frmMenuM2_u.frmMenuM2.Show;
  frmMenuM.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Treats');
  dmMain_u.dmMain.tblMenu.Filtered := true;
end;
end;


procedure TfrmMenuM.Image3Click(Sender: TObject);
begin
  frmMenuM2_u.frmMenuM2.Show;
  frmMenuM.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Wraps');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;
end;


procedure TfrmMenuM.imgBurgerClick(Sender: TObject);
begin
  frmMenuM2_u.frmMenuM2.Show;
  frmMenuM.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Burgers');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;
end;


procedure TfrmMenuM.imgChickenClick(Sender: TObject);
begin
  frmMenuM2_u.frmMenuM2.Show;
  frmMenuM.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Chicken');
  dmMain_u.dmMain.tblMenu.Filtered := true;
end;
end;


procedure TfrmMenuM.imgSnacksClick(Sender: TObject);
begin
  frmMenuM2_u.frmMenuM2.Show;
  frmMenuM.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Snacks');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;
end;

end.
