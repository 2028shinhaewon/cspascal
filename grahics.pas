program graphics;
uses graph;
var
   gd, gm : integer;
begin
gd := detect;
initgraph(gd, gm, 'C:\TPWDB\BGI');

setcolor(4);
line(200, 30, 100, 100);
line(200, 30, 300, 100);

setcolor(3);
rectangle(120, 120, 160, 160);
line(140, 120, 140, 160);
line(120, 140, 160, 140);

rectangle(240, 120, 280, 160);
line(260, 120, 260, 160);
line(240, 140, 280, 140);

rectangle(180, 120, 220, 160);
line(200, 120, 200, 160);
line(180, 140, 220, 140);

rectangle(120, 180, 160, 220);
line(140, 180, 140, 220);
line(120, 200, 160, 200);

rectangle(240, 180, 280, 220);
line(260, 180, 260, 220);
line(240, 200, 280, 200);

setcolor(6);
rectangle(100, 100, 300, 250);

setcolor(4);
rectangle(180, 180, 220, 250);

setcolor(3);
circle(200, 70, 20);

readln(gd);
closegraph;
end.
