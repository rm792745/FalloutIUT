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

uses UnitRessource,GestionEcran;

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
     deplacercurseurXY(60,10);
     writeln('la ferme est construite');
     fermeAc:=TRUE;
     rmBois(50);
     effacerEcran;
     deplacercurseurXY(25,5);
     writeln('  __                                               _              _ _  ');
     deplacercurseurXY(25,6);
     writeln(' / _|                                             | |            (_| |   ');
     deplacercurseurXY(25,7);
     writeln('| |_ ___ _ __ _ __ ___   ___    ___ ___  _ __  ___| |_ _ __ _   _ _| |_ ___ ');
     deplacercurseurXY(25,8);
     writeln('|  _/ _ | ''__| ''_ ` _ \ / _ \  / __/ _ \| ''_ \/ __| __| ''__| | | | | __/ _ \');
     deplacercurseurXY(25,9);
     writeln('| ||  __| |  | | | | | |  __/ | (_| (_) | | | \__ | |_| |  | |_| | | ||  __/');
     deplacercurseurXY(25,10);
     writeln('|_| \___|_|  |_| |_| |_|\___|  \___\___/|_| |_|___/\__|_|   \__,_|_|\__\___|');
     deplacercurseurXY(25,25);
     writeln('                                  +&-');
     deplacercurseurXY(25,26);
     writeln('                                _.-^-._    .--.');
     deplacercurseurXY(25,27);
     writeln('                             .-''   _   ''-. |__|');
     deplacercurseurXY(25,28);
     writeln('                            /     |_|     \|  |');
     deplacercurseurXY(25,29);
     writeln('                           /               \  |');
     deplacercurseurXY(25,30);
     writeln('                          /|     _____     |\ |');
     deplacercurseurXY(25,30);
     writeln('                           |    |==|==|    |  | ');
     deplacercurseurXY(25,31);
     writeln('       |---|---|---|---|---|    |--|--|    |  |');
     deplacercurseurXY(25,32);
     writeln('       |---|---|---|---|---|    |==|==|    |  |');
     deplacercurseurXY(25,33);
     writeln('      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^');

  end
  else if  nbBois<50 then
   begin
    deplacercurseurXY(60,10);
    writeln('-----[vous n''avez pas assez de bois]-----');
   end;
end;

end.
