program ejercicio11;
procedure minimos(apellido: string; numInscripcion: integer; var apMin1: string; var apMin2: string; var min1: integer; var min2: integer);
begin
	if(numInscripcion < min1) then begin
		apMin2:= apMin1;
		apMin1:= apellido;
		min2:= min1;
		min1:= numInscripcion;
	end
	else
		if(numInscripcion < min2) then begin
			apMin2:= apellido;
			min2:= numInscripcion;
		end;
end;

procedure maximos(nombre: string; numInscripcion: integer; var nombreMax1: string; var nombreMax2: string; var max1: integer; var max2: integer);
begin
	if(numInscripcion > max1) then begin
		nombreMax2:= nombreMax1;
		nombreMax1:= nombre;
		max2:= max1;
		max1:= numInscripcion;
	end
	else
		if(numInscripcion > max2) then begin
			nombreMax2:= nombre;
			max2:= numInscripcion;
		end;
end;

function esPar(numInscripcion: integer): boolean;
begin
	if(numInscripcion mod 2 = 0) then
		esPar:= true
	else
		esPar:= false;
end;

function porcentaje(total: integer; cantPar: integer): real;
begin
	porcentaje:= ((cantPar * 100) / total);
end;

var
	num: integer;
	nombre: string;
	apellido: string;
	nombre1: string;
	nombre2: string;
	apellido1: string;
	apellido2: string;
	total: integer;
	cantPar: integer;
	max1: integer;
	max2: integer;
	min1: integer;
	min2: integer;
begin
	total:= 0;
	cantPar:= 0;
	max1:= 0;
	max2:= 0;
	min1:= 9999;
	min2:= 9999;
	repeat
		write('-Numero de inscripcion: ');
		readln(num);
		write('-Nombre: ');
		readln(nombre);
		write('-Apellido: ');
		readln(apellido);
		maximos(nombre, num, nombre1, nombre2, max1, max2);
		minimos(apellido, num, apellido1, apellido2, min1, min2);
		if(esPar(num)) then
			cantPar:= cantPar + 1;
		total:= total + 1;
		writeln('-------------------------------');
	until(num = 1200);
	writeln('Apellido de los dos alumnos con numero de inscripcion mas chico: ', apellido1, ' y ', apellido2);
	writeln('Nombre de los dos alumnos con numero de inscripcion mas grande: ', nombre1, ' y ', nombre2);
	writeln('-----Porcentaje de alumnos con numero de inscripcion par: ', porcentaje(total, cantPar):2:0, '%');
	
end.
