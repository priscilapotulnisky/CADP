program ejercicio5;
function esElDoble(numero1: integer; numero2: integer): boolean;
begin
	if(numero1 * 2 = numero2) then
		esElDoble:= true
	else
		esElDoble:= false;
end;

var
	num1: integer;
	num2: integer;
	cantDobles: integer;
	cantPares: integer;
begin
	cantPares:= 0;
	cantDobles:= 0;
	write('Ingrese el numero 1 del par: ');
	readln(num1);
	write('Ingrese el numero 2 del par: ');
	readln(num2);
	writeln('---Se ingreso el par (',num1, ',',num2,')---');
	while ((num1 <> 0) or (num2 <> 0)) do begin
		cantPares:= cantPares + 1;
		if(esElDoble(num1, num2)) then
			cantDobles:= cantDobles + 1;
		write('Ingrese el numero 1 del par: ');
	    readln(num1);
		write('Ingrese el numero 2 del par: ');
		readln(num2);
		writeln('---Se ingreso el par (',num1, ',',num2,')---');
	end;
	writeln('Cantidad de pares leidos: ', cantPares);
	writeln('Cantidad de pares en los que numB es el doble de numA: ', cantDobles);
end.
		
