program affichage;
{$codepage UTF8}
uses
    GestionEcran, affichagemenu, affichageObjet;

Begin
    changerTailleConsole(150,35);
    menuPrincipal();
    //menuPartie();
    readln;
    chambre();
    readln;
    deadMenu();
    inventaire();
    forge();
    affichage(1,11,'dragon2');
    readln;
End.

