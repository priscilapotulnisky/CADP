program ejercicio4a;
var
	min1: integer;
	min2: integer;
	num: integer;
begin
	min1:= 9999;
	min2:= 9999;
	repeat
		write('Ingrese un numero: ');
		readln(num);
		if(num < min1) then begin
			min2:= min1;
			min1:= num;
		end
		else
			if(num < min2) then 
				min2:= num;
	until(num = 0);
	writeln('Los numeros mas chicos son: ', min1, ' y ', min2);
end.

