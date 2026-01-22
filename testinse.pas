PROGRAM testlist;
USES csp;
VAR
  myList : List;
BEGIN
  Append(myList, 1);
  Append(myList, 2);
  Append(myList, 3);
  Append(myList, 4);
 { Insert(myList, 2, -3); }
  Remove(myList, 8);
  PrintList(myList);
  writeln(sum(mylist));
  writeln(average(mylist));
  readln;
END.