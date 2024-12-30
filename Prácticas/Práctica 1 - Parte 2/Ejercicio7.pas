program ejercicio7;
var
	nombre: string;
	tiempo: real;
	tiempoMin1: real;
	tiempoMin2: real;
	nombreMin1: string;
	nombreMin2: string;
	tiempoMax1: real;
	tiempoMax2: real;
	nombreMax1: string;
	nombreMax2: string;
	i: integer;
begin
	tiempoMin1:= 9999;
	tiempoMin2:= 9999;
	tiempoMax1:= -1;
	tiempoMax2:= -1;
	for i:= 1 to 10 do begin
		write('Nombre del piloto: ');
		readln(nombre);
		write('Tiempo: ');
		readln(tiempo);
		if(tiempo > tiempoMax1) then begin
			tiempoMax2:= tiempoMax1;
			nombreMax2:= nombreMax1;
			tiempoMax1:= tiempo;
			nombreMax1:= nombre;
		end
		else
			if(tiempo > tiempoMax2) then begin
				nombreMax2:= nombre;
				tiempoMax2:= tiempo;
			end;
		if(tiempo < tiempoMin1) then begin
			tiempoMin2:= tiempoMin1;
			nombreMin2:= nombreMin1;
			tiempoMin1:= tiempo;
			nombreMin1:= nombre;
		end
		else
			if(tiempo < tiempoMin2) then begin
				tiempoMin2:= tiempo;
				nombreMin2:= nombre;
			end;
	end;
	writeln('Los nombres de los dos pilotos que finalizaron en los dos primeros puestos son: ', nombreMin1, ' y ', nombreMin2);
	writeln('Loa nombres de los dos pilotos que finalizaron en los dos ultimos puestos son: ', nombreMax1, ' y ', nombreMax2);
end.
		
