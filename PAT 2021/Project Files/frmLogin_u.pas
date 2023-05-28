unit frmLogin_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, frmLogin2_u, StdCtrls;

type
  TfrmLogin = class(TForm)
    imgBackground: TImage;
    imgLoginBox: TImage;
    imgLogin: TImage;
    lblCustomer: TLabel;
    procedure imgBorderMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure imgLoginClick(Sender: TObject);
    procedure imgGuestClick(Sender: TObject);
    procedure lblCustomerMouseEnter(Sender: TObject);
    procedure lblCustomerMouseLeave(Sender: TObject);
    procedure lblCustomerClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses frmHome_u, frmHomeG_u;

{$R *.dfm}

procedure TfrmLogin.imgBorderMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const
  SC_DRAGMOVE = $F012;
begin
  if Button = mbLeft then
  begin
    ReleaseCapture;
    Perform(WM_SYSCOMMAND, SC_DRAGMOVE, 0);
  end;
end;

procedure TfrmLogin.imgGuestClick(Sender: TObject);
begin
  frmLogin.Hide;
  frmHomeG_u.frmHomeG.Show;
end;

procedure TfrmLogin.imgLoginClick(Sender: TObject);
begin
  frmLogin2.Show;
  frmLogin.Hide;
end;

procedure TfrmLogin.lblCustomerClick(Sender: TObject);
begin
 frmHomeG_u.frmHomeG.Show;
 frmLogin.Hide;
end;

procedure TfrmLogin.lblCustomerMouseEnter(Sender: TObject);
begin
lblCustomer.Font.Color := clHighlight;
end;

procedure TfrmLogin.lblCustomerMouseLeave(Sender: TObject);
begin
lblCustomer.Font.Color := clWhite;
end;

end.
