unit UnitBatailleNavaleTestUnitaire;

{$mode objfpc}{$H+}
{$codepage utf8}

interface

uses
  Classes, SysUtils;

procedure test();

implementation
uses
  UnitBatailleNavaleJoueurs,TestUnitaire;



    
//Initialise le numéro du joueur en cours (début de partie)
procedure initialisationNumeroJoueurEnCours_test();
begin
end;

//Change de joueur en cours
procedure JoueurSuivant_test();
begin
end;

//Initialise le joueur demandé
//(cartes vides, aucun bateau)
procedure initialisationJoueur_test();
begin
end;


//Positionne aléatoirement des bateaux
procedure placementDesBateauxJoueur_test();
begin
end;

//Le joueur a-t-il perdu ?
procedure aPerdu_test();  
begin
end;

//Le joueur a-t-il gagné ?
procedure aGagne_test();   
begin
end;

//Tir d'un joueur à la position (ligne,colonne)
procedure tirer_test();
begin


end;


//Lance tous les tests
procedure test();
begin
     initialisationNumeroJoueurEnCours_test();
     JoueurSuivant_test();  
     initialisationJoueur_test();
     placementDesBateauxJoueur_test();
     aPerdu_test();
     aGagne_test();
     tirer_test();

     Summary();
     readln;
end;

end.

