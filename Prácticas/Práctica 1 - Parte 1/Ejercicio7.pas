program ejercicio7;
var
	codigo: integer;
	precioActual: real;
	nuevoPrecio: real;
begin
	repeat
		write('Ingrese un codigo: ');
		readln(codigo);
		write('Ingrese el precio actual: ');
		readln(precioActual);
		write('Ingrese el precio nuevo: ');
		readln(nuevoPrecio);
		if (nuevoPrecio > ((precioActual * 10) / 100 + precioActual)) then
			writeln('El aumento de precio del producto ', codigo, ' es superior al 10%.')
		else
			writeln('El aumento de precio del producto ', codigo, ' no supera el 10%.');
	until(codigo = 32767);
end.
