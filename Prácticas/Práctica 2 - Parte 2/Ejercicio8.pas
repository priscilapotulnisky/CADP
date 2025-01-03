program ejercicio8;
const
	cantidad = 100;
function promedio(precio: real):real;
begin
	promedio:= precio / cantidad;
end;

procedure minimos (precio: real; codigo: integer; var min1: real; var min2: real; var codMin1: integer; var codMin2: integer);
begin
	if(precio < min1) then begin
		codMin2:= codMin1;
		codMin1:= codigo;
		min2:= min1;
		min1:= precio;
	end
	else
		if(precio < min2) then begin
			codMin2:= codigo;
			min2:= precio;
		end;
end;

function esPantalon(tipo: string): boolean;
begin
	if(tipo = 'Pantalon') then
		esPantalon:= true
	else
		esPantalon:= false;
end;

procedure maximo (precio: real; codigo: integer; var max: real; var codMax: integer);
begin
	if(precio > max) then begin
		codMax:= codigo;
		max:= precio;
	end;
end;

procedure leerProductos(var precio: real; var codigo: integer; var tipo: string);
begin
	write('Precio: ');
	readln(precio);
	write('Codigo: ');
	readln(codigo);
	write('Tipo: ');
	readln(tipo);
end;

var
	precio: real;
	codigo: integer;
	tipo: string;
	min1: real;
	min2: real;
	max: real;
	codMin1: integer;
	codMin2: integer;
	codMax: integer;
	i: integer;
	suma: real;
begin
	min1:= 9999;
	min2:= 9999;
	max:= -1;
	suma:= 0;
	for i:= 1 to cantidad do begin
		writeln('----PRODUCTO ',i,'----');
		leerProductos(precio, codigo, tipo);
		minimos(precio, codigo, min1, min2, codMin1, codMin2);
		if(esPantalon(tipo))then
			maximo(precio, codigo, max, codMax);
		suma:= suma + precio;
	end;
	writeln('Codigo de los dos productos mas baratos: ',codMin1, ' y ', codMin2);
	writeln('Codigo del producto de tipo pantalon mas caro: ', codMax);
	writeln('Precio promedio: ', promedio(suma):2:0);
end.
	


		
