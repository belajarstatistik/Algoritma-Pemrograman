program penugasan121;
uses crt;
var n:integer;
    lagi:char;
    procedure biner (a:integer);
    begin
       if ((a mod 2 = 0) and (a<>0)) then begin
            biner(a div 2);
            write('0');
        end
        else if (a<>0) then begin
            biner (a div 2);
            write('1');
        end;
    end;
    begin
        repeat
            clrscr;
            writeln('Konversi Nilai Desimal Ke Biner Dengan Rekursif');
            writeln;
            write ('Masukkan bilangan bulat : ');readln(n);
            write ('Hasil konversi ke biner : '); biner(n);
            writeln;
            write ('Apakah ingin memerikan konversi untuk bilangan lainnya? = ');readln(lagi);
        until (lagi='T') or (lagi='t');
        writeln('Terima kasih :)');
    end.