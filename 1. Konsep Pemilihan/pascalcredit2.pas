program pascalcredit2;
const
    limit=1000000;
var
    jumlah:real;
begin
    write('Masukkan jumlah : ');readln(jumlah);
    if jumlah<=1imit then
    begin
        writeln('Tagihan Anda diterima.');
    end;
    if jumlah>limit then
    begin
        writeln('Jumlah tersebut melebihi batas limit kredit Anda. ');
    end;
    writeln('Terima kasih telah menggunakan kartu kredit Anda');
    writeln('Tekan ENTER untuk keluar');
    readln;
end.