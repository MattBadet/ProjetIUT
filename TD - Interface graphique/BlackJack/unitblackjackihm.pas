unit unitBlackJackIHM;
{$codepage utf8}
{$mode objfpc}{$H+}

interface                 
//IHM du menu principal, renvoie le choix fait par l'utilisateur
//1 -> nouvelle partie
//reste -> quitter
function menuIHM() : String; 
//Affichage d'un message de fin
procedure quitterIHM();   
//Affiche le plateau
procedure affichagePlateau();
//Affiche le menu de choix d'action pour le joueur
function affichageMenuChoix() : integer;  
//Affiche un message au centre de l'écran
procedure affichageMessage(message : String);  
//Affichage du message final (fin de partie)
procedure ecranFinal(message : String);

implementation
uses
    GestionEcran,unitBlackJackLogic,sysUtils;

//IHM du menu principal, renvoie le choix fait par l'utilisateur
//1 -> nouvelle partie
//reste -> quitter
function menuIHM() : String;
begin
     dessinerCadreXY(19,5,100,20,simple,15,0);
     deplacercurseurXY(42,6);
     write('----------------------------------------');
     deplacercurseurXY(48,8);
     write('Bienvenue sur Blackjack 2021');
     deplacercurseurXY(42,10);
     write('----------------------------------------');
     deplacercurseurXY(42,13);
     write('1 - Nouvelle partie');
     deplacercurseurXY(42,15);
     write('2 - Quitter');
     deplacercurseurXY(50,18);
     write('Votre choix : ');
     readln(menuIHM);
end;

//Affichage d'un message de fin
procedure quitterIHM();
begin
  effacerEcran();
  dessinerCadreXY(31,13,88,15,double,15,0);
  deplacercurseurXY(60-(length('AU REVOIR') div 2),14);
  write('AU REVOIR');
  readln;
end;

//Affiche le cadre principal du plateau
procedure affichageCadrePrincipal();
begin
     effacerEtColorierEcran(white);
     dessinerCadreXY(1,1,118,29,simple,black,white);
     dessinerCadreXY(51,0,68,2,simple,black,white);
     deplacercurseurXY(53,1);
     write('BlackJack 2021');
end;

//Affiche le texte de la carte donnée à la position donnée
procedure affichageTextCarte(x,y : integer; carte : typeCarte);
begin

end;

//Affiche une carte (donnée en paramètre) à la position donnée
procedure affichageCarte(x,y : integer; carte : typeCarte);
begin

end;

//Affiche les cartes du joueur
procedure affichageCartesJoueur();
begin
end;

//Affiche les cartes de la banque
procedure affichageCartesBanque();
begin
     for i:=1 to getMainBanque.nbCartes do
     begin
       affichageCarte(5+(i+1
     end;
end;

//Affiche le menu de choix d'action pour le joueur
function affichageMenuChoix() : integer;
begin

end;

//Affiche la valeur des deux mains
procedure affichageValeursMains();
begin
     deplacercurseurXY(3,3);
     write('valeur de le main : ',valeur(getMainBanque()));
     deplacercurseurXY(3,20);
     write('valeur de la main : ',valeur(getMainJoueur());
end;

//Affiche les scores
procedure affichageScores();
begin

end;


//Affiche un message au centre de l'écran
procedure affichageMessage(message : String);
begin

end;

//Affichage du message final (fin de partie)
procedure ecranFinal(message : String);
begin

end;

//Affiche le plateau
procedure affichagePlateau();
begin
     //Affichage du cadre principal
     affichageCadrePrincipal();
     //Affichage des cartes du joueurs et de la banque
     affichageCartesJoueur();
     affichageCartesBanque();
     //Affichage des valeurs des mains
     affichageValeursMains();
     //Affichage des scores
     affichageScores();
end;

end.

