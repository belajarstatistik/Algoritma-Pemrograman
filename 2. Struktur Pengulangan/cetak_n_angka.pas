program cetak_angka;
var n, angka : integer;
begin
 write('Masukksan jumlah angka : ');readln(n);
  angka:=1;
  repeat
   begin
      writeln(angka);
      angka:=angka+1;
    end;
  until angka>n;
  readln;
end.