program ejercicio5;
var 
	num: integer;
	max: integer;
	min: integer;
	total: integer;
begin
	max:= -1;
	min:= 9999;
	total:= 0;
	repeat
		write('Ingrese un numero: ');
		readln(num);
		if(num < min) then 
			min:= num;
		if(num > max) then
			max:= num;
		total:= total + num;
	until(num = 100);
	writeln('El numero mas grande es: ', max);
	writeln('El numero mas chico es: ', min);
	writeln('La suma de todos los numeros es: ', total);
end.
