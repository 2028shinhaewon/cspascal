program probability;
var
  i, p, r, b, y, times : integer;
begin
 randomize;
 r := 0;
 b := 0;
 y := 0;

 writeln('how many times?');
 readln(times);

 for i := 1 to times do
 begin
   p := random(10);
   if p >= 8 then
   begin
     writeln('red');
     r := r + 1;
   end
   else if p >= 3 then
   begin
     writeln('blue');
     b := b + 1;
   end
   else
   begin
     writeln('yellow');
     y := y + 1;
   end;
 end;
 writeln(r/times*100:3:2, '% red, ', b/times*100:3:2, '% blue, ', y/times*100:3:2, '% yellow');
 readln;
end.