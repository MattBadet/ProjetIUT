program progprinc;

uses sysutils, forge;

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

