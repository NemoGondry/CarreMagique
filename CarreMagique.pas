program CarreMagique ;

uses crt;

VAR tour, x, y : integer;
    tableau : array[1..5, 1..5] of integer;

procedure initialisation;



begin
    for x := 1 to 5 do
    begin
        for y := 1 to 5 do
        begin
            tableau [x,y] := 0;
        end
    end
end;

procedure composition;


BEGIN

x := 3;
y := 2;
tableau[x,y] := 1;

	for tour := 2 to 25 do
	begin
		x := x + 1;
		y := y - 1;
	    
	    if tableau [x,y] <> 0 then
		begin
			y := y - 1;
			x := x - 1;
			
		end;
		if y < 1 then
		begin	
			y := 5;
		end;
			
			if x > 5 then
			begin
				x := 1;
			end;
				
				if x < 1 then
				begin
					x := 5;
				end;
			tableau [x,y] := tour;
	end;
end;

BEGIN

tour := 1;
initialisation;
composition;

for x := 1 to 5 do
begin
	for y := 1 to 5 do
	begin
	write (tableau[x,y] ,'|');
	end;
	writeln;
end;

readln;

END.
