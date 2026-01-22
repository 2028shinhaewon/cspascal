Program Graphics;
uses Graph, Crt;
type
  triangle = array[1..4] of integer;
var
  Gd, Gm: Integer;
  c: Char;
  x, y, i: Integer;
  mycolor, numcolor : word;
  mytri : triangle;
begin
  Gd := Detect;
  InitGraph(Gd, Gm, 'C:\DOS\TP7\BGI');
  SetColor(Red);
  x := 0;
  y := 0;
  numcolor := getmaxcolor;
  randomize;
  repeat
    putpixel(random(640), random(480), random(numcolor));
  until keypressed;

  repeat
    for i := 1 to 3 do
    begin
      mytri[i].X := random(640);
      mytri[i].Y := random(480);
    end;
    mycolor := random(numcolor);
    setcolor(mycolor);
    mytri[4] := mytri[1];
    setfillstyle(1, mycolor);
    fillpoly(4, mytri);
   { drawpoly(4, mytri);}
  until keypressed;

  Repeat
    if KeyPressed then
    begin
      c := ReadKey;
      ClearDevice;
      case c of
      'w':y := y - 5;
      's':y := y + 5;
      'a':x := x - 5;
      'd':x := x + 5;
      end;
      Circle(x + 150, y + 150, 50);
    end;
  Until c = 'q';
  CloseGraph;
end.
