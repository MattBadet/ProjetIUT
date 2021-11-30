program progprinc;

uses sysutils, forge, inventaire, utilities;

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
  writeln('=========================================');
  ajouterinvobjet(fer);
  ajouterinvobjet(fer);
  ajouterinvobjet(fer);

  afficheinv();
  readln;
end.

