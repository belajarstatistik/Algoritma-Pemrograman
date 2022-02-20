program penugasan81;
uses crt;
type Harilpekan=(Ahad, Senin, Selasa, Rabu, Kamis, Jumat, Sabtu);
        haribulan=1..31;
       i, awalbulan:harilpekan;
        j,tglmaks:haribulan;
       x,y,lebar, tahun,bulan:integer;
        kabisat : boolean;
        namabulan : string;
var
begin
    clrscr;
    write('Hari pertama awal bulan Januari: ');
    readln(awalbulan);
    write('Tahun: ');
    readln(tahun);
    writeln();
    if((tahun mod 400)= 0) then
        kabisat:= true
    else
    if((tahun mod 100) = 0) then
        kabisat:= false
    else
    if((tahun mod 4) = 0) then
        kabisat:= true
    else
        kabisat:= false;
    x:=ord(awalbulan);
    for bulan:= 1 to 12 do begin
    case bulan of
    1: begin
    tglmaks:= 31;
    namabulan:= 'Januari';
    end;
    2: begin
    if(kabisat=true) then tglmaks:= 29
    else tglmaks:= 28;
    namabulan:= 'Februari';
    end;
    3: begin
    tglmaks:= 31;
    namabulan:= 'Maret';
    end;
    4: begin
    tglmaks:= 30;
    namabulan:= 'April';
    end;
    5: begin
    tglmaks:= 31;
    namabulan:= 'Mei';
    end;
    6: begin
    tglmaks:= 30;
    namabulan:= 'Juni';
    end;
    7: begin
    tglmaks:= 31;
    namabulan:= 'Juli';
    end;
    8: begin
    tglmaks:= 31;
    namabulan:= 'Agustus';
    end;
    9: begin
    tglmaks:= 30;
    namabulan:= 'September';
    end;
    10: begin
    tglmaks:= 31;
    namabulan:= 'Oktober';
    end;
    11: begin
    tglmaks:= 30;
    namabulan:= 'November';
    end;
    12: begin
    tglmaks:= 31;
    namabulan:= 'Desember';
    end;
    end;
    writeln(namabulan,' ',tahun);
    lebar:=7;
    for i:=Ahad to sabtu do begin
        write(i:lebar);
    end;
    writeln ();
    y:= wherey ();
    for j:=1 to tglmaks do begin
        if (x=7) then begin
            x:=0;
            writeln();
            y:= wherey();
        end;
        gotoxy(lebar*x+1,y);write(j:3);
        x:=x+1;
    end;
    writeln();
    writeln();
    writeln();
    end;
    readln;
end.