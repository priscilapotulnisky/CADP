program ejercicio10;
function esPar(num: integer): boolean;
begin
	if(num mod 2 = 0) then
		esPar:= true
	else
		esPar:= false;
end;

procedure descomponer (num: integer);
var
	digito: integer;
	sumaPares: integer;
	impares: integer;
begin
	sumaPares:= 0;
	impares:= 0;
	while(num > 0) do begin
		digito:= num mod 10;
		if(esPar(digito)) then 
			sumaPares:= sumaPares + digito
		else
			impares:= impares + 1;
		num:= num div 10;
	end;
	writeln('----- Suma pares: ', sumaPares);
	writeln('----- Cantidad impares: ', impares);
end;

var
	num: integer;
begin
	write('Ingrese un numero: ');
	readln(num);
	while(num <> 12345) do begin
		descomponer(num);
		write('Ingrese un numero: ');
		readln(num);
	end;
end.
	
