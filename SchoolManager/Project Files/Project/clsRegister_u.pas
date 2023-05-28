unit clsRegister_u;

interface

uses
Math, SysUtils;

type
  TItem = class(TObject)
    private
      fUser : string;
      fPass : string;
    public
      function genUser: string;
      function genPass: string;
  end;



implementation

{ TItem }


function TItem.genPass: string;
var
  sBase, sUpper, sPass : string;
  iRand, i : integer;
begin
  sBase := 'abcdefghijklmnopqrstuvwxyz';
  sUpper := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

  iRand := randomrange(1,999);
  randomize;

  sPass := '';

  for i := 1 to 4 do                                                               //algorithm to generate unique password
    begin
      sPass := sPass + copy(sUpper, Random(Length(sUpper)), 1);
    end;

  for i := 1 to 4 do
    begin
      sPass := sPass + copy(sBase, Random(Length(sBase)),1);
    end;

  result := sPass + IntToStr(iRand)

end;

function TItem.genUser: string;
var
 sUser : string;
 iRand : integer;
begin
iRand := randomrange(1,100);
randomize;
                                                                                     //algorithm to generate unique username
sUser := 'teacher' + IntToStr(iRand);
result := sUser;

end;

end.
