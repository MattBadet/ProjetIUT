unit perso;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
var
  material:=array[1..6] of integer;
type
  player = packed record
    nom:string;
    sexe:string;
    vieActu:integer;
    def:integer;
    atk:integer;
    materiaux:material;
    xp:integer;

  end;

procedure createjoueur();
begin
  nom:name;
  sexe:sex;
  vieActu:300;
  def:0;
  atk:0;

end;

implementation

end.

