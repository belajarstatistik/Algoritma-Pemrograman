program pascalcredit1;
const
    limit=1000000;
var
    jumlah:real;
begin
    write('Masukkan jumlah : ');readln(jumlah);
    if jumlah <= limit then
    writeln('Tagihan Anda diterima '); {Akhir pernyataan
    if}
    writeln('Tekan ENTER untuk keluar ...');
    readln;
end.