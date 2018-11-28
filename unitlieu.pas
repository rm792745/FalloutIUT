unit UnitLieu;



{$mode objfpc}{$H+}



interface

type

  lieu=record

    nom : string;
    ressource : Integer;
    acces : Boolean;

  end;

function foret():lieu;
function lac():lieu;
function ferme():lieu;

implementation

uses UnitRessource;

function lac():lieu;

begin
  lac.nom:='lac';
  lac.ressource:=getPoisson();
  lac.acces := TRUE;
end;

function foret():lieu;

begin
  foret.nom:='la fôret';
  foret.ressource:='();
  lac.acces := TRUE;
end;
procedure ferme():lieu;

begin
  ferme.nom:='la ferme';
  ferme.ressource:='légume';
  ferme.acces := FALSE;
end;

procedure accesF();
if nbBois >=50 then
begin
   writeln('la ferme est consstruite');
   ferme.acces:= TRUE;
   nbBois:=nbBois-50;
end;
else writeln('vous n''avez pas assez de bois');

end.
