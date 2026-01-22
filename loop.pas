program loops;
var
  i : integer;
  c : char;
begin
write('type number ');
readln(i);
while i <> 999 do
begin
  write('type number ');
  readln(i);
end;

writeln('out of loop');
readln(i);
end.