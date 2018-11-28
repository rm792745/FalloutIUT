unit UnitRessource;

{$mode objfpc}{$H+}

interface

//Fonction initialisation du jeu
procedure initialisation();

//Fonction affichage du nombre de bois
function nbBois():Integer;

//Fonction augmenter le nombre de bois
procedure getBois(addBois:Integer);

//Fonction affichage du nombre de poisson
function nbPoisson():Integer;

//Fonction augmenter le nombre de poisson
procedure getPoisson(addPoisson:Integer);

uses
  Classes, SysUtils;

implementation

var
  bois:integer;
  poisson:integer;

procedure initialisation();
begin
  bois := 0;
  poisson := 0;
end;

function nbBois():Integer;
begin
  nbBois := bois;
end;

procedure getBois(addBois:Integer);
begin
  bois := bois + addBois;
end;

function nbPoisson():Integer;
begin
  nbPoisson := poisson;
end;

procedure getPoisson(addPoisson:Integer);
begin
  poisson := poisson + addPoisson;
end;

end.

