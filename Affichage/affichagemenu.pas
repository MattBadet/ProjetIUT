unit affichagemenu;
{$codepage UTF8}
{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils, GestionEcran, affichageObjet;

procedure chambre(); // Menu de la chambre qui donne accès à l'inventaire et au repos
procedure menuPartie(); // Affichage du menu d'une partie
procedure menuPrincipal();
procedure deadMenu();
procedure inventaire(); // afffichage de l'inventaire
procedure forge(); // afffichage de la forge

implementation

procedure chambre(); // Menu de la chambre qui donne accès à l'inventaire et au repos
begin
    effacerEcran();
    affichage(0,0,'plancher');
    affichage(22,10,'grCoffre');
    affichage(49,3,'armure');
    affichage(90,9,'grLit');
end;

procedure menuPartie(); // Affichage du menu d'une partie
begin
    effacerEcran();
    // Module Combat
    affichage(8,20,'epee');
    deplacerCurseurXY(45,31);
    write('Partir en Chasse');
    // Module Forge
    affichage(70,5,'enclume');
    deplacerCurseurXY(75,15);
    write('Forge');
    // Module Chambre
    affichage(110,2,'lit');
    deplacerCurseurXY(112,15);
    write('Chambre');
    // Module Exit
    affichage(120,20,'croix');
    deplacerCurseurXY(123,31);
    write('Quitter');
    // Module Marchand
    affichage(20,3,'marchand');
    deplacerCurseurXY(31,15);
    write('Marchand');
end;

procedure menuPrincipal(); // menu principal du jeux
var
  choix:Integer; // contient le choix du menu
begin
    changerTailleConsole(150,35);
    dessinerCadreXY(38,1,112,8,simple,white,black);
    deplacerCurseurXY(40,3);
    write('  /\/\   ___  _ __  ___| |_ ___ _ __    /\  /\_   _ _ __ | |_ ___ _ __ ');
    deplacerCurseurXY(40,4);
    write(' /    \ / _ \| ''_ \/ __| __/ _ \ ''__|  / /_/ / | | | ''_ \| __/ _ \ ''__|');
    deplacerCurseurXY(40,5);
    write('/ /\/\ \ (_) | | | \__ \ ||  __/ |    / __  /| |_| | | | | ||  __/ |');
    deplacerCurseurXY(40,6);
    write('\/    \/\___/|_| |_|___/\__\___|_|    \/ /_/  \__,_|_| |_|\__\___|_|');
    dessinerCadreXY(60,11,85,15,simple,white,black);
    dessinerCadreXY(60,17,85,21,simple,white,black);
    dessinerCadreXY(60,23,85,27,simple,white,black);
    dessinerCadreXY(60,29,85,33,simple,white,black);
    deplacerCurseurXY(62,13);
    write('1 - Nouvelle Partie');
    deplacerCurseurXY(62,19);
    write('2 - Continuer Partie');
    deplacerCurseurXY(62,25);
    write('3 - Crédit');
    deplacerCurseurXY(62,31);
    write('4 - Quitter');
    affichage(10,2,'decoCelt');
    affichage(124,2,'decoCelt');
    deplacerCurseurXY(88,22);
    readln(choix);
    Case choix of
      1:menuPartie();
      2:menuPartie();
      //3:credit();
      4:write('');
      else
        menuPrincipal();
      end;
    affichage(1,11,'dragon2');
end;

procedure deadMenu();
var
  x,y:Integer;
begin
    effacerEcran();
    x:= 10;
    y:=8;
    deplacerCurseurXY(x,y);
    write('               ,____                                          /   \                                          ____,');
    deplacerCurseurXY(x,y+1);
    write('               |---.\                                 )      ((   ))                                        /.---|');
    deplacerCurseurXY(x,y+2);
    write('       ___     |    `       (@)                      /|\      ))_((     /|\                                 `    |     ___');
    deplacerCurseurXY(x,y+3);
    write('      / .-\  ./=)           |-|                     / | \    (/\|/\)   / | \                      (@)           (=\.  /-. \');
    deplacerCurseurXY(x,y+4);
    write('     |  |"|_/\/|            | | -------------------/--|-voV---\`|''/--Vov-|--\---------------------|-|            |\/\_|"|  |');
    deplacerCurseurXY(x,y+5);
    write('     ;  |-;| /_|            |-|                         ''^`   (o o)  ''^`                          | |            |_\ |;-|  ;');
    deplacerCurseurXY(x,y+6);
    write('    / \_| |/ \ |            | |                               `\Y/''                               |-|            | / \| |_/ \');
    deplacerCurseurXY(x,y+7);
    write('   /      \/\( |            |-|                                                                   | |            | )/\/      \');
    deplacerCurseurXY(x,y+8);
    write('   |   /  |` ) |            | |                             YOU DIED !                            |-|            | ( ''|  \   |');
    deplacerCurseurXY(x,y+9);
    write('   /   \ _/    |            |-|                                                                   | |            |    \_ /   \');
    deplacerCurseurXY(x,y+10);
    write('  /--._/  \    |            | |                                                                   |-|            |    /  \_.--\');
    deplacerCurseurXY(x,y+11);
    write('  `/|)    |    /            |_|___________________________________________________________________| |            \    |    (|\`');
    deplacerCurseurXY(x,y+12);
    write('    /     |   |             (@)              l   /\ /         ( (       \ /\   l                `\|-|             |   |     \');
    deplacerCurseurXY(x,y+13);
    write('  .''      |   |                              l /   V           \ \       V   \ l                  (@)             |   |      ''.');
    deplacerCurseurXY(x,y+14);
    write(' /         \  |                              l/                _) )_          \I                                  |  /         \');
    deplacerCurseurXY(x,y+15);
    write('(_.-.__.__./  /                                                `\ /''                                              \  \.__.__.-._)');
end;

procedure inventaire(); // afffichage de l'inventaire
begin
    effacerEcran();
    dessinerCadreXY(1,1,148,33,simple,white,black);
    dessinerCadreXY(67,0,83,2,simple,white,black);
    deplacerCurseurXY(70,1);
    write('Inventaire');
    dessinerCadreXY(2,3,40,32,simple,white,black);
    dessinerCadreXY(42,3,146,32,simple,white,black);
    deplacerCurseurXY(18,4);
    write('Objet');
    // test remplissage inventaire
    deplacerCurseurXY(5,6);
    write('Inventaire');
    deplacerCurseurXY(5,8);
    write('Inventaire');
    deplacerCurseurXY(5,10);
    write('Inventaire');
    deplacerCurseurXY(5,12);
    write('Inventaire');
    deplacerCurseurXY(5,14);
    write('Inventaire');
    deplacerCurseurXY(5,16);
    write('Inventaire');
    deplacerCurseurXY(5,18);
    write('Inventaire');
    deplacerCurseurXY(5,20);
    write('Inventaire');
    deplacerCurseurXY(5,22);
    write('Inventaire');
    deplacerCurseurXY(5,24);
    write('Inventaire');
    // test statistique objet
    affichage(50,8,'epee');
    dessinerCadreXY(44,24,144,31,simple,white,black);
end;

procedure forge(); // afffichage de la forge
begin
    effacerEcran();
    dessinerCadreXY(1,1,148,34,simple,white,black);
    dessinerCadreXY(71,0,79,2,simple,white,black);
    deplacerCurseurXY(73,1);
    write('Forge');
    dessinerCadreXY(2,3,40,30,simple,white,black);      // objets disponibles
    dessinerCadreXY(42,3,146,30,simple,white,black);   // crafts
    dessinerCadreXY(2,31,146,33,simple,white,black); // resources
    deplacerCurseurXY(5,32);
    write('Ressources Disponilbes : X trucs  X machins ....');
    deplacerCurseurXY(18,4);
    write('Objet');
    // test remplissage forge
    deplacerCurseurXY(5,6);
    write('Objet Forge');
    deplacerCurseurXY(5,8);
    write('Objet Forge');
    deplacerCurseurXY(5,10);
    write('Objet Forge');
    deplacerCurseurXY(5,12);
    write('Objet Forge');
    deplacerCurseurXY(5,14);
    write('Objet Forge');
    deplacerCurseurXY(5,16);
    write('Objet Forge');
    deplacerCurseurXY(5,18);
    write('Objet Forge');
    deplacerCurseurXY(5,20);
    write('Objet Forge');
    deplacerCurseurXY(5,22);
    write('Objet Forge');
    deplacerCurseurXY(5,24);
    write('Objet Forge');
    // test statistique objet
    affichage(50,8,'epee');
    dessinerCadreXY(44,22,144,29,simple,white,black);
end;

end.
