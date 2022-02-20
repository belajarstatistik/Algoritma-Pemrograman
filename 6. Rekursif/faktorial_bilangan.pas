Program faktorial_bilangan;
Uses crt;
Function Faktorial(x:integer) :integer;
Var i, result:integer;
Begin
  Result:=1;
  For i:=x downto 1 do
    result:=result * i;
  Faktorial:=result;
End;
Var i: integer;
Begin
  Clrscr;
    i := Faktorial (5);
  Writeln(i);
  Readln;
End.