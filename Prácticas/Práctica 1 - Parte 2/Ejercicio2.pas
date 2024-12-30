program ejercicio2;
var
	num: integer;
	max: integer;
	i: integer;
begin
	max:= -1;
	for i:= 1 to 10 do begin
		write('Ingrese un numero: ');
		readln(num);
		if (num > max) then
			max:= num;
	end;
	writeln('El mayor numero leido fue el ', max);
end.

