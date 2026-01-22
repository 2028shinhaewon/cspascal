program stats;
uses csp;
var
  mylist : list;
  n, m : integer;
  med : real;
  b : char;
begin
  repeat
  begin
    writeln('How many elements in the list?');
    readln(n);
    if (n <= 0) or (n > size) then writeln('Enter a valid number');
  end
  until (n > 0) and (n <= size);
  randomlist(mylist, n);

  write('sort (b(bubblesort) / s(selection sort) / i(insertionsort) / n(no)): ');
  readln(b);
  if b = 'b' then bubblesort(mylist);
  if b = 's' then selectionsort(mylist);
  if b = 'i' then insertionsort(mylist);
  printlist(mylist);

  writeln('increasing order: ', isincreasing(mylist));
  writeln('sum = ', sum(mylist));
  writeln('min = ', mylist[1]);
  writeln('max = ', mylist[n]);
  writeln('avg = ', average(mylist):3:2);
  writeln('med = ', median(mylist):3:2);

  write('number search: ');
  readln(m);
  writeln('binary search : ', binarysearch(mylist, m));
  writeln('linear search : ', linearsearch(mylist, m));

  readln;
end.