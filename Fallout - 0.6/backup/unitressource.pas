unit UnitRessource;

{$mode objfpc}{$H+}

interface

//Procedure d'initialisation du jeu
procedure initialisation();


//Procedure pour augmenter le nombre de bois
procedure getBois(addBois:Integer);
//Procedure pour augmenter le nombre de poisson
procedure getPoisson(addPoisson:Integer);
//Procedure pour augmenter le nombre de legume
procedure getLegume(addLegume:Integer);
//Procedure pour augmenter le nombre de metaux
procedure getMetaux(addMetaux:Integer);

//Fonction affichage du nombre de bois
function nbBois():Integer;
//Fonction affichage du nombre de poisson
function nbPoisson():Integer;
//Fonction affichage du nombre de legume
function nbLegume():Integer;
//Fonction affichage du nombre de metaux
function nbMetaux():Integer;

//Procedure pour diminuer le nombre de bois
procedure rmBois(moinBois:Integer);
//Procedure pour diminuer le nombre de poisson
procedure rmPoisson(moinPoisson:Integer);
//Procedure pour diminuer le nombre de legume
procedure rmLegume(moinLegume:Integer);
//Procedure pour diminuer le nombre de metaux
procedure rmMetaux(moinMetaux:Integer);

implementation

var
  bois:integer;
  poisson:integer;
  legume:integer;

procedure initialisation();
begin
  bois := 0;
  poisson := 0;
  legume := 0;
end;

// ------------ AFFICHER RESSOURCE ---------------

function nbBois():Integer;
begin
  nbBois := bois;
end;

function nbPoisson():Integer;
begin
  nbPoisson := poisson;
end;

function nbLegume():Integer;
begin
  nbLegume := legume;
end;

function nbMetaux():Integer;
begin
  nbMetaux := metaux;
end;

// ----------- AJOUTER RESSOURCE ------------

procedure getBois(addBois:Integer);
begin
  bois := bois + addBois;
end;

procedure getPoisson(addPoisson:Integer);
begin
  poisson := poisson + addPoisson;
end;

procedure getLegume(addLegume:Integer);
begin
  legume := legume + addLegume;
end;

procedure getMetaux(addMetaux:Integer);
begin
  metaux := metaux + addMetaux;
end;

//---------ENLEVER RESSOURCE -----------

procedure rmBois(moinBois:Integer);
begin
  bois := bois - moinBois;
end;

procedure rmPoisson(moinPoisson:Integer);
begin
  poisson := poisson - moinPoisson;
end;

procedure rmLegume(moinLegume:Integer);
begin
  legume := legume - moinLegume;
end;

procedure rmMetaux(moinMetaux:Integer);
begin
  metaux := metaux - moinMetaux;
end;

end.
