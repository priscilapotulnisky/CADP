program ejercicio3;
var 
	num1: integer;
	num2: integer;
	num3: integer;
	max: integer;
begin
  write('Ingrese un numero: ');
  readln(num1);
  write('Ingrese otro numero: ');
  readln(num2);
  write('Ingrese otro numero: ');
  readln(num3);
  if (num2 > num1) then begin
	max:= num2;
	num2:= num1;
	num1:= max;
  end;
  if (num3 > num1) then begin
	max:= num1;
	num1:= num3;
	num3:= max;
  end;
  if(num3 > num2) then begin
	max:= num2;
	num2:= num3;
	num3:= max;
  end;
  writeln(num1, ' ', num2, ' ', num3);
end.
