program menghitung_anak_ayam;
uses crt;
var ayam:integer;
begin
clrscr;
        write('Masukkan Jumlah Anak Ayam = '); readln(ayam);
        writeln('=====
        writeln('Anak Ayam turun ', ayam);
        writeln('
                                                             ====' );
                                                                =');
        while ayam>1 do
              begin
                   writeln('Anak Ayam turun ',ayam,', mati satu tinggal ',ayam-1);
                   ayam: =ayam-1;
              end;
        writeln('Anak Ayam turun 1, mati satu tinggal induknya.');
        writeln('= ====');
readln;
end.