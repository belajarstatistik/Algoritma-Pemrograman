program transfer1;
uses crt;
procedure tukar(x,y:integer);
var z:integer;
begin
    z:=x; x:=y; y:=z;
end;
var a,b:integer;
begin
    clrscr;
    a:=2; b:=9;
   tukar (a, b);
    writeln('a = ',a,' b = ',b);
    readln;
end.