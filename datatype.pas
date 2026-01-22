program datatypes;
uses crt;
var
  s : shortint;
  b : byte;
  c : char;
  i : integer;
  w : word;
begin
c := 'a';
writeln(c, ' = ', ord(c));
b := $FF;
writeln('b = ', b);
b := b + 1;
writeln('b = ', b);
s := 127;
writeln('s = ', s);
s := s + 1;
writeln('s = ', s);
i := $7FFF;
writeln('i = ', i);
writeln ('i = ', i + 1);
w := $FFFF;
w := w + 1;
writeln('w = ', w);

 {for i := 0 to 255 do
  begin
  writeln(i, ' = ', chr(i));
  c := readkey;
  end;}
readln(c);
end.