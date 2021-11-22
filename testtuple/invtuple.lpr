program invtuple;
type
  arme = packed record
    nom: string;
    desc: string;
    degat: integer;
  end;
  joueur = packed record
    nom: string;
    sexe:string;
    race:string;
  end;
  objet = packed record
    nom:string;
    desc:string;
  end;

const
  hache: arme = (
         nom:'hache';
         desc:'pour couper duu bois';
         degat:10;
  );
  epee: arme = (
         nom:'epee';
         desc:'pour le combat';
         degat:5;
  );
  fer: objet = (
       nom:'fer';
       desc:'fer';
  );
var
  invarme:array[1..2] of arme;
  invobjet:array[1..2] of objet;
  i:integer;
  perso:joueur;
procedure createepee();
  var i,compt:integer;
  begin
     compt:=0;
     for i:=1 to length(invobjet) do
         if invobjet[i].nom = 'fer' then
            compt:=compt+1;
         if compt=2 then
            writeln('vous pouvez fabriquer l''epee');

  end;
begin
   invarme[1]:=hache;
   invarme[2]:=epee;
   for i:=1 to length(invarme) do
       writeln(invarme[i].nom);

  writeln(invarme[1].nom);
  writeln(invarme[2].nom);

  perso.nom:='elon';
  perso.sexe:='homme';
  perso.race:='humain';

  writeln(perso.nom ,' est un ',perso.sexe, ' de race ',perso.race);

  invobjet[1]:=fer;
  createepee();
  readln;
end.

