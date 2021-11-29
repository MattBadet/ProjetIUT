unit forge;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;
type
  bombe = packed record
    nom:string;
    desc:string;
    degat:integer;
    prix:integer;
  end;

  potion = packed record
    nom:string;
    desc:string;
    effet:integer;
    prix:integer;
  end;
  objet = packed record
    nom:string;
    desc:string;
    stack:integer;
  end;
  arme = packed record
    nom:string;
    desc:string;
    degat:integer;
    material:string;
  end;
  armure = packed record
    nom:string;
    desc:string;
    partie:string;
    def:int;
  end;


procedure initialisationinv();
procedure ajouterinvobjet(obj:objet);
procedure ajouterinvarme(obj:arme);
procedure ajouterinvbombe(obj:bombe);
procedure ajouterinvpotion(obj:potion);
procedure createepee(epe:arme);
procedure afficheinv();

var
  invobjet:array[1..15] of objet;
  invarme:array[1..15] of arme;
  invpotion:array[1..5] of potion;
  invbombe:array[1..3] of bombe;
  invarmure:array[1..5] of armure;
  choix,i:integer;
const
  nullarmure: armure = (
              nom:'null';
              desc:'null';
              partie:'null';
              def:0;
  );
//CUIRE
  casquecuire: armure = (
               nom:'casque en cuire';
               desc:'à mettre sur la tête';
               partie:'casque';
               def:5;
  );
  plastroncuire: armure = (
               nom:'plastron en cuire';
               desc:'à mettre sur le haut du corps';
               partie:'plastron';
               def:5;
  );
  jambierecuire: armure = (
               nom:'jambiere en cuire';
               desc:'à mettre sur le bas du corps';
               partie:'jambiere';
               def:5;
  );
  bottescuire: armure = (
               nom:'bottes en cuire';
               desc:'à mettre sur les pieds';
               partie:'bottes';
               def:5;
  );
//FER
  casquefer: armure = (
               nom:'casque en fer';
               desc:'à mettre sur la tête';
               partie:'casque';
               def:10;
  );
  plastronfer: armure = (
               nom:'plastron en fer';
               desc:'à mettre sur le haut du corps';
               partie:'plastron';
               def:10;
  );
  jambierefer: armure = (
               nom:'jambiere en fer';
               desc:'à mettre sur le bas du corps';
               partie:'jambiere';
               def:10;
  );
  bottesfer: armure = (
               nom:'bottes en fer';
               desc:'à mettre sur les pieds';
               partie:'bottes';
               def:10;
  );
  bouclierfer: armure = (
               nom:'bouclier en fer';
               desc:'pour se protéger';
               partie:'bouclier';
               def:10
  );
//ACIER
casqueacier: armure = (
               nom:'casque en acier';
               desc:'à mettre sur la tête';
               partie:'casque';
               def:15;
  );
  plastronacier: armure = (
               nom:'plastron en acier';
               desc:'à mettre sur le haut du corps';
               partie:'plastron';
               def:15;
  );
  jambiereacier: armure = (
               nom:'jambiere en acier';
               desc:'à mettre sur le bas du corps';
               partie:'jambiere';
               def:15;
  );
  bottesacier: armure = (
               nom:'bottes en acier';
               desc:'à mettre sur les pieds';
               partie:'bottes';
               def:15;
  );
  bouclieracier: armure = (
               nom:'bouclier en fer';
               desc:'pour se protéger';
               partie:'bouclier';
               def:15;
  );
//ECAILLE DE DRAGON
casquescale: armure = (
               nom:'casque en écaille de dragon';
               desc:'à mettre sur la tête';
               partie:'casque';
               def:10;
  );
  plastronscale: armure = (
               nom:'plastron en écaille de dragon';
               desc:'à mettre sur le haut du corps';
               partie:'plastron';
               def:10;
  );
  jambierescale: armure = (
               nom:'jambiere en écaille de dragon';
               desc:'à mettre sur le bas du corps';
               partie:'jambiere';
               def:10;
  );
  bottesscale: armure = (
               nom:'bottes en écaille de dragon';
               desc:'à mettre sur les pieds';
               partie:'bottes';
               def:10;
  );
  bouclierscale: armure = (
               nom:'bouclier en écaille de dragon';
               desc:'pour se protéger';
               partie:'bouclier';
               def:10
  );

  nullbombe: bombe = (
             nom:'null';
             desc:'null';
             degat:0;
             prix:0;
  );
  bombepetite: bombe = (
         nom:'bombe petite';
         desc:'une bombe qui explose';
         degat:100;
         prix:3;
  );
  bombemoyenne: bombe = (
                nom:'bombe grande';
                desc:'une bombequi explose plus fort';
                degat:300;
                prix:7;
  );
  nullpotion: potion = (
              nom:'null';
              desc:'null';
              effet:0;
              prix:0;
  );
  petitepotion: potion = (
                nom:'petite';
                desc:'petite potion';
                effet:10;
                prix:5;
  );
  moyennepotion: potion = (
                nom:'moyenne';
                desc:'moyenne potion';
                effet:20;
                prix:10;
  );
  grandepotion: potion = (
                nom:'petite';
                desc:'grande potion';
                effet:30;
                prix:15;
  );
  nullarm: arme = (
        nom:'null';
        desc:'null';
        degat:0;
  );
  epeefer: arme = (
         nom:'epee en fer';
         desc:'pour le combat';
         degat:5;
         material: 'fer';
  );
  epeeacier: arme = (
         nom:'epee en acier';
         desc:'pour le combat';
         degat:5;
         material: 'acier';
  );
  epeescale: arme = (
         nom:'epee en écaille de dragon';
         desc:'pour le combat';
         degat:5;
         material: 'scale';
  );
  epeedemo: arme = (
         nom:'epee en reste démoniaque';
         desc:'pour le combat';
         degat:5;
         material: 'reste';
  );
  nullobj: objet = (
           nom:'null';
           desc:'null';
  );
  fer: objet = (
       nom:'fer';
       desc:'fer';
       stack:1;
  );
  acier: objet = (
       nom:'acier';
       desc:'acier';
       stack:1;
  );
  scale: objet = (
       nom:'scale';
       desc:'scale';
       stack:1;
  );
  reste: objet = (
       nom:'reste';
       desc:'reste démoniaque';
       stack:1;
  );

