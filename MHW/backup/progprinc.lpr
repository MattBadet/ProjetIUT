program progprinc;

uses sysutils, forge;

var
  choix,i:integer;

begin
  initialisationinv();
  ajouterinvobjet(fer);
  ajouterinvobjet(fer);
  ajouterinvobjet(reste);
  ajouterinvobjet(reste);
  afficheinv();
  writeln;
  createepee(epeedemo);
  writeln;
  afficheinv();
  readln;
end.

