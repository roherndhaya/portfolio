unit frmCheckout_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls, StdCtrls, ComCtrls, frmLogin_u, math, dmMain_u, frmMenu2_u;

type
  TfrmCheckout = class(TForm)
    imgBackground: TImage;
    redOut: TRichEdit;
    btnPay: TButton;
    Button1: TButton;
    procedure btnPayClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheckout: TfrmCheckout;

implementation


{$R *.dfm}

procedure TfrmCheckout.btnPayClick(Sender: TObject);
var
iRand : integer;
begin
  iRand := random(10000);
  messageDlg('Payment Successful' + #13 + 'Reciept saved to text file', mtInformation, [mbOk], 0);
  redOut.Lines.SaveToFile('Receipt' + IntToStr(iRand)+ '.txt');
  frmLogin_u.frmLogin.Close;

  with dmMain_u.dmMain do
  begin
    tblHist.insert;
    tblHist['Date'] := date;
    tblHist['Amount'] := rTotal;
    tblHist.Post;
  end;
end;

procedure TfrmCheckout.Button1Click(Sender: TObject);
begin
  frmMenu2_u.frmMenu2.Show;
  frmCheckout.Hide;
end;

end.
