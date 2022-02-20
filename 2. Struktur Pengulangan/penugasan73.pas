Program penugasan73;
uses crt;
var
  i,j,k,n,pilihan, spasi:integer;
                        :char;
begin
    clrscr;
    writeln('
    writeln('1. Segitiga kosong tengah rata kiri');
    writeln('2. Segitiga kosong tengah rata kanan');
    writeln('3. Segitiga kosong tengah rata tengah');
    write('
    readln(pilihan);
case pilihan of
{Segitiga Kosong Tengah Rata Kiri}
    1: begin
                Silahkan Pilih Menu yang Anda inginkan ');
              Pilihan Anda = ');
           write('Masukkan nilai n
           write( 'Masukkan karakter yang diinginkan
           for i:=1 to n do
                                                       '); readln(n);
                                                      = '); readln(c);
              begin
                 for j:=1 to n do
                        if (j=1) or (i=n) or (j=i) then
                        write(c:2)
                        else
                        write(' ':2);
                writeln;
              end;
       end;
{Segitiga Kosong Tengah Rata Kanan}
    2: begin
                                                        '); readln(n); write('Masukkan nilai n
           write('Masukkan karakter yang diinginkan = ');readln(c);
           for i:=1 to n do
              begin
                 for j:=1 to n do
                        if (j=n) or (i=n) or (j=n-i+1) then
                        write(c:2)
                        else
                        write(' ':2);
                writeln;
              end;
       end;
{Segitiga Kosong Tengah Rata Tengah}
    3: begin
                                                       '); readln(n); write('Masukkan nilai n
           write('Masukkan karakter yang diinginkan = ');readln(c);
           for i := 1 to n do
               begin
                   for spasi := 1 to n-i+1 do
                   write (' ');
                   for j:= 1 to i do
                       if (j=1) or (j=i) or (i=n) then
                           write (c:2)
                       else
                       write (' ':2);
                   writeln;
           end
       end;
end;
readln;
end.