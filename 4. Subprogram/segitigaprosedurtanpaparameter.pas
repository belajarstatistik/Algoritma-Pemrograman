Program segitigaprosedurtanpaparaneter;
uses crt;
label ulangi;
var
  i,j,k,n,pilihan:integer;
                 :char; c, coba
procedure hasil;
        begin
                urite(c:2);
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
           Mrite("Masukkan karakter yang diinginkan - );readin(c);
           Mrite('Masukkan lebar
           for i:-1 to n do
                                                    - );readin(n);
              begin
                 for j:-1 toi do
                hasil;
                writeln;
              end;
       end;
    2: begin
           Mrite("Masukkan karakter yang diinginkan - );readin(c);
           Mrite('Masukkan lebar - );readin(n);
           for i:-1 to n do
              begin
                for j:-1 to n do
                    if (jc-n-i+1) then
                      write(' :2)
                    else hasil;
                writeln;
              end;
       end;
   3: begin
           Mrite("Masukkan karakter yang diinginkan - );readin(c);
           Mrite('Masukkan lebar
           for i:-1 ton do
                                                     - ');readin(n);
              begin
                for j:-n downto i do
                   write( ');
                 for k:-1 to i do
                    hasil;
                writeln;
              end;
       end;
end:
       write('Apakah ingin mencoba lagi ? (Y/T) - ); readin(coba);
       if (coba-'T) or (coba-'t') then
                Mriteln('ierima kasih :)')
        else
                goto ulangi;
readin;
end.