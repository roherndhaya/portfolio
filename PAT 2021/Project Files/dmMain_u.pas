unit dmMain_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmMain = class(TDataModule)
    srcBranch: TDataSource;
    tblBranch: TADOTable;
    ADOConnection1: TADOConnection;
    tblContact: TADOTable;
    srcContact: TDataSource;
    tblMenu: TADOTable;
    srcMenu: TDataSource;
    srcHist: TDataSource;
    tblHist: TADOTable;
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
