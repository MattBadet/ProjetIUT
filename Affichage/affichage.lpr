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
    readln;
End.

