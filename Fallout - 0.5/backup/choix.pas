unit Choix;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,gestionecran,unitlieu,date,unitepersonnage,unitressource;

implementation
procedure choix1;
begin
   effacerEcran;
   dessinerCadreXY(0,0,119,29,double,lightgreen,black);
   dessinerCadreXY(2,1,18,5,double,lightgreen,black);
   deplacerCurseurXY(4,2);
   writeJour(vendredi);
   jourSuivant(samedi);
   deplacerCurseurXY(4,4);
   writeMois(novembre);
   deplacerCurseurXY(4,8);
   writeln('Hello');
   dessinerCadreXY(2,26,117,28,double,lightgreen,black);  // ici pour ecrire le choix En bas de l'ecran
   deplacerCurseurXY(4,27);
   write('Choix : ');
   readln;
end.

