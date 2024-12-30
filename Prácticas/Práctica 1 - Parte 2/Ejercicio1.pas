program ejercicio1;
var
	num: integer;
	suma: integer;
	i: integer;
	cant: integer;
begin
	cant:= 0;
	suma:= 0;
	for i:= 1 to 10 do begin
		write('Ingrese un numero: ');
		readln(num);
		if (num > 5) then
			cant:= cant + 1;
		suma:= suma + num;
	end;
	writeln('La suma es: ', suma);
	writeln('La cantidad de numeros mayores a 5 es: ', cant);
end.
