program ageclassification;
var
  age : integer;
  class : char;

function ClassifyAge(age : integer) : char;
  begin
    if (age >= 0) and (age < 13) then ClassifyAge := 'c'
    else if (12 < age) and (age < 20) then ClassifyAge := 't';
    if (19 < age) and (age <= 120) then ClassifyAge := 'a';
  end;

procedure PrintAgeClass(class : char) ;
  begin
    if class = 'c' then writeln('child')
    else if class = 't' then writeln('teenager')
    else writeln('adult');
  end;

begin
  while age =! 999 do
  writeln('Enter your age.');
  readln(age);
  if (age < 0) or (age > 120) then writeln ('Enter a valid age.');
  class :=  ClassifyAge(age);
  PrintAgeClass(class);
  read(age);
end.