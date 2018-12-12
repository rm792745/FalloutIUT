unit UnitLieu;

{$mode objfpc}{$H+}

interface

type

  lieu=record

    nom : string;
    ressource : string;
    acces : Boolean;

  end;

var
  fermeAc:boolean;

function base():lieu;
function foret():lieu;
function lac():lieu;
function ferme():lieu;
procedure accesF();
procedure initialisationLieu();

implementation

uses UnitRessource;

procedure initialisationLieu();
begin
   fermeAc := FALSE
end;

function base():lieu;
begin
   base.nom:='Base';
   base.acces := TRUE;
end;

function lac():lieu;

begin
  lac.nom:='lac';
  lac.ressource:='Poisson';
  lac.acces := TRUE;
end;

function foret():lieu;

begin
  foret.nom:='foret';
  foret.ressource:='Bois';
  lac.acces := TRUE;
end;

function ferme():lieu;
begin
  ferme.nom:='ferme';
  ferme.ressource:='Legume';
  ferme.acces := fermeAc;
end;

procedure accesF();
begin
  if nbBois >=50 then
  begin
     writeln('la ferme est construite');
     fermeAc:=TRUE;
     rmBois(50);
  end
  else writeln('vous n''avez pas assez de bois');
end;

end.
