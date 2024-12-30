program ejercicio6;
var
	promedio: real;
	legajo: integer;
	cantidadAlumnos: integer;
	cantidadSuperan: integer;
	cantidadDestacados: real;
begin
	cantidadAlumnos:= 0;
	cantidadSuperan:= 0;
	cantidadDestacados:= 0;
	write('Ingrese el numero de legajo: ');
	readln(legajo);
	while (legajo <> -1) do begin
		write('Ingrese el promedio: ');
		readln(promedio);
		cantidadAlumnos:= cantidadAlumnos + 1;
		if (promedio > 6.5) then
			cantidadSuperan:= cantidadSuperan + 1;
		if((promedio > 8.5) and (legajo < 2500)) then
			cantidadDestacados:= cantidadDestacados + 1;
	    write('Ingrese el numero de legajo: ');
		readln(legajo);
	end;
	writeln('La cantidad de alumnos leida es: ', cantidadAlumnos);
	writeln('La cantidad de alumnos cuyo promedio supera 6.5 es: ', cantidadSuperan);
	writeln('El porcentaje de alumnos destacados es: ', ((cantidadDestacados / cantidadAlumnos) * 100):2:0, '%');
end.

