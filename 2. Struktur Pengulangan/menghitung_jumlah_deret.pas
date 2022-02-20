program menghitung_jumlah_deret;
uses crt;
var angka,n,jumlah:integer;
begin
clrscr;
        write('Masukkan angka = ');readln(n);
        writeln('====:
        writeln('Menghitung deret angka 1 sampai dengan ',n);
        writeln('
                                                    =====');
                                                      ===');
        jumlah:=0;
        angka:=1;
        while angka<=n do
          begin
            writeln(angka);
            jumlah:=jumlah + angka;
            angka:=angka + 1;
          end;
        writeln('====:
          writeln ('Jumlah deret adalah = ',jumlah);
        writeln('
                                                    =====' );
                                                         ');
readln;
end.