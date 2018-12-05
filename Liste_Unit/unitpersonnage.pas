unit unitpersonnage;


{$mode objfpc}{$H+}

interface
Type
  personnage = record
    nom : string;
    prenom : string;
    affectation : string;
    tache : string;
    vie : Integer;
    energie : Integer;
    force : Integer;
  end;

function personnage1(): personnage;
function personnage2():personnage;
function personnage3():personnage;
function personnage4():personnage;




implementation


function personnage1():personnage;
begin
 personnage1.nom := 'Marquet';
 personnage1.prenom := 'Robin';
 personnage1.affectation := 'Aucune';
 personnage1.tache := 'Aucune';
 personnage1.vie := 100;
 personnage1.energie := 100;
 personnage1.force := 10;
end;

function personnage2():personnage;
begin
  personnage2.nom := 'Correia';
  personnage2.prenom := 'Lucas';
  personnage2.affectation := 'Aucune';
  personnage2.tache := 'Aucune';
  personnage2.vie := 100;
  personnage2.energie := 100;
  personnage2.force := 10;
end;

function personnage3():personnage;
begin
  personnage3.nom := 'Mamkalo';
  personnage3.prenom := 'Mahmoud';
  personnage3.affectation := 'Aucune';
  personnage3.tache := 'Aucune';
  personnage3.vie := 100;
  personnage3.energie := 100;
  personnage3.force := 10;
end;

function personnage4():personnage;
begin
  personnage4.nom := 'Kachin';
  personnage4.prenom := 'Adil';
  personnage4.affectation := 'Aucune';
  personnage4.tache := 'Aucune';
  personnage4.vie := 100;
  personnage4.energie := 100;
  personnage4.force := 10;
end;




end.