implementation
procedure initialisationinv();
var i:integer;
begin
  for i:=1 to length(invarme) do
     invarme[i]:=nullarm;
  for i:=1 to length(invobjet) do
     invobjet[i]:=nullobj;
  for i:=1 to length(invbombe) do
     invbombe[i]:=nullbombe;
  for i:=1 to length(invpotion) do
     invpotion[i]:=nullpotion;
end;
procedure ajouterinvobjet(obj:objet);
var
  fini:Boolean;
  y:integer;
begin
  y:=1;
  fini:=False;
  while fini = False do
  begin
    if invobjet[y].nom = obj.nom then
    begin
       if invobjet[y].stack < 5 then
          invobjet[y].stack:=invobjet[y].stack+1;
       fini:=True;
    end
    else if invobjet[y].nom = 'null' then
    begin
       invobjet[y]:=obj;
       fini:=True
    end
    else if invobjet[y].nom <> 'null' then
    begin
       y:=y+1;
    end;
  end;
end;
procedure ajouterinvarme(obj:arme);
var
  fini:Boolean;
  y:integer;
begin
  y:=1;
  fini:=False;
  while fini = False do
  begin
    if invarme[y].nom = 'null' then
    begin
       invarme[y]:=obj;
       fini:=True
    end;
    if invarme[y].nom <> 'null' then
    begin
       y:=y+1;
       if y > length(invarme) then
       begin
          fini:=True;
          write('inventory full');
       end;
    end;
  end;
end;

procedure ajouterinvbombe(obj:bombe);
var
  fini:Boolean;
  y:integer;
begin
  y:=1;
  fini:=False;
  while fini = False do
  begin
    if invbombe[y].nom = 'null' then
    begin
       invbombe[y]:=obj;
       fini:=True
    end;
    if invbombe[y].nom <> 'null' then
    begin
       if y > length(invbombe) then
       begin
          fini:=True;
          writeln('inventory full');
       end;
       y:=y+1;
    end;
  end;
end;
procedure ajouterinvpotion(obj:potion);
var
  fini:Boolean;
  y:integer;
begin
  y:=1;
  fini:=False;
  while fini = False do
  begin
    if invpotion[y].nom = 'null' then
    begin
       invpotion[y]:=obj;
       fini:=True
    end;
    if invpotion[y].nom <> 'null' then
    begin
       y:=y+1;
       if y > length(invpotion) then
       begin
          fini:=True;
          writeln('inventory full');
       end;
    end;
  end;
end;

procedure createepee(epe:arme);
var
  reussie:Boolean;
  i,comptfer:integer;
begin
  comptfer:=0;
  reussie:=True;
  i:=1;
  while comptfer <> 2 do
  begin
    if (invobjet[i].nom = epe.material) then
    begin
       if invobjet[i].stack>=2 then
       begin
          invobjet[i].stack:=invobjet[i].stack -2 ;
          comptfer:=2;
          if invobjet[i].stack=0 then
             invobjet[i]:=nullobj;
       end;
    end;
    if (i>length(invobjet)) then
    begin
         comptfer:=2;
         reussie:=False;
    end
    else
        i:=i+1;
  end;
  if reussie then
  begin
     writeln('Vous avez reussie a fabriquer une epee en ',epe.material);
     ajouterinvarme(epe);
  end
  else
      writeln('La tentative a echouer');
end;

procedure afficheinv();
var i:integer;
begin
     writeln('----------------------------------------- Objet');
     for i:=1 to length(invobjet) do
        writeln(IntToStr(i) + ':' + invobjet[i].nom ,'  ',invobjet[i].stack );
     writeln('----------------------------------------- Arme');
     for i:=1 to length(invarme) do
        writeln(IntToStr(i) + ':' + invarme[i].nom);
     writeln('----------------------------------------- Bombe');
     for i:=1 to length(invbombe) do
        writeln(IntToStr(i) + ':' + invbombe[i].nom);
     writeln('----------------------------------------- Potion');
     for i:=1 to length(invpotion) do
        writeln(IntToStr(i) + ':' + invpotion[i].nom);
  end;

end.

