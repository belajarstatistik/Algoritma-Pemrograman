Program segitigafungsitanpaparameter;
uses crt;
label ulangi;
var
  i,j,k,n,pilihan:integer;
 c, coba
function hasil:char;
                  :char;
        begin
                write(c:2);
        end;
begin
    clrscr;
    writeln('
    writeln('1. Segitiga rata kiri');
    writeln('2. Segitiga rata kanan');
    writeln('3. Segitiga rata tengah');
ulangi :
    write('
    readln(pilihan);
case pilihan of
    1: begin
                Silahkan Pilih Menu yang Anda inginkan ');
              Pilihan Anda ');
           write('Masukkan karakter yang diinginkan = ');readln(c);
           write('Masukkan lebar
           for i:=1 to n do
              begin
                 for j:=1 to i do
                 hasil;
                 writeln;
              end;
                                                      = ');readln(n);
       end;
    2: begin
           write('Masukkan karakter yang diinginkan = ');readln(c);
           write('Masukkan lebar = ');readln(n);
           for i:=1 to n do
              begin
                 for j:=1 ton do
                    if (j<=n-i) then
                       write ('':2)
                    else hasil;
                 writeln;
              end;
       end;
    3: begin
          write('Masukkan karakter yang diinginkan
          write('Masukkan lebar
          for i:=1 ton do
              begin
                                                                        '); readln(c);
                                                                        = ');readln(n);
                   for j:=n downto i do
                       write(' ');
                   for k:=1 to i do
                       hasil;
                   writeln;
              end;
    end;
end;
     write('Apakah ingin mencoba lagi ? (Y/T) = ');readln(coba);
     if (coba='T') or (coba='t') then
                 writeln('Terima kasih :)')
     else
                 goto ulangi;
readln;
end. 