program ejercicio9;
procedure cantDigitosYSuma(num: integer; var cantDigitos: integer; var suma: integer);
var
	digito: integer;
begin
	cantDigitos:= 0;
	suma:= 0;
	while(num > 0) do begin
		digito:= num mod 10;
		suma:= suma + digito;
		cantDigitos:= cantDigitos + 1;
		num:= num div 10;
	end;
	writeln('------- Cantidad de digitos = ', cantDigitos);
	writeln('------- Suma de los digitos = ', suma);
end;

var
	num: integer;
	suma: integer;
	cantDigitos: integer;
	cantTotal: integer; //Para no modificar el modulo
begin
	cantTotal:= 0;
	repeat
		write('Ingrese un numero: ');
		readln(num);
		cantDigitosYSuma(num, cantDigitos, suma);
		cantTotal:= cantTotal + cantDigitos;
	until(suma = 10);
	writeln('CANTIDAD TOTAL DE DIGITOS LEIDOS: ', cantTotal);
end.
