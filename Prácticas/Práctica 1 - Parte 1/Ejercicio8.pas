program ejercicio8;
var
	cant: integer;
	v1: char;
	v2: char;
	v3: char;
begin
	cant:= 0;
	write('Vocal 1: ');
	readln(v1);
	write('Vocal 2: ');
	readln(v2);
	write('Vocal 3: ');
	readln(v3);
	if((v1 = 'a') or(v1 = 'A') or(v1 = 'e') or (v1 = 'E')or(v1 = 'i')or(v1 = 'I') or(v1 = 'O') or (v1 = 'o') or (v1 = 'O')or(v1 = 'u') or (v1='U')) then 
		cant:= cant+1;
    if((v2 = 'a') or(v2 = 'A') or(v2 = 'e') or (v2 = 'E')or(v2 = 'i')or(v2 = 'I') or(v2 = 'O') or (v2 = 'o') or (v2 = 'O')or(v2 = 'u') or (v2='U')) then
		cant:= cant+1;
    if((v3 = 'a') or(v3 = 'A') or(v3 = 'e') or (v3 = 'E')or(v3 = 'i')or(v3 = 'I') or(v3 = 'O') or (v3 = 'o') or (v3 = 'O')or(v3 = 'u') or (v3='U')) then
		cant:= cant+1;
    if (cant = 3) then
		writeln('Los tres son vocales.')
	else
		writeln('Al menos un caracter no es vocal.');
end.

	

