Program DisplayMonths;
uses crt;
CONST
  MaxMonth 12;
TYPE
  Month = 1..MaxMonth;
VAR
m : Month;
Begin
  For m := 1 to MaxMonth do
  Case m of
 1: writeln ('January');
  2 : writeln ('February');
3 : writeln ('March');
  12: writeln ('December');
  End;
End.