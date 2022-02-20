program segitigapascal;
uses crt;
var i,j,k,m,n,r:integer;
    com :real;
begin
    clrscr;
    writeln('Inputkan jumlah baris = ');
    write('n = );readln(n);
    m: =0;
    for i:=1 ton do
    begin
        r:=0;
        for j:=1 to n do
        begin
            if (j<n-i+1) then write(' ':3)
            else
            begin
                com:=1;
                for k:=1 tor do
                    com:=com* (m-k+1)/k;
                write(com:3:0);
                write(' ':3);
                r:=r+1;
            end;
        end;
        writeln;
        m: =m+1;
    end;
readln;
end.