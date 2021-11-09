unit UnitBatailleNavaleIHM;
{$codepage utf8}
{$mode objfpc}{$H+}

interface

uses
  UnitBatailleNavaleJoueurs;
                              
//Efface l'écran
procedure effacerEcran();
//Affiche l'écran du joueur
procedure afficherEcranJoueur(j : Joueur);
//Menu de tir, modifie la ligne et la colonne où le joueur souhaite tirer
procedure menuTir(var ligne,colonne : integer); 
//Affichage d'un message
procedure affichageMessage(message : string);

implementation
uses Crt;

procedure indentation();
var
  colonne : integer;
begin
     for colonne:= 0 to 15 do write(' ');
end;

//Efface l'écran
procedure effacerEcran();
begin
     ClrScr;
end;

//Affiche l'écran du joueur
procedure afficherEcranJoueur(j : Joueur);
var
  ligne, colonne : integer;
begin
     writeln;
     indentation();
     for colonne := 0 to 10 do
         write(' ');
     writeln('Joueur ',getNumJoueurEnCours()+1);
     writeln;

     indentation();
     for colonne := 0 to 11 do
         write('-');
     for colonne := 1 to 5 do
         write(' ');
     for colonne := 0 to 11 do
         write('-');

     writeln;

     for ligne := 1 to 10 do
     begin
          indentation();
          write('|');
          for colonne := 1 to 10 do
               if j.carteBateaux[ligne][colonne] = 0 then
                 write(' ')
               else
                 write(j.carteBateaux[ligne][colonne]);
          write('|');
          for colonne := 1 to 5 do
              write(' ');
          write('|');
          for colonne := 1 to 10 do
               if j.carteTirs[ligne][colonne] = 0 then
                 write(' ')
               else
                 write('X');
          write('|');
          writeln;
     end;

     indentation();
     for colonne := 0 to 11 do
         write('-');
     for colonne := 1 to 5 do
         write(' ');
     for colonne := 0 to 11 do
         write('-');
     writeln;
end;

//Menu de tir, modifie la ligne et la colonne où le joueur souhaite tirer
procedure menuTir(var ligne,colonne : integer);
begin        
     writeln;
     writeln('Rentrez les coordonnées de votre prochain tir (ligne puis colonne) :');
     readln(ligne);
     readln(colonne);
end;

//Affichage d'un message
procedure affichageMessage(message : string);
begin
     writeln;
     indentation();
     writeln(message);
     readln;
end;

end.

