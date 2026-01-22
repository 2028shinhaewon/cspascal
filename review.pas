program review;
type
  fraction = record
               num : integer;
               den : integer;
             end;
var
  f1, f2 : fraction;
function frac2string(f : fraction) : string;
var
   s1, s2 : string;
begin
  str(f.num, s1);
  str(f.den, s2);
  frac2string := s1 + '/' + s2;
end;

begin
  f1.num := 2;
  f1.den := 3;
  f2.num := 4;
  f2.den := 5;
  writeln(frac2string(f1));
  writeln(frac2string(f2));
  writeln(f1.num * f2.num, '/', f1.den * f2.den);
  writeln(f1.num * f2.den + f2.num * f1.den);
  readln;
end.