program ejercicio9;
var
	num: real;
	total: real;
	operacion: char;
begin
	write('Ingrese + o - : ');
	readln(operacion);
	write('Ingrese un numero: ');
	readln(num);
	if(operacion = '+') then begin
		total:= 0;
		while(num <> 0) do begin
			total:= total + num;
			write('Ingrese un numero: ');
			readln(num);
		end;
	end
	else 
		if (operacion = '-') then begin
			total:= num;
			while(num <> 0) do begin
				write('Ingrese un numero: ');
				readln(num);
				total:= total - num;
			end;
		end
		else
			writeln('Operacion incorrecta.');
	writeln('El total es: ', total:2:0);
end.
