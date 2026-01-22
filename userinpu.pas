PROGRAM userinput;
const
  size = 7;
type
  gradelist = array[1..size] of integer;
var
  n, times, i, sum : INTEGER;
  grades : gradelist;
FUNCTION GetValue(low, high : integer) : INTEGER;
  VAR
    num : INTEGER;
  FUNCTION Valid(a, low, high : INTEGER) : Boolean;
    BEGIN
      Valid := (num >= low) AND (num <= high) { in between 0 and 50 }
    END;
  BEGIN
    REPEAT
    Write('Enter a number between ', low, 'and ', high);
    Read(num);
    IF NOT Valid(num) THEN Writeln('Try again');
    UNTIL Valid(num);
    GetValue := num;
  END;

BEGIN
{ Ask the user how many numbers they will enter }
{ Loop that many times }
{ Sum up all the numbers the user gives }
  times := GetValue(4, 7);
 { Write('How many numbers will you enter? ');}
  Read(times);
  sum := 0;
  FOR i := 1 TO times DO
  BEGIN
    grades[i] := GetValue (0, 100);
  END;
  for i := 1 to times do sum := sum + grades[i];
  writeln('The sum is ', sum);
  writeln('The average is ', (sum/times));
  Read(n);
END.