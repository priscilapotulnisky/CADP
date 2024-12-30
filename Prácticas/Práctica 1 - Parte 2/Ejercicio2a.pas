program ejercicio2a;
var
	num: integer;
	i: integer;
	max: integer;
	posMax: integer;
begin
	max:= -1;
	for i:= 1 to 10 do begin
		write('Ingrese un numero: ');
		readln(num);
		if (num > max) then begin
			max:= num;
			posMax:= i;
		end;
	end;
	writeln('El mayor numero leido fue el ', max, ' en la posicion ', posMax);
end.
