program ejercicio4;
var
    x: real;
	num: real;
begin
	write('Ingrese un numero: ');
	readln(x);
	write('Ingrese otro numero: ');
	readln(num);
	while(num <> (x*2)) do begin
	  write('Ingrese otro numero: ');
	  readln(num);
	end;
	writeln('Se ingreso el doble del numero ', x:2:0);
end.
