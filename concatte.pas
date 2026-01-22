program testconcat;
uses csp;
var
  s : string;
begin
  IF substring('hello', 3, 10) = 'llo' THEN
  writeln('ss pass')
  else writeln('ss fail');

  if concat('Hello ', 'world') = 'Hello world' then
  writeln('concat pass')
  else
  writeln('concat fail');

  if prefix('hello', 4) = 'hell' then
  writeln('prefix pass')
  else
  writeln('prefix fail');

  if substring('hello', 2, 3) = 'ell' then
  writeln('substring pass')
  else
  writeln('substring fail');

  if reverse('hello') = 'olleh' then
  writeln('reverse pass')
  else
  writeln('reverse fail');

  if len('hello') = 5 then
  writeln('len pass')
  else
  writeln('len fail');

 {if pow(3, 2) = 9 then
  writeln('pow pass')
  else
  writeln('pow fail');}

  if substring('hello', 3, 10) = 'llo' then
  writeln('substring pass')
  else writeln('substring fail');

  if substring('hello', 7, 2) = '' then
  writeln('substring pass')
  else writeln('substring fail');

  if prefix('hello', 6) = 'hello' then writeln('prefix pass')
  else writeln('prefix fail');


  readln(s);
end.
