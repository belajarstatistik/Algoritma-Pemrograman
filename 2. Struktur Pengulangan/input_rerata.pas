program input_rerata;
uses crt;
        n, angka, bilangan, jumlah :integer;
                                 :real;
var
        rerata
begin
        clrscr;
        jumlah:=0;
        angka:=0;
        write('Masukkan jumlah bilangan N = ');readln(n);
        writeln('Inputkan data integer ');
        repeat
                begin
                   write('Masukkan bilangan ke-', angka+1,' : ');readln(bilangan);
                   jumlah:=jumlah+bilangan;
                   angka:=angka+1;
                end;
        until angka>=n;
        rerata:=jumlah/n;
        writeln('=====
        writeln('Rata-rata bilangan = ',rerata:0:2);
        writeln('
                                        ======');
                                            ==');
readln;
end.