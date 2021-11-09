//Unitée contenant les fonctionnalités principales du jeu
unit UnitBatailleNavaleLogic;
{$codepage utf8}
{$mode objfpc}{$H+}

interface

// ----- FONCTIONS ET PROCEDURES -----
procedure partie();

implementation
uses
  UnitBatailleNavaleJoueurs,UnitBatailleNavaleIHM,sysutils;



//Initialise la partie
procedure initialisation();
var
   i:integer;
begin
     randomize;
     for i:=0 to 1 do
       initialisationJoueur(i);
     initialisationNumeroJoueurEnCours();
end;

//On place les bateaux des joueurs
procedure placementDesBateaux();
var
   i : integer;
begin
     for i:=0 to 1 do
       placementDesBateauxJoueur(i);
end;

//Tour du joueur en question
procedure tour();
var
   ligne,colonne : integer;
begin
     effacerEcran();
     afficherEcranJoueur(getJoueurEnCours());
     menuTir(ligne,colonne);
     affichageMessage(tirer(ligne,colonne));
end;

//Déroulement d'une partie
procedure partie();
begin
     //Initialisation de la partie
     initialisation();
     //Fait placer les bateaux
     placementDesBateaux();
     //Tant que le joueur en cours n'a ni perdu ni gagné
     while((not aGagne(getNumJoueurEnCours())) AND (not aPerdu(getNumJoueurEnCours()))) do
     begin
          //Tour du joueur en cours
          tour();
          //On passe au joueur suivant
          JoueurSuivant();
     end;

     //On affiche le résultat
     JoueurSuivant();
     effacerEcran();
     affichageMessage('Le joueur ' + IntToStr(getNumJoueurEnCours()+1)+' à gagné !');
     readln;
end;


end.

