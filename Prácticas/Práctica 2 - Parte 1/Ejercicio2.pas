program alcance2;
var 
	a,b: integer;
procedure uno;
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

//Lo que imprime el programa es: 3 3 1 porque el proceso utiliza la variable global en vez de tener una variable local
//entonces primero se asignan los valores a = 1 y b = 2. Pero cuando se invoca al proceso este mismo cambia el valor de la variable global
//por lo tanto ahora b = 3, y cuando se hace el writeln del programa principal se imprime el valor actual de b y de a 
