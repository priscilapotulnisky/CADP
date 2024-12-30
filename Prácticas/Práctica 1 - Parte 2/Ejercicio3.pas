program ejercicio3;
var
	nombre: string;
	nota: integer;
	cantAprobados: integer;
	nota7: integer;
begin
	cantAprobados:= 0;
	nota7:= 0;
	repeat
		write('Ingrese un nombre: ');
		readln(nombre);
		write('Ingrese la nota: ');
		readln(nota);
		if(nota >= 8) then
			cantAprobados:= cantAprobados + 1;
		if(nota = 7) then
			nota7:= nota7 + 1;
	until(nombre = 'Zidane Zinedine');
	writeln('La cantidad de aprobados es de: ', cantAprobados);
	writeln('La cantidad de alumnos con nota igual a 7 es de: ', nota7);
end.

