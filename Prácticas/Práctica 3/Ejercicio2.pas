program ejercicio2;
type
	fecha = record
		dia: integer;
		mes: integer;
		anio: integer;
	end;
	
procedure leer(var f: fecha);
begin
	write('--Anio: ');
	readln(f.anio);
	if(f.anio = 2019) then begin
		write('--Dia: ');
		readln(f.dia);
		write('--Mes: ');
		readln(f.mes);
	end;	
end;

function esVerano(mes: integer):boolean;
begin
	if ((mes >= 1) and (mes <=3)) then
		esVerano:= true
	else
		esVerano:= false;
end;

function primerosDias(dia: integer):boolean;
begin
	if((dia>=1) and (dia <= 10)) then
		primerosDias:= true
	else
		primerosDias:= false;
end;

var
	f: fecha;
	cantidad: integer;
	cantidad2: integer;
begin
	cantidad:= 0;
	cantidad2:= 0;
	leer(f);
	while(f.anio = 2019) do begin
		if(esVerano(f.mes)) then
			cantidad:= cantidad + 1;
		if(primerosDias(f.dia)) then
			cantidad2:= cantidad2 + 1;
		leer(f);
	end;
	writeln('--La cantidad de casamientos realizados en verano fueron: ', cantidad);
	writeln('--La cantidad de casamientos realizados los primeros dias de cada mes fueron: ', cantidad2);
end.
