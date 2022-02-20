program kalendersederhana;
uses crt;
type harilpekan=(Ahad, Senin, Selasa, Rabu, Kamis, Jumat, Sabtu);
     haribulan=1..31;
var i, awalbulan:harilpekan;
   j, tglmaks:haribulan;
    x,y,k,lebar:integer;
begin
    clrscr;
    write('Hari pertama awal bulan : ');readln(awalbulan);
    write('Jumlah hari bulan ini : ');readln(tglmaks); writeln;
    lebar:=7;
    for i:=Ahad to Sabtu do
        write(i:lebar);
    y:=5;
    x:=ord(awalbulan);
    for j:=1 to tglmaks do
    begin
        if x=7 then
        begin
            x:=0;
            y:=y+1;
        end;
        gotoxy (lebar*x+1,y);write(j:3);
        x:=x+1;
    end;
    readln;
end.