program angka;
uses crt;
var i,j,n:integer;
begin
    clrscr;
    write('Masukkan jumlah baris = ');
    readln(n);
    For i:= 1 to n do
    Begin
     If i mod 2<>0 then
         begin
             For j:= 0 to 9 do
             Write(j:1);
         end
       Else
         begin
             For j:= 9 downto 0 do
             Write (j:1);
         end;
    Writeln;
End;
readln;
end.