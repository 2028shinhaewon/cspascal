program assignment;
var
   x, y, z : integer;
begin
   x := 10;
   y := 67;
   z := 42;
   writeln('x is equal to ', x);
   writeln('y is equal to ', y);
   writeln('z is equal to ', z);
   writeln('the sum of x, y, and z is ', x+y+z);

   x := 2*y;
   y := z-x;
   z := 3*z;
   writeln('x is equal to ', x);
   writeln('y is equal to ', y);
   writeln('z is equal to ', z);

   readln(x);
end.