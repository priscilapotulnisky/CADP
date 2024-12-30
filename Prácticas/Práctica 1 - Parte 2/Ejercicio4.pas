program ejercicio4;
var
	num: integer;
	min1: integer;
	min2: integer;
	i: integer;
begin
	min1:= 9999;
	min2:= 9999;
	for i:= 1 to 10 do begin
		write('ingrese un numero: ');
		readln(num);
		if(num < min1) then begin
			min2:= min1;
			min1:= num;
		end
		else 
			if(num < min2) then 
				min2:= num;
	end;
	writeln('Los dos numeros mas chicos son: ', min1, ' y ', min2);
end.
		

