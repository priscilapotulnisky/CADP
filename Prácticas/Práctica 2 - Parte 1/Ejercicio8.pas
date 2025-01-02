program anidamientos;
procedure leer;
var
	letra : char;
function analizarLetra : boolean;
begin
	if (letra >= 'a') and (letra <= 'z') then
		analizarLetra := true
	else
	if (letra >= 'A') and (letra <= 'Z') then
		analizarletra := false;
end; { fin de la funcion analizarLetra }
begin
	readln(letra);
	if (analizarLetra) then
		writeln('Se trata de una minúscula')
	else
		writeln('Se trata de una mayúscula');
end; { fin del procedure leer}
var
	ok : boolean;
begin { programa principal }
	leer;
	{ok := analizarLetra;
	if ok then
		writeln('Gracias, vuelva prontosss');}
end.
//a) La función analizarLetra fue declarada como un submódulo dentro del procedimiento leer. Pero esto
//puede traer problemas en el código del programa principal.
//i) ¿qué clase de problema encuentra?
//----- Lo que sucede es que no se puede invovar a la funcion estando fuera del proceso. Ya que se encuentra anidado

//ii) ¿cómo se puede resolver el problema para que el programa compile y funcione correctamente?
//----- Hay que separar la funcion del proceso y poder usar los dos modulos por separado


//b) La función analizarLetra parece incompleta, ya que no cubre algunos valores posibles de la variable letra.
//i) ¿De qué valores se trata?
//----- La función analizarLetra no maneja caracteres que no sean letras alfabéticas (por ejemplo, números, símbolos, espacios, etc.). Estos casos no están contemplados en las condiciones dadas.

//ii) ¿Qué sucede en nuestro programa si se ingresa uno de estos valores?
//----- Si se ingresa un carácter no alfabético, el programa no imprime ningún mensaje, ya que no se cumple ninguna de las condiciones en analizarLetra. Por lo tanto, el comportamiento del programa será impredecible o ambiguo.

//iii) ¿Cómo se puede resolver este problema?
//----- Se debe agregar una condición adicional para manejar caracteres no alfabéticos. 

