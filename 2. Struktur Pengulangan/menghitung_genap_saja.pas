program menghitung_genap_saja;
uses crt;
     n, angka, bilangan, jumlah : integer; var
begin
    clrscr;
    write('Masukkan jumlah bilangan : '); readln(n);
    jumlah:=0;
    angka:=0;
    repeat
        begin
            write ('Masukkan bilangan ke-', angka+1,' : ');readln(bilangan)
            if bilangan mod 2 = 0 then
              begin
                  jumlah:=jumlah+bilangan;
                  angka:=angka+1;
              end
            else
              begin
                angka:=angka+1
              end
        end;
    until angka>=n;
    writeln('=:
    writeln('Jumlah bilangan genap =
readln;
                                   ====
                                      ',jumlah);
end.