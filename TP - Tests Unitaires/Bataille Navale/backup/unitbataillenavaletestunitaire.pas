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
     //Création de la série de tests
     newTestsSeries('Initialisation du numéro du joueur');

     //Premier test : à l'initialisation doit renvoyer 0
     newTest('Initialisation du numéro du joueur','A l''initialisation');
     initialisationNumeroJoueurEnCours();
     testIsEqual(getNumJoueurEnCours(),0);
end;

//Change de joueur en cours
procedure JoueurSuivant_test();
begin   
     //Création de la série de tests
     newTestsSeries('Passage du tour');

     //Premier test : après un passage de tour, doit renvoyer 1
     newTest('Passage du tour','Après premier tour');
     initialisationNumeroJoueurEnCours();
     JoueurSuivant();
     testIsEqual(getNumJoueurEnCours(),1);

     //Second test : après un second passage de tour, doit renvoyer 0
     newTest('Passage du tour','Après second tour');
     JoueurSuivant();
     testIsEqual(getNumJoueurEnCours(),0);
end;

//Initialise le joueur demandé
//(cartes vides, aucun bateau)
procedure initialisationJoueur_test();
var
  carteBateauVide : boolean; 
  carteTirVide : boolean;
  ligne,colonne : integer;
  i:integer;
begin 
     //Création de la série de tests
     newTestsSeries('Initialisation du joueur');

     for i:=0 to 1 do
     begin
       //Premier test : aucun bateau pour le joueur 0
       newTest('Initialisation du joueur','Nombre de bateau = 0 - '+IntToStr(i));
       initialisationJoueur(i);
       testIsEqual(getJoueurEnCours().nbBateaux,0);

       //Second test : Carte des bateaux vide pour joueur 0
       newTest('Initialisation du joueur','Carte des bateaux vide - '+IntToStr(i));
       carteBateauVide := true;
       for ligne := 1 to 10 do
           for colonne := 1 to 10 do
               if(getJoueurEnCours().carteBateaux[ligne][colonne] <> 0) then  carteBateauVide:=false;
       testIsEqual(carteBateauVide);

       //Troisième test : Carte des tirs vide pour joueur 0
       newTest('Initialisation du joueur','Carte des tirs vide - '+IntToStr(i));
       carteTirVide := true;
       for ligne := 1 to 10 do
           for colonne := 1 to 10 do
               if(getJoueurEnCours().carteTirs[ligne][colonne] <> 0) then  carteTirVide:=false;
       testIsEqual(carteTirVide);

       //On passe au joueur suivant
       JoueurSuivant();

     end;
end;


//Positionne aléatoirement des bateaux
procedure placementDesBateauxJoueur_test();
var
  i:integer;
  nbBateau : integer;
  ligne,colonne : integer;
begin 
     //Création de la série de tests
     newTestsSeries('Placement des bateaux');

     for i:=0 to 1 do
     begin
         //On initialise le joueur
         initialisationJoueur(i);
         //On place les bateaux
         placementDesBateauxJoueur(i);

         //Premier test : nombre de bateaux 
         newTest('Placement des bateaux','Nombre de bateaux - '+IntToStr(i));
         testIsEqual(getJoueurEnCours().nbBateaux,5);

         //Second test : on compte les bateaux sur la carte 
         newTest('Placement des bateaux','Nombre de bateaux sur la carte - '+IntToStr(i));
         nbBateau:=0;
         for ligne := 1 to 10 do
             for colonne := 1 to 10 do
                 if getJoueurEnCours().carteBateaux[ligne][colonne] <> 0 then nbBateau := nbBateau + 1;
         testIsEqual(nbBateau,5);

         //On passe au joueur suivant
         JoueurSuivant();
     end;



     //On place les bateaux du joueurs 0
end;

//Le joueur a-t-il perdu ?
procedure aPerdu_test();  
begin
     //Création de la série de tests
     newTestsSeries('A perdu');

     //Premier test : juste après initialisation
     newTest('A perdu','Juste après initialisation');
     initialisationJoueur(0);
     testIsEqual(aPerdu(0));

     //Second test : juste après placement des bateaux  
     newTest('A perdu','Juste après placement des bateaux');
     placementDesBateauxJoueur(0);
     testIsEqual(not aPerdu(0));
end;

//Le joueur a-t-il gagné ?
procedure aGagne_test();   
begin     
     //Création de la série de tests
     newTestsSeries('A gagné');

     //Premier test : juste après initialisation
     newTest('A gagné','Juste après initialisation');
     initialisationJoueur(0);
     initialisationJoueur(1);
     testIsEqual(aGagne(0));

     //Second test : juste après placement des bateaux
     newTest('A gagné','Juste après placement des bateaux');
     placementDesBateauxJoueur(0);   
     placementDesBateauxJoueur(1);
     testIsEqual(not aGagne(0));
end;

//Tir d'un joueur à la position (ligne,colonne)
procedure tirer_test();
var
  ligne,colonne,ligneBateau,colonneBateau,ligneVide,colonneVide : integer;
begin
     initialisationNumeroJoueurEnCours();
     initialisationJoueur(0);   
     initialisationJoueur(1);
     placementDesBateauxJoueur(0);
     placementDesBateauxJoueur(1);

     //On récupère une case vide et une case avec bateau
     for ligne := 1 to 10 do
         for colonne := 1 to 10 do
             if getJoueurEnCours().carteBateaux[ligne][colonne] <> 0 then
             begin
                 ligneBateau := ligne;
                 colonneBateau := colonne;
             end
             else
             begin
                 ligneVide := ligne;
                 colonneVide := colonne;
             end;

     //On passe au joueur suivant
     JoueurSuivant();

     //Création de la série de tests
     newTestsSeries('Tire');

     //Test d'un tire dans le vide sur le nb de bateau
     newTest('Tire','Tire dans le vide : nombre de bateau');
     tirer(ligneVide,colonneVide);
     joueurSuivant();
     testIsEqual(getJoueurEnCours().nbBateaux,5);
     
     //Test d'un tire dans le vide sur la case
     newTest('Tire','Tire dans le vide : case du bateau');
     testIsEqual(getJoueurEnCours().carteBateaux[ligneVide,colonneVide],0);
                                                     
     //Test d'un tire dans le vide sur la carte des tirs
     newTest('Tire','Tire dans le vide : case de tir');
     joueurSuivant();          
     testIsEqual(getJoueurEnCours().carteTirs[ligneVide,colonneVide],1);

     //Test d'un tire au but sur le nb de bateau
     newTest('Tire','Tire au but : nombre de bateau');
     tirer(ligneBateau,colonneBateau);
     joueurSuivant();
     testIsEqual(getJoueurEnCours().nbBateaux,4);

     //Test d'un tire dans le vide sur la case
     newTest('Tire','Tire au but : case du bateau');
     testIsEqual(getJoueurEnCours().carteBateaux[ligneBateau,colonneBateau],0);

     //Test d'un tire dans le vide sur la carte des tirs
     newTest('Tire','Tire au but : case de tir');
     joueurSuivant();
     testIsEqual(getJoueurEnCours().carteTirs[ligneBateau,colonneBateau],2);




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

