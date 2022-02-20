Progran fiktrl3;
uses crt;
var n,r.pilih
    lagi
                 :integer;
                 :char;
    function faktorial(x:integer):longint;
    begin
       if (x-0) or (x-1) then
            faktorial:-1
        else
            faktorial:-x*faktorial(x-1);
    end;
    function permutasi(n,r:integer):real;
   begin
        permutasi:-faktorial(n)/faktorial(n-r);
    end;
    function kombinasi(n,r:integer):real;
   begin
        kombinasi:-permutasi(n,r)*faktorial(r);
    end;
    procedure menu;
   begin
        writeln("Selamat datang di kalkulator fakperkom');
        writeln('1. Faktorial'):
        writeln('2. Pernutasi');
        writeln('3. Kombinasi");
        writeln('4. Keluar');
        гереat
            write("Masukkan pilihan anda (1/2/3/4) - ');readln(pilih);
            writeln();
            case pilih of
               1 : begin
                             writeln(
                            writeln( Perhitungan Faktorial ');
                             writeln(--
                             write("Masukkan nilai n- );readin(n);
                             writeln( "Nilai dari ',n,'! adalah -
                                                                   ,
                                                                     faktorial(n));
                         end;
                         begin
                             writeln(
                             writeln( Perhitungan Pernutasi ');
                             writeln(
                             writeln( "Masukkan nilai n dan r, dengan nor');
                                                           ----);
                             write("Nilai n - );readin(n);
                             write('Nilair-');readln(r);
                             writeln( "Nilai dari permutasi ',n, 'P',r,' adalah - ,permutasi(n,r):8:0);
                         begin
                         end;
                             writeln(
                             writeln(' Perhitungan Kombinasi );
                             writeln(---.
                             writeln( "Masukkan nilai n dan r, dengan nor');
                             write("Nilai n - ');readln(n);
                             write('Nilai r - );readln(r);
                             writeln( "Nilai dari korbinasi ',n,'c',r,' adalah - ,korbinasi(n,r):8:0);
                         end;
                         begin
                             writeln( "Apakah Anda yakin ingin keluar ? ');
                             writeln( Y untuk keluar atau tekan sombarang tombol untuk mengulang');
                             write("Pilihan Anda - );readin(lagi);
                         end;
                                                           --):
                                                              ');
            end;
        until (lagi-'Y') or (lagi-'y");
        writeln;
        writeln("Terina kasih :)');
    end:
begin
    clrscr;
    menu;
end.