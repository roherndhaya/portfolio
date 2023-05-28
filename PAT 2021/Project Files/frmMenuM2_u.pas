unit frmMenuM2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, dmMain_u;

type
  TfrmMenuM2 = class(TForm)
    btnBurger: TButton;
    btnBack: TButton;
    dbMenu: TDBGrid;
    btnTreats: TButton;
    btnDrinks: TButton;
    btnSnacks: TButton;
    btnWraps: TButton;
    btnChicken: TButton;
    imgBackground: TImage;
    DBNavigator1: TDBNavigator;
    procedure btnBackClick(Sender: TObject);
    procedure btnBurgerClick(Sender: TObject);
    procedure btnChickenClick(Sender: TObject);
    procedure btnWrapsClick(Sender: TObject);
    procedure btnSnacksClick(Sender: TObject);
    procedure btnDrinksClick(Sender: TObject);
    procedure btnTreatsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuM2: TfrmMenuM2;

implementation
uses
frmMenuM_u;

{$R *.dfm}

procedure TfrmMenuM2.btnBackClick(Sender: TObject);
begin
  frmMenuM_u.frmMenuM.Show;
  frmMenuM2.Hide;
end;

procedure TfrmMenuM2.btnBurgerClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Burgers');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenuM2.btnChickenClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Chicken');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenuM2.btnDrinksClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Drinks');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenuM2.btnSnacksClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Snacks');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenuM2.btnTreatsClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Treats');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenuM2.btnWrapsClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Wraps');
  tblMenu.Filtered := true;
  end;
end;

end.
