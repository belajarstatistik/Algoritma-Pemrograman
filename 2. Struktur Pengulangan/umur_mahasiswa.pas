program umur_mahasiswa;
uses crt;
var n,urut,umur, umur17, umur18, umur19, umur20, selain : integer;
begin
    clrscr;
    write('masukkan jumlah mahasiswa : '); readln(n);
    urut:=1;
    umur17:=0;
    umur18:=0;
    umur19:=0;
    umur20:=0;
    selain:=0;
    while urut <= n do
    begin
        write('Umur mahasiswa ke-', urut, : '); readln(umur);
        if umur mod 17 = 0 then
         begin
            umur17:= umur17 + 1;
         end
        else if umur mod 18= 0 then
         begin
            umur18:= umur18 + 1;
         end
        else if umur mod 19 = 0 then
         begin
            umur19:= umur19 + 1;
         end
        else if umur mod 20 = 0 then
         begin
            umur20:= umur20 + 1;
         end
        else
         begin
            selain:= selain + 1;
         end;
    urut:= urut + 1;
    end;

    writeln('jumlah mahasiswa berusia 17 tahun : ',umur17);
    writeln('jumlah mahasiswa berusia 18 tahun : ',umur18);
    writeln('jumlah mahasiswa berusia 19 tahun : ',umur19);
    writeln('jumlah mahasiswa berusia 20 tahun : ',umur20);
    writeln('jumlah mahasiswa berusia selain itu : ',selain);
    readln;
end.