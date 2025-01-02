program alcance3;
var 
	a: integer;
procedure uno;
var 
	b: integer;
begin
	b:= 2;
	writeln(b);
end;
begin
	a:= 1;
	uno;
	writeln(a, b);
end.

//El error es que se quiere imprimir la variable "b" en el programa principal
//pero esta variables es local del proceso, por lo tanto no se podra acceder a ella desde el programa principal
