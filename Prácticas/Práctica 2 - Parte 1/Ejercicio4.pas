program alcance4a;
var 
	a,b: integer;
procedure uno;
begin
	a := 1;
	writeln(a);
end;
begin
	a:= 1;
	b:= 2;
	uno;
	writeln(b, a);
end.

{
program alcance4b;
procedure uno;
begin
	a := 1;
	writeln(a);
end;
var 
	a,b: integer;
begin
	a:= 1;
	b:= 2;
	uno;
	writeln(b, a);
end.
}

//La diferencia es que en el programa 1 contamos con variables globales que son usadas en el proceso.
//en el programa 2 usamos a "a" pero no está declarada ni como variable local del proceso ni como variable global
//esta declarada en el programa principal, por lo tanto cuando invoquemos al proceso nos va a dar error porque no tiene el alcance suficiente como para conocer esa variable
