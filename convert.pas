program convert;
var
  i : integer;
  c : char;
  s : string;

function isdigit(c : char) : boolean;
begin
  if (c >= '0') and (c <= '9') then isdigit := true
  else isdigit := false;
end;

function ctoi(c : char) : integer;
begin
  if isdigit(c) then ctoi:= ord(c) - 48
  else ctoi := -1;
end;

function atoi(s : string) : integer;
var
  i, val : integer;
begin
  i := 1;
  while not (isdigit(s[i])) and (i <= length(s)) do
    i := i + 1;
  val := 0;
  while (isdigit(s[i])) and (i <= length(s)) do
  begin
    val := ctoi(s[i]) + 10 * val;
    i := i + 1;
  end;
  atoi := val;
end;

function itoa(val : integer) : string;
var
  s : string;
begin
  s := '';
  repeat
    s := chr(val mod 10 + 48) + s;
    val := val div 10 ;
  until val = 0;
  itoa := s;
end;

begin
  writeln(itoa(67));
  writeln(itoa(1234));
  writeln(atoi('67'));
  writeln(atoi('abc123'));
  writeln(atoi('abc456ghi'));
  readln;
end.