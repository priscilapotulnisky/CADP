program ejercicio8;
var
	monto: real;
	totalMes: real;
	cant: integer;
	diaMax: integer;
	max: integer;
	i: integer;
begin
	max:= -1;
	totalMes:= 0; 
	for i:= 1 to 31 do begin
		writeln('---------- VENTAS DEL DIA ',i,' ----------');
		cant:= 0;
		write('Monto: ');
		readln(monto);
		while(monto <> 0) do begin
			totalMes:= totalMes + monto;
			cant:= cant + 1;
			if(cant > max) then begin
				diaMax:= i;
				max:= cant;
			end;
			write('Monto: ');
			readln(monto);
		end;
		writeln('--------------------------------------');
		writeln('La cantidad de ventas del dia ', i, ' es: ', cant);
		writeln('--------------------------------------');
	end;
	writeln('El monto total recaudado en el mes es de: ', totalMes:2:0);
	writeln('El dia en el que se realizaron mas ventas fue el ',diaMax, ' con ',max,' ventas');
end.
	
		
