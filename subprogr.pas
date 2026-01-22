program subprogram;
var
   a, b, c : integer;

procedure write3(x: integer);
begin
     writeln('1st x - ', x);
     writeln('2nd x - ', x);
     writeln('3rd x - ', x);
end;

function domath(a,b : integer) : integer;
begin
     domath := 2*a-b;
end;

begin
     a := -2;
     b := 5*a;
     c := 3*b;
     writeln(a);

     a := abs(c);
     writeln(a);
     writeln(abs(b));
     write3(a);
     write3(99);
     b := domath(a, c);
     writeln(domath(5, b) +1);
     readln(a);
end.