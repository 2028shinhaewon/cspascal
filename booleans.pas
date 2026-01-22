program bool;
uses crt;
var
  a, b : integer;
  p, q : boolean;
  c : char;
begin
  p := 2 + 2 = 5;
  q := true;
  writeln(p);
  if p or q then writeln('if')
  else writeln('else');

  {readln(a);}
  a := 15;
  if (a >= 13) and (a <= 19) then writeln('teenager')
  else if a < 13 then writeln('child')
  else writeln('adult');
  a := 1 ;
  repeat
  if keypressed then
  begin
    c := readkey;
    clrscr;
    a := 1;
  end;
    writeln('a = ', a);
    a := a + 1;
  until c = 'q';
  writeln('out of loop');


  readln(a);
end.