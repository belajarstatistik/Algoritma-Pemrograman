program deret_pecahan;
uses crt;
var n,i,j,satu :integer;
    deret,jumlah :real;
begin
        clrscr;
        write('Masukkan bilangan maksimum bilangan ganjil positif : '); readln(n);
        jumlah:=0;
        i:=1;
        j:=1;
        satu:=1;
        while (i<=n) do
         begin
          deret:=satu/i;
                if (j mod 2 <> 0) then
                  begin
                      deret:=deret;
                        if (i=1) then
                          write('1')
                        else
                          write(' + ','1/',i);
                  end
                else
                  begin
                      deret:=-deret;
                      write(' - ','1/',i);
                  end;
          jumlah:=jumlah+deret;
          i:=i+2;
          j:=j+1;
        end;
        writeln;
        writeln(':
        writeln();
        writeln('Jumlah deret adalah ',jumlah:0:4);
        writeln('
                                            ='); %3=
                                           == ');
readln();
end.