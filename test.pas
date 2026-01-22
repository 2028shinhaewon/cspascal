program testrandom;
uses csp;
var
  mylist : list;
  n : integer;
begin
  repeat
    writeln('how many in list?');
    readln(n);
    if (n <= 0) or (n > size) then
      writeln('your number should be between 1 and ', size);
  until (n > 0) and (n <= size);
  randomlist(mylist, n);
  printlist(mylist);
  writeln('minimum = ', minlist(mylist));
  readln;
end.