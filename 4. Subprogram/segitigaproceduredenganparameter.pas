Program segitigaproceduredenganparaneter;
uses crt;
label ulangi;
var
  1,j,k,n,pilihan:integer;
  c, coba
function hasil(c:char):char;
                 :char;
        begin
                Mrite(c:2);
        end;
begin
    clrscr;
    writeln(
    writeln('1. Segitiga rata kiri');
    writeln('2. Segitiga rata kanan');
    writeln('3. Segitiga rata tengah");
ulangi :
    write(
    readin(pilihan);
case pilihan of
   1: begin
                silahkan Pilih Menu yang Anda inginkan ');
              Pilihan Anda - );
           urite("Masukkan karakter yang diinginkan - );readin(c);
           Mrite('Masukkan lebar
           for i:-1 to n do
             begin
                 for j:-1 to i do
                hasil(c);
                writeln;
              end;
                                                    - ');readin(n);
       end;
    2: begin
           urite("Masukkan karakter yang diinginkan - );readin(c);
           Mrite('Masukkan lebar - );readin(n);
           for i:-1 to n do
              begin
                 for j:-1 to n do
                   if (jc-n-i) then
                      write(:2)
                   else hasil(c);
                writeln;
              end;
       end;
   3: begin
           urite('Masukkan karakter yang diinginkan - );readin(c);
           Mrite('Masukkan lebar
           for i:-1 to n do
                                                    - );readin(n);
              begin
                 for j:-n downto i do
                  write( );
                 for k:-1 to i do
                    hasil(c);
                writeln;
              end;
       end;
end;
       write('Apakah ingin mencoba lagi ? (Y/T) - );readin(coba);
       if (coba-'T') or (coba-'t') then
                writeln('Terima kasih :)')
        else
                goto ulangi;
readln;
end.