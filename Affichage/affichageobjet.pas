unit affichageObjet;
{$codepage UTF8}
{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils, GestionEcran;
procedure affichage(x,y:Integer;objet:string);

implementation

procedure epee(x,y:Integer); // Affichage du symbole "épée" ligne par ligne
begin
    deplacerCurseurXY(x+29,y);
    write('___');
    deplacerCurseurXY(x+28,y+1);
    write('( ((');
    deplacerCurseurXY(x+29,y+2);
    write(') ))');
    deplacerCurseurXY(x+2,y+3);
    write('.::.                    / /(');
    deplacerCurseurXY(x+1,y+4);
    write('''M .-;-.-.-.-.-.-.-.-.-/| ((::::::::::::::::::::::::::::::::::::::::::::::.._');
    deplacerCurseurXY(x,y+5);
    write('(J ( ( ( ( ( ( ( ( ( ( ( |  ))   -====================================-      _.>');
    deplacerCurseurXY(x+1,y+6);
    write('`P `-;-`-`-`-`-`-`-`-`-\| ((::::::::::::::::::::::::::::::::::::::::::::::''');
    deplacerCurseurXY(x+2,y+7);
    write('`::''                    \ \(');
    deplacerCurseurXY(x+29,y+8);
    write(') ))');
    deplacerCurseurXY(x+28,y+9);
    write('(_((');
end;

procedure croix(x,y:Integer); // Affichage du symbole "croix" ligne par ligne
begin
    deplacerCurseurXY(x,y);
    write('___        ___');
    deplacerCurseurXY(x,y+1);
    write('\  \      /  /');
    deplacerCurseurXY(x+1,y+2);
    write('\  \    /  /');
    deplacerCurseurXY(x+2,y+3);
    write('\  \  /  /');
    deplacerCurseurXY(x+3,y+4);
    write('\  \/  /');
    deplacerCurseurXY(x+4,y+5);
    write('|    |');
    deplacerCurseurXY(x+3,y+6);
    write('/  /\  \');
    deplacerCurseurXY(x+2,y+7);
    write('/  /  \  \');
    deplacerCurseurXY(x+1,y+8);
    write('/  /    \  \');
    deplacerCurseurXY(x,y+9);
    write('/__/      \__\');
end;

procedure lit(x,y:Integer); // Affichage du symbole "lit" ligne par ligne
begin
    deplacerCurseurXY(x+12,y);
    write('___');
    deplacerCurseurXY(x+8,y+1);
    write(',-""___""-.');
    deplacerCurseurXY(x+7,y+2);
    write('.;""''| |`"":.');
    deplacerCurseurXY(x+7,y+3);
    write('|| | | | | ||');
    deplacerCurseurXY(x+7,y+4);
    write('||_|_|_|_|_||');
    deplacerCurseurXY(x+6,y+5);
    write('//          /|');
    deplacerCurseurXY(x+5,y+6);
    write('/__         //|');
    deplacerCurseurXY(x+1,y+7);
    write(',-""___""-.    //||');
    deplacerCurseurXY(x,y+8);
    write('.;""''| |`"":.  //');
    deplacerCurseurXY(x,y+9);
    write('||/| | | | || //');
    deplacerCurseurXY(x,y+9);
    write('||_|_|_|_|_||//');
    deplacerCurseurXY(x,y+10);
    write('||_________||/');
    deplacerCurseurXY(x,y+11);
    write('||         ||');
    deplacerCurseurXY(x,y+12);
    write('''''         ''''');
end;

procedure grLit(x,y:Integer); // Affichage du lit de la chambre
begin
  deplacerCurseurXY(x+18,y);
  write('()              ()');
  deplacerCurseurXY(x+11,y+1);
  write('(      ||______________||      )');
  deplacerCurseurXY(x+10,y+2);
  write('(_)     |                |     (_)');
  deplacerCurseurXY(x+10,y+3);
  write('|`|     |     Dormir     |     |`|');
  deplacerCurseurXY(x+5,y+4);
  write('()_  | |     |_______  _______|     | |  _()');
  deplacerCurseurXY(x+7,y+5);
  write('_\_|_|_/_  {_______}{_______}  _\_|_|_/_');
  deplacerCurseurXY(x+8,y+6);
  write('|__~__|___%%%%%%%%%%%%%%%%%%___|__~__|');
  deplacerCurseurXY(x+5,y+7);
  write('___|_____|__%%%%%%%%%%%%%%%%%%%%__|_____|___');
  deplacerCurseurXY(x+8,y+8);
  write('|     | %%%%%%%%%%%%%%%%%%%%%% |     |');
  deplacerCurseurXY(x+9,y+9);
  write('`=====%%%%%%%%%%%%%%%%%%%%%%%%=====`');
  deplacerCurseurXY(x+8,y+10);
  write('`=====%%%%%%%%%%%%%%%%%%%%%%%%%%=====`');
  deplacerCurseurXY(x+7,y+11);
  write('`=====%%%%%%%%%%%%%%%%%%%%%%%%%%%%=====`');
  deplacerCurseurXY(x+6,y+12);
  write('`=====/||||||||||||||||||||||||||||\=====`');
  deplacerCurseurXY(x+5,y+13);
  write('`======||||||||||||||||||||||||||||||======`');
  deplacerCurseurXY(x+4,y+14);
  write('`=======||||||||||||||||||||||||||||||=======`');
  deplacerCurseurXY(x+3,y+15);
  write('`==============================================`');
  deplacerCurseurXY(x+2,y+16);
  write('`================================================`');
  deplacerCurseurXY(x+1,y+17);
  write('`==================================================`');
  deplacerCurseurXY(x,y+18);
  write('`====================================================`');
end;

procedure coffre(x,y:Integer); // Affichage du symbole "coffre" ligne par ligne
begin
    deplacerCurseurXY(x+2,y);
    write('__________');
    deplacerCurseurXY(x+1,y+1);
    write('/\____;;___\');
    deplacerCurseurXY(x,y+2);
    write('| /         /');
    deplacerCurseurXY(x,y+3);
    write('`._________.');
    deplacerCurseurXY(x+1,y+4);
    write('|\         \');
    deplacerCurseurXY(x+1,y+5);
    write('| |---------|');
    deplacerCurseurXY(x+1,y+6);
    write('\ |    °    |');
    deplacerCurseurXY(x+2,y+7);
    write('\|_________|');
end;

procedure grCoffre(x,y:Integer); // Affichage du coffre pour la chambre
begin
  deplacerCurseurXY(x,y);
  write('  ___________________');
  deplacerCurseurXY(x,y+1);
  write(' /\                  \');
  deplacerCurseurXY(x,y+2);
  write('/  \_________;;_______\');
  deplacerCurseurXY(x,y+3);
  write('|  /                  /');
  deplacerCurseurXY(x,y+4);
  write('| /                  /');
  deplacerCurseurXY(x,y+5);
  write('`;__________________;''');
  deplacerCurseurXY(x+1,y+6);
  write('|\                  \');
  deplacerCurseurXY(x+1,y+7);
  write('| \                  \');
  deplacerCurseurXY(x+1,y+8);
  write('|  |------------------|');
  deplacerCurseurXY(x+1,y+9);
  write('\  |                  |');
  deplacerCurseurXY(x+2,y+10);
  write('\ |        °°        |');
  deplacerCurseurXY(x+3,y+11);
  write('\|__________________|');
end;

procedure enclume(x,y:Integer); // Affichage du symbole "enclume" ligne par ligne
begin
    deplacerCurseurXY(x+1,y);
    write('.-------..___');
    deplacerCurseurXY(x+1,y+1);
    write('''-._     :_.-''');
    deplacerCurseurXY(x+5,y+2);
    write(')   (');
    deplacerCurseurXY(x+4,y+3);
    write('/_____\');
end;

procedure marchand(x,y:Integer); //affiche le bust du marchand
begin
    deplacerCurseurXY(x,y);
    write('            ,#####,');
    deplacerCurseurXY(x,y+1);
    write('            #_   _#');
    deplacerCurseurXY(x,y+2);
    write('            |a` `a|');
    deplacerCurseurXY(x,y+3);
    write('            |  u  |');
    deplacerCurseurXY(x,y+4);
    write('            \  =  /');
    deplacerCurseurXY(x,y+5);
    write('            |\___/|');
    deplacerCurseurXY(x,y+6);
    write('   ___ ____/:     :\____ ___');
    deplacerCurseurXY(x,y+7);
    write(' .''   `.-===-\   /-===-.`   ''.');
    deplacerCurseurXY(x,y+8);
    write('/      .-"""""-.-"""""-.      \');

end;

procedure decoCelt(x,y:Integer); // affiche un symbol celt pour déco le menu principal
begin
    deplacerCurseurXY(x,y);
    write('    /\    /\');
    deplacerCurseurXY(x,y+1);
    write('   /  \  /  \');
    deplacerCurseurXY(x,y+2);
    write('  / /\ \/ /\ \');
    deplacerCurseurXY(x,y+3);
    write(' / /  \/ /  \ \');
    deplacerCurseurXY(x,y+4);
    write('/ / /\ \/\/\ \ \');
    deplacerCurseurXY(x,y+5);
    write('\ \ \/\/\ \/ / /');
    deplacerCurseurXY(x,y+6);
    write(' \ \/ / /\/ / /');
    deplacerCurseurXY(x,y+7);
    write('  \ \/\/\ \/\/');
    deplacerCurseurXY(x,y+8);
    write('  /\/\ \/\/\ \');
    deplacerCurseurXY(x,y+9);
    write(' / / /\  / /\ \');
    deplacerCurseurXY(x,y+10);
    write('/ / /\ \/ /\ \ \');
    deplacerCurseurXY(x,y+11);
    write('\ \/  \  /  \ \/');
    deplacerCurseurXY(x,y+12);
    write('/\ \   \/   /\ \');
    deplacerCurseurXY(x,y+13);
    write('\ \/        \ \/');
    deplacerCurseurXY(x,y+14);
    write('/\ \        /\ \');
    deplacerCurseurXY(x,y+15);
    write('\ \/        \ \/');
    deplacerCurseurXY(x,y+16);
    write('/\ \        /\ \');
    deplacerCurseurXY(x,y+17);
    write('\ \/   /\   \ \/');
    deplacerCurseurXY(x,y+18);
    write('/\ \  /  \  /\ \');
    deplacerCurseurXY(x,y+19);
    write('\ \ \/ /\ \/ / /');
    deplacerCurseurXY(x,y+20);
    write(' \ \/ /  \/ / /');
    deplacerCurseurXY(x,y+21);
    write('  \ \/\/\ \/\/');
    deplacerCurseurXY(x,y+22);
    write('  /\/\ \/\/\ \');
    deplacerCurseurXY(x,y+23);
    write(' / / /\/ / /\ \');
    deplacerCurseurXY(x,y+24);
    write('/ / /\ \/\/\ \ \');
    deplacerCurseurXY(x,y+25);
    write('\ \ \/\/\ \/ / /');
    deplacerCurseurXY(x,y+26);
    write(' \ \  / /\  / /');
    deplacerCurseurXY(x,y+27);
    write('  \ \/ /\ \/ /');
    deplacerCurseurXY(x,y+28);
    write('   \  /  \  /');
    deplacerCurseurXY(x,y+29);
    write('    \/    \/');
end;

procedure hero(x,y:Integer); // affiche le héro
begin
    deplacerCurseurXY(x,y);
    writeln('     _,.');
    deplacerCurseurXY(x,y+1);
    writeln('    ,` -.)');
    deplacerCurseurXY(x,y+2);
    writeln('   ( _/-\\-._');
    deplacerCurseurXY(x,y+3);
    writeln('  /,|`--._,-^|            ,');
    deplacerCurseurXY(x,y+3);
    writeln('  \_| |`-._/||          ,''|');
    deplacerCurseurXY(x,y+4);
    writeln('    |  `-, / |         /  /');
    deplacerCurseurXY(x,y+5);
    writeln('    |     || |        /  /');
    deplacerCurseurXY(x,y+6);
    writeln('     `r-._||/   __   /  /');
    deplacerCurseurXY(x,y+7);
    writeln(' __,-<_     )`-/  `./  /');
    deplacerCurseurXY(x,y+8);
    writeln('''  \   `---''   \   /  /');
    deplacerCurseurXY(x,y+9);
    writeln('    |           |./  /');
    deplacerCurseurXY(x,y+10);
    writeln('    /           //  /');
    deplacerCurseurXY(x,y+11);
    writeln('\_/'' \         |/  /');
    deplacerCurseurXY(x,y+12);
    writeln(' |    |   _,^-''/  /');
    deplacerCurseurXY(x,y+13);
    writeln(' |    , ``  (\/  /');
    deplacerCurseurXY(x,y+14);
    writeln('  \,.->._    \X-=/^');
    deplacerCurseurXY(x,y+15);
    writeln('  (  /   `-._//^`');
    deplacerCurseurXY(x,y+16);
    writeln('   `Y-.____(__}');
    deplacerCurseurXY(x,y+17);
    writeln('    |     {__)');
    deplacerCurseurXY(x,y+18);
    writeln('          ()');
end;

procedure armure(x,y:Integer); // affiche une armure à l'endroit souhaité
begin
  deplacerCurseurXY(x+8,y);
  write('{}');
  deplacerCurseurXY(x+7,y+1);
  write('.--.');
  deplacerCurseurXY(x+6,y+2);
  write('/.--.\');
  deplacerCurseurXY(x+6,y+3);
  write('|====|');
  deplacerCurseurXY(x+6,y+4);
  write('|`::`|');
  deplacerCurseurXY(x+2,y+5);
  write('.-;`\..../`;-.');
  deplacerCurseurXY(x+1,y+6);
  write('/  |...::...|  \');
  deplacerCurseurXY(x,y+7);
  write('|   /''''''::''''''\   |');
  deplacerCurseurXY(x,y+8);
  write(';--''\   ::   /\--;');
  deplacerCurseurXY(x,y+9);
  write('<__>,>._::_.<,<__>');
  deplacerCurseurXY(x,y+10);
  write('|  |/   ^^   \|  |');
  deplacerCurseurXY(x,y+11);
  write('\::/|        |\::/');
  deplacerCurseurXY(x,y+12);
  write('|||\|        |/|||');
  deplacerCurseurXY(x,y+13);
  write(''''''' |___/\___| ''''''');
  deplacerCurseurXY(x+5,y+14);
  write('\_ || _/');
  deplacerCurseurXY(x+5,y+15);
  write('<_ >< _>');
  deplacerCurseurXY(x+5,y+16);
  write('|  ||  |');
  deplacerCurseurXY(x+5,y+17);
  write('|  ||  |');
  deplacerCurseurXY(x+4,y+18);
  write('_\.:||:./_');
  deplacerCurseurXY(x+3,y+19);
  write('/____/\____\');
end;

procedure griffon(x,y:Integer);    // affiche le griffon pour les combats
begin
  deplacerCurseurXY(x+14,y);
  write('//           //');
  deplacerCurseurXY(x+13,y+1);
  write('///          ///');
  deplacerCurseurXY(x+12,y+2);
  write('////         ////');
  deplacerCurseurXY(x+11,y+3);
  write('|////       /////');
  deplacerCurseurXY(x+10,y+4);
  write('|))//;     /)))//;');
  deplacerCurseurXY(x+9,y+5);
  write('/)))))/;   /)))))/;');
  deplacerCurseurXY(x+5,y+6);
  write('.---`,))))/;  /)))))))/;');
  deplacerCurseurXY(x+1,y+7);
  write('__--\/6-  \`))/; |)))))))/;');
  deplacerCurseurXY(x,y+8);
  write('(----/    \\\``;  |))))))/;');
  deplacerCurseurXY(x+3,y+9);
  write('~/-\  \\\\\``   \))))))/;');
  deplacerCurseurXY(x+7,y+10);
  write('\\\\\\\\`    |)))))/;');
  deplacerCurseurXY(x+7,y+11);
  write('|\\\\\\\\___/))))))/;__-------.');
  deplacerCurseurXY(x+7,y+12);
  write('//////|  %%_/))))))/;           \___,');
  deplacerCurseurXY(x+6,y+13);
  write('|||||||\   \%%%%VLK;:              \_. \');
  deplacerCurseurXY(x+6,y+14);
  write('|\\\\\\\\\                        |  | |');
  deplacerCurseurXY(x+7,y+15);
  write('\\\\\\\                          |  | |');
  deplacerCurseurXY(x+8,y+16);
  write('|\\\\               __|        /   / /');
  deplacerCurseurXY(x+8,y+17);
  write('| \\__\     \___----  |       |   / /');
  deplacerCurseurXY(x+8,y+18);
  write('|    / |     >     \   \      \  / /');
  deplacerCurseurXY(x+8,y+19);
  write('|   /  |    /       \   \      >/ /  ,,');
  deplacerCurseurXY(x+8,y+20);
  write('|   |  |   |         |   |    // /  //,');
  deplacerCurseurXY(x+8,y+21);
  write('|   |  |   |         |   |   /| |   |\\,');
  deplacerCurseurXY(x+5,y+22);
  write('_--''   _--''   |     _---_---''  |  \ \__/\|/');
  deplacerCurseurXY(x+4,y+23);
  write('(-(-===(-(-(===/    (-(-=(-(-(==/   \____/');
end;
procedure phoenix(x,y:Integer);   // affiche le phoenix
begin
  deplacerCurseurXY(x+16,y);
  write('(                           )');
  deplacerCurseurXY(x+10,y+1);
  write(') )( (                           ( ) )( (');
  deplacerCurseurXY(x+7,y+2);
  write('( ( ( )  ) )                     ( (   (  ) )(');
  deplacerCurseurXY(x+6,y+3);
  write(') )     ,,\\\                     ///,,       ) (');
  deplacerCurseurXY(x+3,y+4);
  write('(  ((    (\\\\//                     \\////)      )');
  deplacerCurseurXY(x+4,y+5);
  write(') )    (-(__//                       \\__)-)     (');
  deplacerCurseurXY(x+3,y+6);
  write('(((   ((-(__||                         ||__)-))    ) )');
  deplacerCurseurXY(x+2,y+7);
  write(') )   ((-(-(_||           ```\__        ||_)-)-))   ((');
  deplacerCurseurXY(x+2,y+8);
  write('((   ((-(-(/(/\\        ''; 9.- `      //\)\)-)-))    )');
  deplacerCurseurXY(x+3,y+9);
  write(')   (-(-(/(/(/\\      '';;;;-\~      //\)\)\)-)-)   (   )');
  deplacerCurseurXY(x,y+10);
  write('(  (   ((-(-(/(/(/\======,:;:;:;:,======/\)\)\)-)-))   )');
  deplacerCurseurXY(x+4,y+11);
  write(')  ''(((-(/(/(/(//////:%%%%%%%:\\\\\\)\)\)\)-)))`  ( (');
  deplacerCurseurXY(x+3,y+12);
  write('((   ''((-(/(/(/(''uuuu:WWWWWWWWW:uuuu`)\)\)\)-))`    )');
  deplacerCurseurXY(x+5,y+13);
  write('))  ''((-(/(/(/(''|||:wwwwwwwww:|||'')\)\)\)-))`    ((');
  deplacerCurseurXY(x+2,y+14);
  write('(   ((   ''((((/(/(''uuu:WWWWWWWWW:uuu`)\)\))))`     ))');
  deplacerCurseurXY(x+8,y+15);
  write('))   '':::UUUUUU:wwwwwwwww:UUUUUU:::``     ((   )');
  deplacerCurseurXY(x+10,y+16);
  write('((      ''''''''''''''\uuuuuuuu/``````         ))');
  deplacerCurseurXY(x+11,y+17);
  write('))            `JJJJJJJJJ`           ((');
  deplacerCurseurXY(x+13,y+18);
  write('((            LLLLLLLLLLL         ))');
  deplacerCurseurXY(x+15,y+19);
  write('))         ///|||||||\\\       ((');
  deplacerCurseurXY(x+17,y+20);
  write('))      (/(/(/(^)\)\)\)       ((');
  deplacerCurseurXY(x+18,y+21);
  write('((                           ))');
  deplacerCurseurXY(x+20,y+22);
  write('((                       ((');
  deplacerCurseurXY(x+22,y+23);
  write('( )( ))( ( ( ) )( ) (()');
end;
procedure dragon1(x,y:Integer);  // affiche le 1er dragon
begin
  deplacerCurseurXY(x+3,y);
      write('(  )   /\   _                 (');
      deplacerCurseurXY(x+4,y+1);
      write('\ |  (  \ ( \.(               )                      _____');
      deplacerCurseurXY(x+2,y+2);
      write('\  \ \  `  `   ) \             (  ___                 / _   \');
      deplacerCurseurXY(x+1,y+3);
      write('(_`    \+   . x  ( .\            \/   \____-----------/ (o)   \_');
      deplacerCurseurXY(x,y+4);
      write('- .-               \+  ;          (  O                           \____');
      deplacerCurseurXY(x+24,y+5);
      write(')        \_____________  `              \  /');
      deplacerCurseurXY(x,y+6);
      write('(__                +- .( -''.- <. - _  VVVVVVV VV V\                 \/');
      deplacerCurseurXY(x,y+7);
      write('(_____            ._._: <_ - <- _  (--  _AAAAAAA__A_/               |');
      deplacerCurseurXY(x+2,y+8);
      write('.    /./.+-  . .- /  +--  - .     \______________//_              \_______');
      deplacerCurseurXY(x+2,y+9);
      write('(__ '' /x  / x _/ (                                  \___''          \     /');
      deplacerCurseurXY(x+1,y+10);
      write(', x / ( ''  . / .  /                                      |           \   /');
      deplacerCurseurXY(x+4,y+11);
      write('/  /  _/ /    +                                      /              \/');
      deplacerCurseurXY(x+3,y+12);
      write('''  (__/                                             /                  \');
end;
procedure dragon2(x,y:Integer); // affiche le 2e dragon
begin
  deplacerCurseurXY(x+13,y);
      write('(');
      deplacerCurseurXY(x+11,y+1);
      write(')  )        \/');
      deplacerCurseurXY(x+9,y+2);
      write('(   ) @       /^');
      deplacerCurseurXY(x+7,y+3);
      write(')  )) @@  )    /  ^');
      deplacerCurseurXY(x+6,y+4);
      write('( ( ) )@@      /    ^');
      deplacerCurseurXY(x+4,y+5);
      write('))  ( @@ @ )    /      ^');
      deplacerCurseurXY(x+3,y+6);
      write('( ( @@@@@(@     /       |\_/|,');
      deplacerCurseurXY(x+2,y+7);
      write(')  )@@@(@@@     /      _/~/~/~|C');
      deplacerCurseurXY(x,y+8);
      write('((@@@(@@@@@(     /     _(@)~(@)~/\C');
      deplacerCurseurXY(x+2,y+9);
      write('))@@@(@@)@@   /     /~/~/~/~/`\~`C');
      deplacerCurseurXY(x+3,y+10);
      write(')@@@@(@@)@@@(     (o~/~o)^,) \~ \C');
      deplacerCurseurXY(x+4,y+11);
      write('( (@@@)@@@(@@@@@@_~^~^~,-/\~ \~ \C/');
      deplacerCurseurXY(x+6,y+12);
      write('@ )@@@(@@@@@@@   \^^^/  (`^\.~^ C');
      deplacerCurseurXY(x+7,y+13);
      write('(@ (@@@@(@@      `''  (( ~  .` .');
      deplacerCurseurXY(x+11,y+14);
      write('@jgs@             (((` ~ .-~');
      deplacerCurseurXY(x+10,y+15);
      write('/                 /~((((` . ~');
      deplacerCurseurXY(x+9,y+16);
      write('/                 /~-((((((`.\');
      deplacerCurseurXY(x+8,y+17);
      write('/                 /-~-/(((((((`');
      deplacerCurseurXY(x+7,y+18);
      write('/                 /~-~/  `((((((');
      deplacerCurseurXY(x+6,y+19);
      write('/              ___/-~-/     `""""');
      deplacerCurseurXY(x+5,y+20);
      write('/         _____/  /~-~/');
      deplacerCurseurXY(x+4,y+21);
      write('/    _____/        ((((');
      deplacerCurseurXY(x+4,y+22);
      write('\___/');
end;
procedure affichageMonstre(x,y,idM:Integer); // affiche le monstre dont on a fait la demande
begin
    case idM of
    1:griffon(x,y); // lance la procedure de l'affichage du griffon
    2:phoenix(x,y); // du phoenix
    3:dragon1(x,y); // du 1er dragon
    4:dragon2(x,y); // du 2e dragon
    end;
end;

procedure plancher();  // affiche l'arrière plan de la chambre
begin
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |');
  writeln('                  |__________________________________________________________________________________________________________________________________');
  writeln('                 /|__________________________________________________________________________________________________________________________________');
  writeln('                / /\     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \   ');
  writeln('               / /  \     \     \     \     \_____\     \     \     \     \     \     \     \     \_____\     \     \     \     \_____\     \_____\  ');
  writeln('              / /    \_____\     \     \     \     \     \     \     \_____\     \     \     \     \     \     \     \_____\     \     \     \     \_');
  writeln('             / /\     \     \     \_____\     \     \     \_____\     \     \     \     \     \_____\     \     \     \     \     \     \_____\     \');
  writeln('            / /  \     \     \_____\     \     \     \_____\     \     \     \_____\     \     \     \     \_____\     \     \     \     \     \     ');
  writeln('           / /    \_____\     \     \     \_____\     \     \     \_____\     \     \     \_____\     \     \     \     \     \     \     \     \    ');
  writeln('          / /\     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \_____\     \_____\     \     \   ');
  writeln('         / /  \     \     \     \     \     \     \     \     \     \     \     \     \_____\     \     \     \     \     \     \     \     \     \__');
  writeln('        / /    \     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \_____\     \     \     \     \_____\     \ ');
  writeln('       / /\     \     \     \_____\     \     \     \_____\     \     \     \_____\     \     \     \     \     \     \     \_____\     \     \     \');
  writeln('      / /__\     \_____\     \     \     \     \     \     \     \     \     \     \     \     \     \_____\     \     \     \     \_____\     \_____');
  writeln('     / /    \     \     \     \     \_____\     \_____\     \     \     \     \     \_____\     \     \     \     \     \     \     \     \     \    ');
  writeln('    / /\     \_____\     \     \     \     \_____\     \     \     \_____\     \     \     \     \     \     \     \_____\     \     \     \     \   ');
  writeln('   / /__\     \     \     \     \     \     \     \     \     \     \     \     \     \     \     \_____\     \     \     \     \     \     \     \  ');
  writeln('  / /    \_____\     \     \     \     \     \     \     \     \_____\     \     \     \     \     \     \     \     \     \_____\     \     \_____\ ');
  writeln(' / /\     \     \     \     \_____\     \_____\     \     \     \     \     \_____\     \     \     \     \_____\     \     \     \     \_____\     \');
  writeln('/ /  \     \     \     \     \     \     \     \     \_____\     \     \     \     \     \_____\     \     \     \_____\     \     \     \     \     ');
end;

procedure affichage(x,y:Integer;objet:string); // lance l'affichage de l'objet/monstre demandé
begin
  case objet of
  'plancher':plancher();
  'griffon':griffon(x,y);
  'phoenix':phoenix(x,y);
  'dragon1':dragon1(x,y);
  'dragon2':dragon2(x,y);
  'armure':armure(x,y);
  'hero':hero(x,y);
  'decoCelt':decoCelt(x,y);
  'marchand':marchand(x,y);
  'epee':epee(x,y);
  'croix':croix(x,y);
  'lit':lit(x,y);
  'coffre':coffre(x,y);
  'grCoffre':grCoffre(x,y);
  'enclume':enclume(x,y);
  'grLit':grLit(x,y);
  end;
end;

end.
