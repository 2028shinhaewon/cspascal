program randarray(output);
const
  size = 10;
type
  list = array[1..size] of integer;
var
  arr : list;
  i , sum : integer;
begin
  randomize;
  for i := 1 to size do arr[i] := random(100);
  for i := 1 to size do writeln(arr[i]);
  sum := 0;
  for i := 1 to size do sum := sum + arr[i];
  writeln('the sum is ', sum);
  read(arr[i]);
end.