unit frmMenu_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, frmMenu2_u, dmMain_u, StdCtrls;

type
  TfrmMenu = class(TForm)
    imgBackground: TImage;
    imgBurger: TImage;
    imgChicken: TImage;
    imgWraps: TImage;
    imgSnacks: TImage;
    imgDrinks: TImage;
    imgTreats: TImage;
    btnBack: TButton;
    procedure imgBurgerClick(Sender: TObject);
    procedure imgChickenClick(Sender: TObject);
    procedure imgWrapsClick(Sender: TObject);
    procedure imgSnacksClick(Sender: TObject);
    procedure imgDrinksClick(Sender: TObject);
    procedure imgTreatsClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation
uses
frmHomeG_u;

{$R *.dfm}

procedure TfrmMenu.btnBackClick(Sender: TObject);
begin
  frmHomeG_u.frmHomeG.Show;
  frmMenu.Hide;
end;

procedure TfrmMenu.imgBurgerClick(Sender: TObject);
begin
  frmMenu2_u.frmMenu2.Show;
  frmMenu.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Burgers');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;

end;

procedure TfrmMenu.imgChickenClick(Sender: TObject);
begin
  frmMenu2_u.frmMenu2.Show;
  frmMenu.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Chicken');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu.imgDrinksClick(Sender: TObject);
begin
  frmMenu2_u.frmMenu2.Show;
  frmMenu.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Drinks');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu.imgSnacksClick(Sender: TObject);
begin
  frmMenu2_u.frmMenu2.Show;
  frmMenu.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Snacks');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu.imgTreatsClick(Sender: TObject);
begin
  frmMenu2_u.frmMenu2.Show;
  frmMenu.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Treats');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu.imgWrapsClick(Sender: TObject);
begin
  frmMenu2_u.frmMenu2.Show;
  frmMenu.Hide;
  with dmMain_u.dmMain do
  begin
  dmMain_u.dmMain.tblMenu.Filtered := false;
  dmMain_u.dmMain.tblMenu.Filter := 'Type =' + QuotedStr('Wraps');
  dmMain_u.dmMain.tblMenu.Filtered := true;
  end;
end;

end.
