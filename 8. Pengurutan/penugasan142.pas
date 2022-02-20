Program penugasan142;
uses crt;
type Daftar=record
        nim:string[9];
        nama:string[20];
        tugas:integer;
        uts:integer;
        uas:integer;
        praktikum:integer;
        na:real;
        grade:char;
    end;
    mhs=array[1..40]of Daftar;

var alpr:mhs;
    i,j,n,k,pilihprogram,pilihmax,pilihmin,pilihurut,pilihuts,pilihuas,pilihna,tkt,rombel:integer;
    lagiprogram,lagimenu,lagimax,lagimin,lagiurut,lagiuts,lagiuas,lagina:char;
    prod:string[2];
    x:string;

    function hitungnilai(tgs,uts,uas,prak:integer):real;
    begin
        hitungNilai:=(tgs*2+uts*3+uas*3+prak*2)/10;
    end;

    function konversigrade(nilai:real):char;
    var grade:char;
    begin
        case trunc(nilai) of
             0..19:grade:='E';
            20..39:grade:='D';
            40..59:grade:='C';
            60..79:grade:='B';
            80..100:grade:='A';
        end;
        konversigrade:=grade;
    end;

    procedure inputnilai(var list:mhs;var a:integer;var n:integer);
    begin
        write('Masukkan jumlah mahasiswa = ');readln(n);
        writeln;
        for i:=a+1 to a+n do
            with list[i] do
            begin
                writeln('Data Mahasiswa ke-',i);
                write('NIM       = ');readln(nim);
                write('Nama      = ');readln(nama);
                write('Tugas     = ');readln(tugas);
                write('UTS       = ');readln(uts);
                write('UAS       = ');readln(uas);
                write('Praktikum = ');readln(praktikum);
                na:=hitungnilai(tugas,uts,uas,praktikum);
                grade:=konversigrade(NA);
            end;
        a:=a+n;
    end;

    procedure tampildata(list:mhs;n:integer);
    var i,y:integer;
    begin
        clrscr;
        gotoxy(2,1);   write('Daftar Nilai Mahasiswa Kelas ',tkt,prod,rombel,' Politeknik Statistika STIS 2020/2021');
        gotoxy(1,3);  write('------------------------------------------------------------------------');
        gotoxy(2,4);  write('NO');
        gotoxy(8,4);  write('NIM');
        gotoxy(22,4); write('NAMA');
        gotoxy(40,4); write('TUGAS');
        gotoxy(48,4); write('UTS');
        gotoxy(55,4); write('UAS');
        gotoxy(61,4); write('NA');
        gotoxy(68,4); writeln('GRADE');
        gotoxy(1,5);Write('------------------------------------------------------------------------');
        y:=6;
        for i := 1 to n do
        begin
            with list[i] do
            begin
                gotoxy(2,y);write(i);
                gotoxy(8,y);write(nim);
                gotoxy(22,y);write(nama);
                gotoxy(40,y);write(tugas);
                gotoxy(48,y);write(uts);
                gotoxy(55,y);write(uas);
                gotoxy(61,y);write(na:0:2);
                gotoxy(68,y);writeln(grade);

            end;
            y:=y+1;
        end;
    end;

    function utsmax(var list:mhs;n:integer):integer;
    var i:integer;
    begin
        utsmax:=list[1].uts;
        for i:=2 to n do
            with list[i] do
                if uts > utsmax then utsmax:=uts;

        j:=1;
        while (j<=n) do
        begin
            with list[j] do
                begin
                    if (utsmax=uts) then break;
                end;
            j:=j+1;
        end;
        with list[j] do
        begin
            writeln('Mahasiswa dengan Nilai UTS tertinggi : ',nama);
            writeln('NIM             = ',nim);
            writeln('Nilai UTS       = ',uts);
            writeln('Nilai UAS       = ',uas);
            writeln('Nilai Akhir     = ',NA:0:2);
            writeln('Nilai Praktikum = ',praktikum);
        end;
    end;

    function uasmax(var list:mhs;n:integer):integer;
    var i:integer;
    begin
        uasmax:=list[1].uas;
        for i:=1 to n do
            with list[i] do
                if uas > uasmax then uasmax:=uas;

        j:=1;
        while (j<=n) do
        begin
            with list[j] do
                begin
                    if (uasmax=uas) then break;
                end;
            j:=j+1;
        end;
        with list[j] do
        begin
            writeln('Mahasiswa dengan Nilai UAS tertinggi : ',nama);
            writeln('NIM             = ',nim);
            writeln('Nilai UAS       = ',uas);
            writeln('Nilai UTS       = ',uts);
            writeln('Nilai Akhir     = ',NA:0:2);
            writeln('Nilai Praktikum = ',praktikum);
        end;
    end;

    function namax(var list:mhs;n:integer):real;
    var i:integer;
    begin
        namax:=list[1].na;
        for i:=1 to n do
            with list[i] do
                if na > namax then namax:=na;

        j:=1;
        while (j<=n) do
        begin
            with list[j] do
                begin
                    if (namax=na) then break;
                end;
            j:=j+1;
        end;
        with list[j] do
        begin
            writeln('Mahasiswa dengan Nilai Akhir tertinggi : ',nama);
            writeln('NIM             = ',nim);
            writeln('Nilai Akhir     = ',NA:0:2);
            writeln('Nilai UTS       = ',uts);
            writeln('Nilai UAS       = ',uas);
            writeln('Nilai Praktikum = ',praktikum);
        end;
    end;

    function utsmin(var list:mhs;n:integer):integer;
    var i:integer;
    begin
        utsmin:=list[1].uts;
        for i:=1 to n do
            with list[i] do
                if uts < utsmin then utsmin:=uts;

        j:=1;
        while (j<=n) do
        begin
            with list[j] do
                begin
                    if (utsmin=uts) then break;
                end;
            j:=j+1;
        end;
        with list[j] do
        begin
            writeln('Mahasiswa dengan Nilai UTS terendah : ',nama);
            writeln('NIM             = ',nim);
            writeln('Nilai UTS       = ',uts);
            writeln('Nilai UAS       = ',uas);
            writeln('Nilai Akhir     = ',NA:0:2);
            writeln('Nilai Praktikum = ',praktikum);
        end;
    end;

    function uasmin(var list:mhs;n:integer):integer;
    var i:integer;
    begin
        uasmin:=list[1].uas;
        for i:=1 to n do
            with list[i] do
                if uas < uasmin then uasmin:=uas;

        j:=1;
        while (j<=n) do
        begin
            with list[j] do
                begin
                    if (uasmin=uas) then break;
                end;
            j:=j+1;
        end;
        with list[j] do
        begin
            writeln('Mahasiswa dengan Nilai UAS terendah : ',nama);
            writeln('NIM             = ',nim);
            writeln('Nilai UAS       = ',uas);
            writeln('Nilai UTS       = ',uts);
            writeln('Nilai Akhir     = ',NA:0:2);
            writeln('Nilai Praktikum = ',praktikum);
        end;
    end;

    function namin(var list:mhs;n:integer):real;
    var i:integer;
    begin
        namin:=list[1].na;
        for i:=1 to n do
            with list[i] do
                if na < namin then namin:=na;

        j:=1;
        while (j<=n) do
        begin
            with list[j] do
                begin
                    if (namin=na) then break;
                end;
            j:=j+1;
        end;
        with list[j] do
        begin
            writeln('Mahasiswa dengan Nilai Akhir terendah : ',nama);
            writeln('NIM             = ',nim);
            writeln('Nilai Akhir     = ',NA:0:2);
            writeln('Nilai UTS       = ',uts);
            writeln('Nilai UAS       = ',uas);
            writeln('Nilai Praktikum = ',praktikum);
        end;
    end;

    function utsrata(var list:mhs;n:integer):real;
    var i,utstot:integer;
    begin
        utstot:=0;
        for i:=1 to n do
        with list[i] do
            utstot:=utstot+uts;
            utsrata:=utstot/n;
    end;

    function uasrata(var list:mhs;n:integer):real;
    var i,uastot:integer;
    begin
        uastot:=0;
        for i:=1 to n do
        with list[i] do
            uastot:=uastot+uas;
            uasrata:=uastot/n;
    end;

    function narata(var list:mhs;n:integer):real;
    var i:integer;
        natot:real;
    begin
        natot:=0;
        for i:=1 to n do
        with list[i] do
            natot:=natot+na;
            narata:=natot/n;
    end;

    procedure lagi;
    begin
        write('Ingin memeriksa menu yang lain (Y/T) ? = ');readln(lagimenu);
    end;

    function carinilai(var list:mhs; n:integer; var siapa:string):integer;
    var i: integer;
    begin
        begin
            i:=1;
            while (i<n) and (list[i].nama <> siapa) do i:=i+1;
            if (list[i].nama <> siapa) then carinilai:=0
            else carinilai:=i;
        end;

        if carinilai=i then
            begin
                writeln('Data ditemukan!');
                with list[i] do
                begin
                    writeln('Nama mahasiswa yang dicari : ',nama);
                    writeln('Dengan rincian data :');
                    writeln('NIM             = ',nim);
                    writeln('Nilai Akhir     = ',NA:0:2);
                    writeln('Nilai UTS       = ',uts);
                    writeln('Nilai UAS       = ',uas);
                    writeln('Nilai Praktikum = ',praktikum);
                end;
            end
        else writeln('Data tidak ditemukan!');
    end;

    //mengurutkan nama dengan bubblesort secara menaik (ascending) 12345
    procedure sortnama(var list:mhs; n:integer);
    var i,j:integer;
        tmp:daftar;
    begin
        for i:=1 to n-1 do
        begin
            for j:=1 to n-1 do
                if (list[j+1].nama<list[j].nama) then {penggunaan "<" untuk menaik}
                begin
                    tmp:=list[j+1];
                    list[j+1]:=list[j];
                    list[j]:=tmp;
                end;
        end;
    end;

    //mengurutkan nim dengan bubble sort secara menaik (ascending) 54321
    procedure sortnim(var list:mhs; n:integer);
    var i,j:integer;
        tmp:Daftar;
    begin
        for i:=1 to n-1 do
        begin
            for j:=1 to n-1 do
                if(list[j+1].nim<list[j].nim) then
                begin
                    tmp:=list[j+1];
                    list[j+1]:=list[j];
                    list[j]:=tmp;
                end;
        end;
    end;

    //mengurutkan nilai akhir dengan bubble sort secara menurun (descending) 54321
    procedure dessortna(var list:mhs; n:integer);
    var i,j:integer;
        tmp:Daftar;
    begin
        for i:=1 to n-1 do
        begin
            for j:=1 to n-1 do
                if(list[j+1].na>list[j].na) then
                begin
                    tmp:=list[j+1];
                    list[j+1]:=list[j];
                    list[j]:=tmp;
                end;
        end;
    end;

    //mengurutkan nilai akhir dengan bubble sort secara menaik (ascending) 12345
    procedure assortna(var list:mhs; n:integer);
    var i,j:integer;
        tmp:Daftar;
    begin
        for i:=1 to n-1 do
        begin
            for j:=1 to n-1 do
                if(list[j+1].na<list[j].na) then
                begin
                    tmp:=list[j+1];
                    list[j+1]:=list[j];
                    list[j]:=tmp;
                end;
        end;
    end;

    //mengurutkan nilai uts dengan bubble sort secara menurun (descending) 54321
    procedure dessortuts(var list:mhs; n:integer);
    var i,j:integer;
        tmp:Daftar;
    begin
        for i:=1 to n-1 do
        begin
            for j:=1 to n-1 do
                if(list[j+1].uts>list[j].uts) then
                begin
                    tmp:=list[j+1];
                    list[j+1]:=list[j];
                    list[j]:=tmp;
                end;
        end;
    end;

    //mengurutkan nilai uts dengan bubble sort secara menaik (ascending) 12345
    procedure assortuts(var list:mhs; n:integer);
    var i,j:integer;
        tmp:Daftar;
    begin
        for i:=1 to n-1 do
        begin
            for j:=1 to n-1 do
                if(list[j+1].uts<list[j].uts) then
                begin
                    tmp:=list[j+1];
                    list[j+1]:=list[j];
                    list[j]:=tmp;
                end;
        end;
    end;

    //mengurutkan nilai uas dengan bubble sort secara menurun (descending) 54321
    procedure dessortuas(var list:mhs; n:integer);
    var i,j:integer;
        tmp:Daftar;
    begin
        for i:=1 to n-1 do
        begin
            for j:=1 to n-1 do
                if(list[j+1].uas>list[j].uas) then
                begin
                    tmp:=list[j+1];
                    list[j+1]:=list[j];
                    list[j]:=tmp;
                end;
        end;
    end;

    //mengurutkan nilai uas dengan bubble sort secara menaik (ascending) 12345
    procedure assortuas(var list:mhs; n:integer);
    var i,j:integer;
        tmp:Daftar;
    begin
        for i:=1 to n-1 do
        begin
            for j:=1 to n-1 do
                if(list[j+1].uas<list[j].uas) then
                begin
                    tmp:=list[j+1];
                    list[j+1]:=list[j];
                    list[j]:=tmp;
                end;
        end;
    end;

    procedure menu;
    begin
        repeat
        clrscr;
        writeln('Pilihlah menu berikut');
        writeln('1. Input Data');
        writeln('2. Tampilkan Data');
        writeln('3. Nilai Alpro Terbesar');
        writeln('4. Nilai Alpro Terkecil');
        Writeln('5. Rata-rata Nilai Alpro');
        writeln('6. Cari Nilai Mahasiswa');
        writeln('7. Urutkan Data');
        writeln('8. Keluar');
        write('Pilihan Anda ? (1/2/3/4/5/6/7/8) = ');readln(pilihprogram);

            case pilihprogram of
            1 : begin inputnilai(alpr,n,k); lagi; end;
            2 : begin tampildata(alpr,n); lagi; end;
            3 : begin
                    repeat
                    clrscr;
                    writeln('3. Nilai Alpro Terbesar');
                    writeln('   Silahkan pilih nilai yang ingin diperiksa');
                    writeln('   1. Nilai UTS Terbesar');
                    writeln('   2. Nilai UAS Terbesar');
                    writeln('   3. Nilai Akhir Terbesar');
                    write('Pilihan Anda (1/2/3) ? = ');readln(pilihmax);
                        case pilihmax of
                        1 : utsmax(alpr,n);
                        2 : uasmax(alpr,n);
                        3 : namax(alpr,n);
                        end;
                    write('Ingin memeriksan nilai Alpro Terbesar Lagi ? (Y/T) = ');readln(lagimax);
                    until (lagimax='T') or (lagimax='t');
                    lagi;
                end;
            4 : begin
                    repeat
                    clrscr;
                    writeln('4. Nilai Alpro Terkecil');
                    writeln('   Silahkan pilih nilai yang ingin diperiksa');
                    writeln('   1. Nilai UTS Alpro Terkecil');
                    writeln('   2. Nilai UAS Alpro Terkecil');
                    writeln('   3. Nilai Akhir Alpro Terkecil');
                    write('Pilihan Anda (1/2/3) ? = ');readln(pilihmin);
                        case pilihmin of
                        1 : utsmin(alpr,n);
                        2 : uasmin(alpr,n);
                        3 : namin(alpr,n);
                        end;
                    write('Ingin memeriksan nilai Alpro Terkecil Lagi ? (Y/T) = ');readln(lagimin);
                    until (lagimin='T') or (lagimin='t');
                    lagi;
                end;
            5 : begin
                    clrscr;
                    writeln('Rata-rata Nilai UTS Alpro adalah   ',utsrata(alpr,n):0:2);
                    writeln('Rata-rata Nilai UAS Alpro adalah   ',uasrata(alpr,n):0:2);
                    writeln('Rata-rata Nilai Akhir Alpro adalah ',narata(alpr,n):0:2);
                    lagi;
                end;
            6 : begin
                    clrscr;
                    writeln('6. Cari Nilai Mahasiswa');
                    write('Masukkan nama mahasiswa = ');readln(x);
                    carinilai(alpr,n,x);
                    lagi;
                end;
            7 : begin
                    repeat
                    clrscr;
                    writeln('7. Urutkan Data');
                    writeln('   Urutkan data berdasarkan : ');
                    writeln('   1. Nama (Terurut Abjad)');
                    writeln('   2. NIM');
                    writeln('   3. Nilai UTS');
                    writeln('   4. Nilai UAS');
                    writeln('   5. Nilai Akhir');
                    write('   Pilihan Anda (1/2/3/4/5) ? = ');readln(pilihurut);
                        case pilihurut of
                        1 : begin
                                sortnama(alpr,n);
                                writeln('Data yang dimasukkan sudah diurutkan berdasarkan Nama (Terurut Abjad)!');
                            end;
                        2 : begin
                                sortnim(alpr,n);
                                writeln('Data yang dimasukkan sudah diurutkan berdasarkan NIM');
                            end;
                        3 : begin
                                repeat
                                clrscr;
                                writeln('7. Urutkan Data');
                                writeln('   3. Nilai UTS');
                                writeln('      Urutkan data berdasarkan : ');
                                writeln('      1. Nilai UTS terbesar ke terkecil');
                                writeln('      2. Nilai UTS terkecil ke terbesar');
                                write('   Pilihan Anda (1/2) ? = ');readln(pilihuts);
                                        case pilihuts of
                                        1 : begin
                                                dessortuts(alpr,n);
                                                writeln('Data yang dimasukkan sudah diurutkan berdasarkan Nilai UTS terbesar');
                                            end;
                                        2 : begin
                                                assortuts(alpr,n);
                                                writeln('Data yang dimasukkan sudah diurutkan berdasarkan Nilai UTS terkecil ');
                                            end;
                                        end;
                                write('Ingin mengurutkan data UTS lagi ? (Y/T) = ');readln(lagiuts);
                                until (lagiuts='T') or (lagiuts='t');
                            end;
                        4 : begin
                                repeat
                                clrscr;
                                writeln('7. Urutkan Data');
                                writeln('   4. Nilai UAS');
                                writeln('      Urutkan data berdasarkan : ');
                                writeln('      1. Nilai UAS terbesar ke terkecil');
                                writeln('      2. Nilai UAS terkecil ke terbesar');
                                write('   Pilihan Anda (1/2) ? = ');readln(pilihuas);
                                        case pilihuas of
                                        1 : begin
                                                dessortuas(alpr,n);
                                                writeln('Data yang dimasukkan sudah diurutkan berdasarkan Nilai UAS terbesar');
                                            end;
                                        2 : begin
                                                assortuas(alpr,n);
                                                writeln('Data yang dimasukkan sudah diurutkan berdasarkan Nilai UAS terkecil');
                                            end;
                                        end;
                                write('Ingin mengurutkan data UAS lagi ? (Y/T) = ');readln(lagiuas);
                                until (lagiuas='T') or (lagiuas='t');
                            end;
                        5 : begin
                                repeat
                                clrscr;
                                writeln('7. Urutkan Data');
                                writeln('   5. Nilai Akhir');
                                writeln('      Urutkan data berdasarkan : ');
                                writeln('      1. Nilai Akhir terbesar ke terkecil');
                                writeln('      2. Nilai Akhir terkecil ke terbesar');
                                write('    Pilihan Anda (1/2) ? = ');readln(pilihna);
                                        case pilihna of
                                        1 : begin
                                                dessortna(alpr,n);
                                                writeln('Data yang dimasukkan sudah diurutkan berdasarkan Nilai Akhir terbesar');
                                            end;
                                        2 : begin
                                                assortna(alpr,n);
                                                writeln('Data yang dimasukkan sudah diurutkan berdasarkan Nilai Akhir terkecil');
                                            end;
                                        end;
                                write('Ingin mengurutkan data nilai akhir lagi ? (Y/T) = ');readln(lagina);
                                until (lagina='T') or (lagina='t');
                            end;
                        end;
                        write('Ingin mengurutkan data berdasarkan kasus yang lain ? (Y/T) = ');readln(lagiurut);
                    until (lagiurut='T') or (lagiurut='t');
                    lagi;
                end;
            8 : begin
                    clrscr;
                    writeln('Anda berhasil keluar dari program entri data Mahasiswa');
                    writeln('Terimakasih :)');
                    exit;
                end;
            end;

        until (lagimenu='t') or (lagimenu='T');
        writeln('Anda berhasil keluar dari program entri data Mahasiswa');
        writeln('Terima kasih :)');
    end;

begin
    clrscr;
    writeln('Selamat Datang Di Program Entri Mahasiswa');
    writeln('Inputkan Identitas Kelas Terlebih Dahulu');
    write('Tingkat           (1/2/3/4)                       = ');readln(tkt);
    write('Prodi             (KS/ST/D3/SD/SI/SE/SK)          = ');readln(prod);
    write('Rombongan Belajar (ST =1-10, KS=1-5, D3=1-2, dst) = ');readln(rombel);
    menu;
end.
