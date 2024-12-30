program ejercicio2;
var
	num: real;
begin
	write('Ingrese un numero: ');
	readln(num);
	if(num >= 0) then
		writeln('El valor absoluto de ', num:2:0, ' es: ', num:2:0)
	else
		writeln('El valor absoluto de ', num:2:0, ' es: ', (num * -1):2:0);
end.
