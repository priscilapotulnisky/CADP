program ejercicio5;
var
	x: real;
	num: real;
	i: integer;
begin
	write('Ingrese un numero: ');
	readln(x);
	write('Ingrese otro numero: ');
	readln(num);
	i:= 1;
	while((i < 10) and (num <> x*2)) do begin
	  write('Ingrese otro numero: ');
	  readln(num);
	  i:= i+1;
	end;
	if(i = 10) then
		writeln('No se ha ingresado el doble de ', x:2:0)
	else
		writeln('Se ha ingresado el doble de ', x:2:0);
end.
    
	  

