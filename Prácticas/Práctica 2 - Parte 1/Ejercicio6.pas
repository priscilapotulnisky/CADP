program ejercicio6;
function esPar(numero: integer):boolean;
begin
	if(numero mod 2 = 0) then
		esPar:= true
	else
		esPar:= false;
end;

procedure leerNumeros();
var
	numero: integer;
	max: integer;
begin
	max:= -1;
	write('Ingrese un numero: ');
	readln(numero);
	while(numero >= 0) do begin
		if(esPar(numero) and (numero > max)) then
			max:= numero;
		write('Ingrese un numero: ');
		readln(numero);
	end;
	writeln('El numero par mas alto es: ', max);
end;
begin
	leerNumeros();
end.
