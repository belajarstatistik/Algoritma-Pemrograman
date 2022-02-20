program goto;
label 1000;
var inputchar:char;
begin
 write('Masukkan huruf (atau o untuk berhenti) : '); readln(inputchar);
  if inputchar = '0' then
    goto 1000;
    {other statement mau go here ...}
  1000;
end.