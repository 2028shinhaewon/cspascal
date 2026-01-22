program gradecalculator;
const
  maxsize = 20;
type
  list = array[1..maxsize] of integer;
var
  num, sum, i : integer;
  grades : list;
  avg : real;
function getavg (num, sum : integer) : real;
  begin
    getavg := sum/num;
  end;
begin
  sum := 0;
  writeln('How many assignments do you have?');
  readln(num);
  for i := 1 to num do
  begin
    writeln('Enter your grade for assigment #', i);
    readln(grades[i]);
    sum := sum + grades[i];
  end;
  for i := 1 to num do writeln('assignment #', i, ': ', grades[i]);
  avg := getavg(sum, num);
  writeln('Your average grade is ', avg);
  read(i);
end.