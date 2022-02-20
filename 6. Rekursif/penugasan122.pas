program penugasan122;
uses crt;
var i,j,n: integer;
    lagi : char;
    function elemen (b, k : integer) : integer;
    begin
        If (k=1) or (k=b) then
            elemen:=1
        else
        begin
            elemen:=elemen (b-1, k-1)+elemen (b-1, k);
        end;
    end;
begin
clrscr;
    repeat
        write('Masukkan jumlah baris Segitiga Pascal : ');readln(n);
        if n=0 then
            begin
                writeln('Hasil tidak dapat diproses. Enter untuk kembali ke program');
                writeln;
            end
        else
            for i:=1 to n do
            begin
                gotoxy (40-3*i, whereY);
                for j:=1 TO i DO
                write(elemen (i,j):6);
                writeln;
            end;
        writeln;
        write('Apakah ingin membuat Segitiga Pascal lagi ? (Y/T)');readln(lagi);
    until (lagi='T') or (lagi='t');
    writeln('Terima kasih :)');
readkey;
end.