unit frmWelcome_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, pngimage, StdCtrls, Buttons, frmHome_u;

type
  TfrmWelcome = class(TForm)
    imgBackground: TImage;
    imgLogo: TImage;
    lblWelcome: TLabel;
    lblWelcome2: TLabel;
    btnEnter: TButton;
    btnClose: TBitBtn;
    procedure btnEnterClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWelcome: TfrmWelcome;

implementation

{$R *.dfm}

procedure TfrmWelcome.btnCloseClick(Sender: TObject);
begin
frmWelcome.Close;
end;

procedure TfrmWelcome.btnEnterClick(Sender: TObject);
begin
frmWelcome.Hide;                                                   // sends user to next form
frmHome_u.Form1.Show;
end;

end.
