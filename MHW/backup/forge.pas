unit forge;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils;
type
  objet = packed record
    nom:string;
    desc:string;
  end;
  arme = packed record
    nom:string;
    desc:string;
    degat:integer;
    material:string;
  end;

procedure initialisationinv();
procedure ajouterinvobjet(obj:objet);
procedure ajouterinvarme(obj:arme);
procedure createepee(epe:arme);
procedure afficheinv();

var
  invobjet:array[1..15] of objet;
  invarme:array[1..15] of arme;
  choix,i:integer;
const
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
  epeedemo: arme = (
         nom:'epee en reste';
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
  );
  reste: objet = (
       nom:'reste';
       desc:'reste';
  );

implementation
procedure initialisationinv();
var i:integer;
begin
  for i:=1 to length(invarme) do
     invarme[i]:=nullarm;
  for i:=1 to length(invobjet) do
     invobjet[i]:=nullobj;
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
    if invobjet[y].nom = 'null' then
    begin
       invobjet[y]:=obj;
       fini:=True
    end;
    if invobjet[y].nom <> 'null' then
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

procedure createepee(epe:arme);
var
  reussie:Boolean;
  i,comptfer:integer;
begin
  comptfer:=0;
  reussie:=True;
  i:=1;
  writeln('test1');
  while comptfer <> 2 do
  begin
    writeln('test2');
    if (invobjet[i].nom = epe.material) then
    begin
       writeln('test3');
       comptfer:=comptfer+1;
       writeln(i);
       i:=i+1;
    end;
    if (i>length(invobjet)) then
    begin
         writeln('test4');
         compteur:=2;
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
     for i:=1 to length(invobjet) do
        writeln(IntToStr(i) + ':' + invobjet[i].nom);
     writeln('-----------------------------------------');
     for i:=1 to length(invarme) do
        writeln(IntToStr(i) + ':' + invarme[i].nom);
  end;

end.

