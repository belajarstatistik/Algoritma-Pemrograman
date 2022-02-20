program CharsTester;
label
1000, 2000; {deklarasi label}
var InputChar:char;
begin
  1000:
 write('Please enter a letter (or 0 to quit): ');readln(InputChar );
  if InputChar = '0' then {kondisi untuk keluar}
    goto 2000
  else if (ORD(InputChar ) > 64) and (InputChar) < 91) then
    writeln('This is an upper case letter.')
  else if (ORD(InputChar ) > 96) and ( InputChar ) < 123) then
   writeln('This is a lower case letter.')
  else if (ORD(InputChar ) > 47) and ( InputChar ) < 58) then
   writeln('Hey, this is a number!')
  else
   writeln('Sorry, this is not a letter.');
 GOTO 1000; {mengulang program}
  2000: {keluar program}
end.