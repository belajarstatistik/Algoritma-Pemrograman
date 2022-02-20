program daymonth;
label start;
var day,month, year:integer;
begin
  start;
 write('Masukkan nomor bulan : ');readln(month);
  case month of
    1,3,5,7,8,10,12 : day:=31;
    4,6,9,11
    2
                      : day:=30;
                     : begin
                        write('Masukkan Tahun : ');readln(year);
                        if year mod 4 = 0 then
                          day:=29
                        else
                          day:=28;
                      end;
    else
      exit {untuk kasus lain}
  end;
 writeln('ada ',day,' hari pada bulan ini.');
  goto start;
 end.