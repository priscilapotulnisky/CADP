program alcanceYFunciones;
var
	suma, cant : integer;
function calcularPromedio : real
var
	prom : real;
begin
	if (cant = 0) then
		prom := -1
	else
		prom := suma / cant;
	//calcularPromedio:= prom;  Linea de codigo para resolver el inciso a
end;
begin { programa principal }
	readln(suma);
	readln(cant);
	if (calcularPromedio <> -1) then begin
		cant := 0;
		writeln('El promedio es: ' , calcularPromedio);
	end
	else
		writeln('Dividir por cero no parece ser una buena idea');
end.

//a) La función calcularPromedio calcula y retorna el promedio entre las variables globales suma y cant, pero
//parece incompleta. ¿qué debería agregarle para que funcione correctamente?
//------ Lo que falta es darle el valor de prom a la funcion. calcularPromedio:= prom


//b) En el programa principal, la función calcularPromedio es invocada dos veces, pero esto podría mejorarse.
//¿cómo debería modificarse el programa principal para invocar a dicha función una única vez?
//------ Para que la funcion sea invocada una unica vez lo que se puede hacer es crear una variable y darle el valor de la funcion
//luego, usamos esa variable. promedio:= calcularPromedio

//c) Si se leen por teclado los valores 48 (variable suma) y 6 (variable cant), ¿qué resultado imprime el
//programa? Considere las tres posibilidades:
//i) El programa original
//------ No imprime nada, da error

//ii) El programa luego de realizar la modificación del inciso a
//------ imprime 8

//iii) El programa luego de realizar las modificaciones de los incisos a) y b)
//------ imprime 8
