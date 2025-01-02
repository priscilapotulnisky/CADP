program programadores;
procedure leerDatos(var legajo: integer; salario : real);
begin
	writeln(‘Ingrese el nro de legajo y el salario”);
	read(legajo);
	read(salario);
end;
procedure actualizarMaximo(nuevoLegajo:integer; nuevoSalario:real; var maxLegajo:integer);
var
	maxSalario : real;
begin
	if (nuevoLegajo > maxLegajo) then begin
		maxLegajo:= nuevoLegajo;
		maxSalario := nuevoSalario
	end;
end;
var
	legajo, maxLegajo, i : integer;
	salario, maxSalario : real;
begin
	sumaSalarios := 0;
	for i := 1 to 130 do begin
		leerDatos(salario, legajo);
		actualizarMaximo(legajo, salario, maxLegajo);
		sumaSalarios := sumaSalarios + salario;
	end;
	writeln(‘En todo el mes se gastan ‘, sumaSalarios, ‘ pesos’);
	writeln(‘El salario del empleado más nuevo es ‘,maxSalario);
end.
//Error 1 ---> Los dos parametros deben ser de valor
//Error 2 ---> maxSalario debe ser un parametro
//Error 3 ---> sumaSalarios no esta declarada
//Error 4 ---> maxLegajo no esta inicializada
//Error 5 ---> falta un ; en la linea 14
