Program MyClass;
TYPE
           (A, B,C,D,E,F); Grades =
  PassMark = A..D;
VAR
  Pass : PassMark;
Begin
  For Pass := A to D do
  Case Pass of
A : writeln ('Excellent');
  B : writeln ('Very Good');
  C : writeln ('Good');
D : writeln ('Pass');
  End;
End.