program listtest;
uses csp;

var
  mylist : list;
  i : integer;

begin
  writeln('length of list = ', length(mylist));
  append(mylist, 5);
  append(mylist, 10);
  append(mylist, -50);
  append(mylist, 16);
  writeln('length of list = ', length(mylist));
  printlist(mylist);
  writeln(' ');

  append(mylist, 100);
  append(mylist, -67);
  printlist(mylist);

  readln(i);
end.