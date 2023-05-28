unit frmPlannerS_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Buttons, ComCtrls;

type
  TfrmPlannerS = class(TForm)
    imgBackground: TImage;
    btnBack: TButton;
    mcCalendar: TMonthCalendar;
    lblPlanner: TLabel;
    SpeedButton1: TSpeedButton;
    btnList: TButton;
    btnCreate: TButton;
    btnDelete: TButton;
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPlannerS: TfrmPlannerS;

implementation

uses
frmStudentHome_u;

{$R *.dfm}

procedure TfrmPlannerS.btnBackClick(Sender: TObject);
begin
frmPlannerS.Hide;
frmStudentHome_u.frmStudentHomee.Show;
end;

end.
