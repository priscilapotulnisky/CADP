program ejercicio6;
var
	codigo: integer;
	precio: real;
	codMin1: integer;
	codMin2: integer;
	precioMin1: real;
	precioMin2: real;
	cant: integer;
	i: integer;
begin
	precioMin1:= 9999;
	precioMin2:= 9999;
	cant:= 0;
	for i:= 1 to 10 do begin
		write('Codigo: ');
		readln(codigo);
		write('Precio: ');
		readln(precio);
		if(precio < precioMin1) then begin
			precioMin2:= precioMin1;
			codMin2:= codMin1;
			precioMin1:= precio;
			codMin1:= codigo;
		end
		else
			if(precio < precioMin2) then begin
				codMin2:= codigo;
				precioMin2:= precio;
			end;
		if((precio > 16) and (codigo mod 2 = 0)) then
			cant:= cant + 1;
		writeln('----------------------------------------------------------');
	end;
	writeln('Los codigos de los productos mas baratos son: ', codMin1, ' y ', codMin2);
	writeln('La cantidad de productos de mas de 16 pesos con codigo par es de: ', cant);
end.			
	
