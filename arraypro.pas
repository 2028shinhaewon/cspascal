program averageweight;
const
  maxsize = 20;
type
  list = array[1..maxsize] of real;
var
  weights : list;
  teamsize, i : integer;
  average, sum : real;
begin
  sum := 0;
  writeln('How many players are on the team?');
  readln(teamsize);
  for i := 1 to teamsize do
    begin
    writeln('Enter the weight of player #', i);
    readln(weights[i]);
    sum := sum + weights[i];
    end;
  for i := 1 to teamsize do writeln('player #', i, ': ', weights[i]);
  average := sum/teamsize;
  writeln('The average weight is ', average);

  readln(i);
end.