program ejercicio1;
var
	num1: real;
	num2: real;
begin
	write('Ingrese un numero: ');
	readln(num1);
	write('Ingrese otro numero: ');
	readln(num2);
	if(num1 > num2) then
		writeln('El numero mas grande es: ', num1:2:0)
	else
		if(num2 > num1) then
			writeln('El numero mas grande es: ', num2:2:0)
			else
				writeln('Los numeros leidos son iguales.');
end.

