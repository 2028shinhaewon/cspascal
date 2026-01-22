program cspreview;
const
  size = 20;
type
  list = array[0..size] of integer;
var
  mylist1, mylist2 : list;
  i, j, n : integer;
begin
  randomize;
  for i := 1 to size do
  begin
    mylist1[i] := random(50);
    writeln('#', i, ': ', mylist1[i]);
  end;
  readln(j);
  n := 0;
  for i := 1 to size do
    if mylist1[i] = j then
    n := n + 1;
  writeln('count of ', j, ' : ', n);
  readln;
end.