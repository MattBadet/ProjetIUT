//Unité contenant les fonctionnalités liées aux joueurs
unit UnitBatailleNavaleJoueurs;
{$codepage utf8}
{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;

// ----- TYPES -----
type

  Bateau = record                               //Type représentant un bateau
         num : integer;                         //Nom du bateau
         pv : integer;                          //Point de vie du bateau
  end;

  tabBateau = array[1..5] of Bateau;            //Tableau de bateau
  tabMap = array[1..10,1..10] of integer;

  Joueur = record                               //Type représentant un joueur
         bateaux : tabBateau;                   //Liste de ses bateaux
         nbBateaux : integer;                   //Nombre de bateaux
         carteBateaux : tabMap;                 //Carte de ses bateaux
         carteTirs : tabMap;                    //Carte des tirs

  end;
       
// ----- FONCTIONS ET PROCEDURES -----

//Renvoie le numéro du joueur en cours
function getNumJoueurEnCours() : integer;

//Renvoie le numéro du joueur en cours (en lecture seule)
function getJoueurEnCours() : Joueur;

//Change de joueur en cours
procedure JoueurSuivant();

//Initialise le joueur demandé
//(cartes vides, aucun bateau)
procedure initialisationJoueur(numero : integer);

//Initialise le numéro du joueur en cours (début de partie)
procedure initialisationNumeroJoueurEnCours();

//Positionne aléatoirement des bateaux
procedure placementDesBateauxJoueur(numero : integer);
   
//Le joueur a-t-il perdu ?
function aPerdu(numero : integer) : boolean;
      
//Le joueur a-t-il gagné ?
function aGagne(numero : integer) : boolean;

//Tir d'un joueur à la position (ligne,colonne)
function tirer(ligne,colonne : integer) : string;

implementation


type
  tabJoueur = array[0..1] of Joueur;            //Tableau de joueur

var
   joueurs : tabJoueur;                         //Tableau des 2 joueurs de la partie
   numJoueurEnCours : integer;                  //Numéro du joueur en cours

//Renvoie le numéro du joueur en cours
function getNumJoueurEnCours() : integer;
begin
  getNumJoueurEnCours := numJoueurEnCours;
end;

function getJoueurEnCours() : Joueur;
begin
  getJoueurEnCours := joueurs[numJoueurEnCours];
end;

//Change de joueur en cours
procedure JoueurSuivant();
begin
  numJoueurEnCours := numJoueurEnCours+1;
end;

//Initialise le joueur demandé   
//(cartes vides, aucun bateau)
procedure initialisationJoueur(numero : integer);
var
   ligne,colonne : integer;
begin
   joueurs[numero].nbBateaux := numero;
   for ligne:=1 to 10 do
       for colonne:=1 to 10 do
       begin
            joueurs[numero].carteBateaux[ligne][colonne] := ligne;
            joueurs[numero].carteTirs[ligne][colonne] := ligne;
       end;
end;

//Initialise le numéro du joueur en cours (début de partie)
procedure initialisationNumeroJoueurEnCours();
begin
     numJoueurEnCours:=0;
end;


//Positionne aléatoirement des bateaux
procedure placementDesBateauxJoueur(numero : integer);
var
   i:integer;
   ligne,colonne : integer;
   place : boolean;
begin
   for i:=1 to 5 do
   begin
       place := false;
       //Tant que le bateau n'est pas placé
       while (not place) do
       begin
           //On choisit une case aléatoirement
           ligne := random(10)+1;
           colonne := random(10)+1;

           //Si la case est libre on place le bateau
           if(joueurs[numero].carteBateaux[ligne][colonne] = 0) then
           begin
                joueurs[numero].carteBateaux[ligne][colonne] := i;
                joueurs[numero].nbBateaux:=joueurs[numero].nbBateaux+1;
                place := true;
           end;
       end;
   end;
end;

//Le joueur a-t-il perdu ?
function aPerdu(numero : integer) : boolean;
begin
    aPerdu := (joueurs[numero].nbBateaux = 0);
end;

//Le joueur a-t-il gagné ?
function aGagne(numero : integer) : boolean;
begin
     aGagne := aPerdu((numero + 1) mod 2);
end;

//Tir d'un joueur à la position (ligne,colonne)
//Renvoie le message à afficher
function tirer(ligne,colonne : integer) : string;
var
   numJoueurCible : integer;  //Numéro du joueur cible
   message : string;          //Message a affiché pour le joueur
begin
   //Calcul le numéro du joueur cible
   numJoueurCible := (numJoueurEnCours+1) mod 2;
   //Initialise le début du message à afficher au joueur
   message := 'Vous avez tirer en (' + IntToStr(ligne) + ',' + IntToStr(colonne)+').';

   //Si le tir est un succès
   if(joueurs[numJoueurCible].carteBateaux[ligne][colonne] <> 0) then
   begin
      //On note le tir comme un succès
      joueurs[numJoueurEnCours].carteTirs[ligne][colonne] := 2;
      //On supprime le bateau
      joueurs[numJoueurCible].carteBateaux[ligne][colonne] := 0;
      //On diminue le nombre de bateau du joueur cible
      joueurs[numJoueurCible].nbBateaux:=joueurs[numJoueurCible].nbBateaux-1;
      //On complète le message
      message := message + ' Vous avez détruit l''un des bateaux adverses !';
   end
   //Si le tir est un échec
   else
   begin
      //On note le tir comme un échec
      joueurs[numJoueurEnCours].carteTirs[ligne][colonne] := 2;
      //On complète le message
      message := message + ' Vous n''avez rien touché !';
   end;
   //On affiche le message
   tirer := message;
end;

end.

