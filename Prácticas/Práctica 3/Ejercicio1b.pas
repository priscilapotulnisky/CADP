program Registros;
type
	str20 = string[20];
	alumno = record
		codigo : integer;
		nombre : str20;
		promedio : real;
	end;
procedure leer(var alu : alumno);
begin
	write('Ingrese el código del alumno: ');
	readln(alu.codigo);
	if (alu.codigo <> 0) then begin
		write('Ingrese el nombre del alumno: '); 
		readln(alu.nombre);
		write('Ingrese el promedio del alumno: '); 
		readln(alu.promedio);
	end;
end;
procedure maximo(nombre: string; promedio: real; var maxNombre: string; var max: real);
begin
	if(promedio > max) then begin
		maxNombre:= nombre;
		max:= promedio;
	end;
end;
	{ declaración de variables del programa principal }
var
	a : alumno;
	cantidad: integer;
	max: real;
	maxNombre: string;
	{ cuerpo del programa principal }
begin
	max:= -1;
	cantidad:= 0;
	leer(a);
	while(a.codigo <> 0) do begin
		cantidad:= cantidad + 1;
		maximo(a.nombre, a.promedio, maxNombre, max);
		leer(a);
	end;
	writeln('La cantidad de alumnos es de: ', cantidad);
	writeln('El alumno con mejor promedio es: ', maxNombre);
end.

