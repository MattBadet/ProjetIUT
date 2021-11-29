program monsterHunter;

uses menuUnit, combatUnit;

var
  vieU, dArme : integer;

begin
  vieU := 250;
  dArme := 30;
  vieU := combat(vieU, dArme);

  if (vieU > 0) then
  begin
    writeln('WIN');
    writeln('Le joueur a encore ', vieU,' PV');
  end
  else
  begin
    vieU := 0;
    writeln('LOOSE');
  end;

  readln;
end.
