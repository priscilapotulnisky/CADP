program alcance1;
var 
	a,b: integer;
procedure uno;
var 
	b: integer;
begin
	b := 3;
	writeln(b);
end;
begin
	a:= 1;
	b:= 2;
	uno;
	writeln(b, a);
end.

//Lo que imprime el programa es: 3 2 1. Porque primero se invoca el proceso y se usa su variable local
//luego se imprimen las variables globales con los valores asignados anteriormente 

