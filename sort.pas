program sort;
uses csp;
var
  mylist : list;
  i, j, temp : integer;
begin
  randomlist(mylist, 10);
  writeln('unsorted');
  printlist(mylist);
  bubblesort(mylist);
  writeln('sorted');
  printlist(mylist);
  readln;
end.