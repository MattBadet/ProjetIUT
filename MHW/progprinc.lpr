program progprinc;

uses sysutils, forge;

begin
  initialisationinv();
  ajouterinvobjet(fer);
  ajouterinvobjet(reste);
  ajouterinvobjet(reste);
  afficheinv();
  createepee(epeedemo);
  writeln('=========================================');
  afficheinv();
  writeln('=========================================');
  ajouterinvbombe(bombepetite);
  ajouterinvbombe(bombepetite);
  ajouterinvbombe(bombepetite);
  afficheinv();
  writeln('=========================================');
  ajouterinvpotion(petitepotion);
  afficheinv();
  readln;
end.

