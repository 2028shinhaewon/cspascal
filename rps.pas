program idk;
var
  num, i : integer;
  c, a : char;
begin
  randomize;
  writeln('how many?');
  readln(num);
  for i := 1 to num do
  begin
    writeln('r/p/c');
    readln(a);
    if random(4) = 1 then c := 's';
    if random(4) = 1 then c := 'r';
    if random(4) = 1 then c := 'p';
    writeln(c);
    if a = c then writeln('t')
    else if (a = 'r' and c = 'p'){ or (a = 'p' and c = 's') or (a = 's' and c = 'r') }
    then writeln('l')
    else writeln('w');
  end;
  readln;
end.