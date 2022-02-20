Progran segitigafungsidenganparameter;
uses crt;
label ulangi;
var
  1,j,k,n,pilihan:integer;
 c, coba
function hasil1(c:char):char;
                :char;
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
               silahkan Pilih Menu yang Anda inginkan '):
             Pilihan Anda - );
          Mrite("Masukkan karakter yang diinginkan - );readin(c);
          Mrite('Masukkan lebar
           for i:-1 to n do
             begin
                for j:-1 to i do
                hasil(c);
                writeln;
                                                     - ');readin(n);
             end;
      end;
   2: begin
          Mrite('Masukkan karakter yang diinginkan - );readin(c);
          urite('Masukkan lebar - ');readin(n);
           for i:-1 to n do
             begin
                for j:-1 to n do
                   if (jean-1) then
                      write(:2)
                   else hasil(e);
                writeln;
             end;
      end;
    3: begin
          Mrite("Masukkan karakter yang diinginkan - 2;readin(c);
                                                    - Sireadin(n);
           for i:-1 to n do
             begin
                for j:-n downto i do
                   write( ');
                 for k:-1 to i do
                   hasil(c);
                writeln;
             end;
      end;
end:
       write('Apakah ingin mencoba lagi ? (Y/T) - );readin(coba);
       if (coba-'T') or (coba-'t') then
               Mriteln('Terima kasih :)')
       else
               goto ulangi;
readin;
end.