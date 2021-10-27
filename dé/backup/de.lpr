program de;
{$codepage UTF8}

uses SysUtils;

function dee():integer;
var r:integer;
begin
     r:= random(6)+1;
     result:=r;
end;
var
  score1,score2,j1,j2:Integer;
  rep:String;
  fini:Boolean;
begin
  fini:=False;
  score1:=0;
  score2:=0;
  write('Lancer dé ? : ');
    readln(rep);
    if (rep='y') then
    begin
    while fini=False do
    begin
      begin
        j1:=dee();
        sleep(50);
        j2:=dee();
        writeln('Le joueur 1 a :',j1);
        writeln('Le joueur 2 a :',j2);
        if j1>j2 then
        begin
             score1:=score1+1;
             writeln('Joueur 1 à gagner la manche et a ',score1,' points');
        end
        else if j1<j2 then
        begin
             score2:=score2+1;
             writeln('Joueur 2 à gagner la manche et a ',score2,' points');
        end
        else
            writeln('égalité');
        if (score1=10) OR (score2=10) then
         fini:=True;
      end
    end;
  end
  else
        fini:=True;
  writeln('fini');
  writeln('Score :');
  writeln('Joueur 1 : ',score1);
  writeln('Joueur 2 : ',score2);
  readln;
end.

