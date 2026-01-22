program gradeclassification;
var
  grade : integer;
  letter : char;

function classifygrade(grade : integer) : char;
begin
  if (grade < 150) and (grade >= 90) then classifygrade := 'a'
  else if (grade >= 80) and (grade < 90) then classifygrade := 'b'
  else if (grade >= 70) and (grade < 80) then classifygrade := 'c'
  else if (grade >= 0) and (grade < 70) then classifygrade := 'f';
end;

procedure printletter(letter : char);
begin
  if letter = 'a' then writeln('A for Asian')
  else if letter = 'b' then writeln('Your grade is a B')
  else if letter = 'c' then writeln('Your grade is a C')
  else if letter = 'f' then writeln('You failed');
end;

begin
repeat
  writeln('Enter your grade.');
  readln(grade);
    if (grade < -1) or (grade > 150) then writeln('Enter a valid grade.');
  letter := classifygrade(grade);
  printletter(letter);
until (grade = -1);
read(grade);
end.