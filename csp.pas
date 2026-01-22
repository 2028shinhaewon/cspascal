unit csp;

interface

{list data type}
const
  size = 255;
type
  list = array[0..size] of integer;

{list functions/procedures}
procedure swap(var a, b : integer);
function binarysearch(alist : list; value : integer) : boolean;
function linearsearch(alist : list; value : integer) : boolean;
function isincreasing(alist : list) : boolean;
procedure bubblesort(var alist : list);
procedure selectionsort(var alist : list);
procedure insertionsort(var alist : list);
procedure printlist(alist : list);
function length(alist : list) : integer;
procedure append(var alist : list; value : integer);
procedure insert(var alist : list; i, value: integer);
procedure remove(var alist : list; i : integer);
function sum(alist : list) : integer;
function average(alist : list) : real;
function median(alist : list) : real;
procedure randomlist(var alist : list; n : integer);
function minlist(alist : list) : integer;

{string functions}
function concat(s1, s2 : string) : string;
function prefix(s : string; m : integer) : string;
function substring(s : string; start, n : integer) : string;
function reverse(s : string) : string;
function len(s : string) : integer;
{function pow(n, p : integer) : integer;}

implementation

{list functions/procedures}
procedure swap(var a, b : integer);
var
  temp : integer;
begin
  temp := a;
  a := b;
  b := temp;
end;

function binarysearch(alist : list; value : integer) : boolean;
var
  l, r, mid, count : integer;
  found : boolean;
begin
  found := false;
  l := 1;
  r := length(alist);
  count := 0;
  repeat
    count := count + 1;
    mid := (l + r) div 2;
    if alist[mid] = value then
    begin
      found := true;
      break;
    end
    else if alist[mid] < value then l := mid + 1
    else r := mid - 1;
  until l > r;
  writeln('number of searches = ', count);
  binarysearch := found;
end;

function linearsearch(alist : list; value : integer) : boolean;
var
  i , count : integer;
  found : boolean;
begin
  found := false;
  count := 0;
  for i := 1 to length(alist) do
  begin
    count := count + 1;
    if alist[i] = value then
    begin
      found := true;
      break;
    end;
  end;
  writeln('number of searches = ', count);
  linearsearch := found;
end;

function isincreasing(alist : list) : boolean;
var
  i : integer;
  stillincreasing : boolean;
begin
  isincreasing := true;
  stillincreasing := false;
  for i := 1 to length(alist) - 1 do
  begin
    if alist[i + 1] >= alist[i] then stillincreasing := true
    else isincreasing := false;
  end;
end;

procedure bubblesort(var alist : list);
var
  i, j, temp : integer;
begin
  for i := 1 to length(alist) - 1 do
    for j := 1 to length(alist) - i do
      if alist[j] > alist [j + 1]
      then swap(alist[j], alist[j + 1]);
end;

procedure selectionsort(var alist : list);
var
  i, j, min : integer;
begin
  for i := 1 to length(alist) - 1 do
  begin
    min := i;
    for j := i + 1 to length(alist) do
    begin
      if alist[j] < alist[min] then min := j;
    end;
    swap(alist[i], alist[min]);
    j := i + 1;
  end;
end;

procedure insertionsort(var alist : list);
var
  i, j : integer;
begin
  for i := 2 to length(alist) do
    for j := i downto 2 do
      if alist[j] < alist[j - 1] then
        swap(alist[j], alist[j - 1])
      else
        break;
end;

procedure printlist(alist : list);
var
  i : integer;
begin
  for i := 1 to length(alist) do
  writeln('#', i, ': ', alist[i]);
end;

function length(alist : list) : integer;
begin
  length := alist[0];
end;

procedure append(var alist : list; value : integer);
begin
  alist[0] := length(alist) + 1;
  alist[length(alist)] := value;
end;

procedure insert(var alist : list; i, value: integer);
var
  a : integer;
begin
  if i >= 1 then
  begin
  if i >= length(alist) + 1 then append(alist, value)
  else
    begin
      alist[0] := length(alist) + 1;
        for a := length(alist) downto i do
          alist[a] := alist[a - 1];
      alist[i] := value;
    end;
  end;
end;

procedure remove(var alist : list; i : integer);
var
  a : integer;
begin
  if (length(alist) > i) and (i >= 1) then
  begin
    for a := i to length(alist) do alist[a] := alist[a + 1];
    alist[0] := length(alist) - 1;
  end;
end;

function sum(alist : list) : integer;
var
  i, total : integer;
begin
  total := 0;
  for i := 1 to length(alist) do total := total + (alist[i]);
  sum := total;
end;

function average(alist : list) : real;
begin
  average := sum(alist) / length(alist);
end;

function median(alist : list) : real;
begin
  if length(alist) mod 2 = 0 then
  median := (alist[length(alist) div 2] + alist[length(alist) div 2 + 1]) / 2
  else median := alist[length(alist) div 2 + 1];
end;

procedure randomlist(var alist : list; n : integer);
var
  i : integer;
begin
  randomize;
  for i := 1 to n do append(alist, random(100));
end;

function minlist(alist : list) : integer;
var
  min, i : integer;
begin
  min := alist[1];
  for i := 2 to length(alist) do
    if alist[i] < min then min := alist[i];
  minlist := min;
end;

{string functions}
function concat (s1, s2 : string) : string;
var
  temps : string;
  i : integer;
begin
  temps[0] := chr(len(s1)+ len(s2));
  for i := 1 to len(s1) do
  temps[i] := s1[i];
  for i := 1 to len(s2) do
  temps[(i + len(s1))] := s2[i];
  concat := temps;
end;

function prefix(s : string; m : integer) : string;
var
  temp : string;
  i : integer;
begin
  if m > ord(s[0]) then
    prefix := s
  else
  begin
    temp := '';
    for i := 1 to m do
      temp := temp + s[i];
    prefix := temp;
  end
end;

function substring(s : string; start, n : integer) : string;
var
  temp: string;
  i, a : integer;
begin
 if start + n <= len(s) then
    begin
      temp[0] := chr(n);
      for i := 1 to n do
        temp[i] := s[(start + i - 1)];
      substring := temp;
    end
  else if start > len(s) then substring := ''
  else
    begin
      temp[0] := chr(len(s) - start + 1);
      for a := 1 to len(temp) do
        temp[a] := s[start + a - 1];
      substring := temp;
   end;
end;

function reverse(s : string) : string;
var
  temps : string;
  i : integer;
begin
  temps[0]:= s[0];
  for i := 1 to len(s) do
  begin
    temps[i] := s[len(s)-i+1];
  end;
  reverse := temps;
end;

function len(s : string) : integer;
begin
  len := ord(s[0]);
end;

{function pow(n, p : integer) : integer;
var
  prod, i : integer;
begin
  if p < 0 then prod := 0
  else
  begin
    prod := 1;
    for i := 1 to p do
    prod := prod*n;
  end;
  pow := prod;
end;}

end.
