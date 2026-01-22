PROGRAM circles;  { Draw 10 circles with random center and random radius on screen }
USES graph;
const
  times = 10000;
VAR
  gm, gd, i, a, b, c, d : INTEGER;
BEGIN
  gd := Detect;
  InitGraph(gd, gm, 'C:\TPWDB\BGI');
  randomize;

  for i := 1 to times do
  begin
    a := random(640);
    b := random(480);
    c := random(10);
    d := random(16);
    if a+c > 640 or a-c < 0 then a := a-(a-c);
    if b+c > 480 or b-c < 0 then b := b-(b-c);
    setcolor(random(d));
    circle(a, b, c);
  end;

  read(i);
  CloseGraph;
END.
