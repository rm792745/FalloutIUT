unit unitpersonnage;

{$mode objfpc}{$H+}

interface
uses GestionEcran;


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

function personnage1():personnage;
function personnage2():personnage;
function personnage3():personnage;
function personnage4():personnage;
procedure dessinerPerso;


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

procedure dessinerPerso;
begin
deplacerCurseurXY(17,3);
writeln('#############');
deplacerCurseurXY(17,4);
writeln('##         ##');
deplacerCurseurXY(17,5);
writeln('#  ~~   ~~  #');
deplacerCurseurXY(17,6);
writeln('#  ()   ()  #');
deplacerCurseurXY(17,7);
writeln('(     ^     )');
deplacerCurseurXY(17,8);
writeln(' |         | ');
deplacerCurseurXY(17,9);
writeln(' |  {===}  | ');
deplacerCurseurXY(17,10);
writeln(' \         /  ');
deplacerCurseurXY(17,11);
writeln(' /  -----  \ ');
deplacerCurseurXY(15,12);
writeln('---  |%\ /%|  ---');
deplacerCurseurXY(14,13);
writeln('/     |%%%%%|     \');
deplacerCurseurXY(14,14);
writeln('      |%/ \%|      ');
deplacerCurseurXY(21,2);
couleurtexte(yellow);
writeln(combattant1.prenom);
deplacerCurseurXY(96,16);
couleurtexte(lightred);
writeln('-',degat1);
couleurtexte(lightgreen);
end;



end.

