unit frmMenu2_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, Grids, DBGrids, StdCtrls, dmMain_u;

type
  TfrmMenu2 = class(TForm)
    imgBackground: TImage;
    btnBurger: TButton;
    btnChicken: TButton;
    btnWraps: TButton;
    btnSnacks: TButton;
    btnDrinks: TButton;
    btnTreats: TButton;
    dbMenu: TDBGrid;
    btnCart: TButton;
    btnCheckout: TButton;
    btnBack: TButton;
    procedure btnBurgerClick(Sender: TObject);
    procedure btnChickenClick(Sender: TObject);
    procedure btnWrapsClick(Sender: TObject);
    procedure btnSnacksClick(Sender: TObject);
    procedure btnDrinksClick(Sender: TObject);
    procedure btnTreatsClick(Sender: TObject);
    procedure btnCartClick(Sender: TObject);
    procedure btnCheckoutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    arrList : array[1..15] of string;
    arrPrice :array[1..15] of real;

  end;

var
  frmMenu2: TfrmMenu2;
  iCount : integer;
  rTotal : real;

implementation

uses frmCheckout_u, frmMenu_u;

{$R *.dfm}

procedure TfrmMenu2.btnBackClick(Sender: TObject);
begin
  frmMenu_u.frmMenu.Show;
  frmMenu2.Hide;
end;

procedure TfrmMenu2.btnBurgerClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Burgers');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu2.btnCartClick(Sender: TObject);
var
rPrice : real;
sName : string;
i: Integer;
begin
sName := dbMenu.SelectedField.AsString;

with dmMain_u.dmMain do
begin
  tblMenu.First;

  while not tblMenu.eof do //begin of while
  begin
    if tblMenu['Name'] = sName then
    begin
      inc(iCount);
      arrList[iCount] := sName;
      rPrice := tblMenu['Price'];
      arrPrice[iCount] := rPrice;
    end;
    tblMenu.Next;
  end; //end of while
end; //end with
messageDlg('Item added to cart!', mtInformation, [mbOk], 0);
end;

procedure TfrmMenu2.btnCheckoutClick(Sender: TObject);
var
  i: Integer;
begin
frmMenu2.Hide;

with frmCheckout_u.frmCheckout do
begin

  frmCheckout.Show;

  redOut.Lines.Clear;
  redOut.SelAttributes.Style := [fsBold];
  redOut.SelAttributes.Size := 13;
  redOut.Paragraph.TabCount := 1 ;
  redOut.Paragraph.Tab[0] := 200 ;
  redOut.Lines.Add('Order Summary');
  redOut.SelAttributes.Style := [fsBold];
  redOut.SelAttributes.Size := 9;
  redOut.Lines.Add('Item' + #9 + 'Price');


for i := 1 to length(arrList) do
  begin
    redOut.Lines.Add(arrList[i] + #9 + FloatToStrF(arrPrice[i], ffCurrency, 4, 2));
    rTotal := rTotal + arrPrice[i];
  end;

  redOut.lines.add (#13 + 'Total:' + #9 + FloatToStrF(rTotal, ffCurrency, 4, 2));

end;
end;

procedure TfrmMenu2.btnChickenClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Chicken');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu2.btnDrinksClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Drinks');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu2.btnSnacksClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Snacks');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu2.btnTreatsClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Treats');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu2.btnWrapsClick(Sender: TObject);
begin
  with dmMain_u.dmMain do
  begin
  tblMenu.Filtered := false;
  tblMenu.Filter := 'Type =' + QuotedStr('Wraps');
  tblMenu.Filtered := true;
  end;
end;

procedure TfrmMenu2.FormCreate(Sender: TObject);
begin
rTotal := 0;
iCount := 0;
end;

end.
