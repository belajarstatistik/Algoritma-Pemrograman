Program segitigapenuh;
uses crt;
var
  i,j,k,n,pilihan:integer;
               :char;
begin
    clrscr;
    writeln('
    writeln('1. Segitiga rata kiri');
    writeln('2. Segitiga rata kanan');
    writeln('3. Segitiga rata tengah');
    write(' Pilihan Anda
    readln(pilihan);
case pilihan of
{Segitiga Rata Kiri}
    1: begin
                Silahkan Pilih Menu yang Anda inginkan ');
                              ');
           write('Masukkan karakter yang diinginkan = ');readln(c);
           write('Masukkan lebar
           for i:=1 ton do
                                                       '); readln(n);
              begin
                 for j:=1 to i do
                 write(c:2);
                 writeln;
              end;
       end;
{Segitiga Rata Kanan}
    2: begin
           write('Masukkan karakter yang diinginkan = ');readln(c);
           write('Masukkan lebar = '); readln(n);
           for i:=1 to n do
              begin
                 for j:=1 to n do
                    if (j<=n-i+1) then
                       write(' ':2)
                    else write(c:2);
                 writeln;
              end;
       end;
{Segitiga Rata Kanan}
    3: begin
           write('Masukkan karakter yang diinginkan = ');readln(c);
           write('Masukkan lebar
           for i:=1 to n do
                                                      = '); readln(n);
              begin
                 for j:=n downto i do
                    write(' ');
                 for k:=1 to i do
                    write(c:2);
                 writeln;
              end;
       end;
end;
readln;
end.