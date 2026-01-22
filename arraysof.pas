program softballheight;
const
  maxteam = 22;
type
  list = array[1..maxteam] of integer;
var
  heights : list;
  teamnum, sum, i : integer;
  average : real;
begin
  sum := 0;
  writeln('How many players are on the team?');
  readln(teamnum);
  for i := 1 to teamnum do
  begin
    writeln('Enter the height of player #', i);
    readln(heights[i]);
    sum := sum + heights[i];
  end;
  for i := 1 to teamnum do writeln('player #', i, ': ', heights[i]);
  average := sum / teamnum;
  writeln('The average is ', average);
  read(i);
end.
