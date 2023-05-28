unit dmMain_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmMain = class(TDataModule)
    conMain: TADOConnection;
    adoUsers: TADOTable;
    adoNotices: TADOTable;
    srcNotices: TDataSource;
    adoUpcoming: TADOTable;
    srcAssess: TDataSource;
    qryAssess: TADOQuery;
    srcAssess2: TDataSource;
    adoTextbooks: TADOTable;
    srcTextbooks: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

{$R *.dfm}

end.
