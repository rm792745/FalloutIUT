unit uniNuit;

{$mode objfpc}{$H+}

interface
procedure evenement;
procedure attaqueLoup;
procedure attaqueZombie;



implementation

uses
  Classes, SysUtils,unittestcombat,Unitpersonnage,UnitMonstres;

procedure evenement;
var alea:Integer;

begin
  randomize;
  alea:=random(50);
  if alea<15 then
    attaqueLoup;
  if alea<30 then
    attaqueZombie
  else if alea<40 then
end;

procedure attaqueLoup;
var
  perso:personnage;

begin
writeln('Vous entendez un hurlement au loin et le temps de vous reveillez, vous voyez s''approcher un loup pret a vous attaquer');
writeln('Qui voulez-vous envoyer combattre (Saisir le nom) ?');
readln(perso.nom);
if perso.nom='Marquet' then
  testcomb(personnage1,loup);
if perso.nom='Correia' then
    testcomb(personnage2,loup);
if perso.nom='Mamkalo' then
  testcomb(personnage3,loup);
if perso.nom='Kachin' then
  testcomb(personnage4,loup);

end;

procedure attaqueZombie;
var
  perso:personnage;
begin
writeln('Vous entendez un grognement au loin et le temps de vous reveillez, vous voyez s''approcher un zombie pret a vous attaquer');
writeln('Qui voulez-vous envoyer combattre (Saisir le nom) ?');
readln(perso.nom);
if perso.nom='Marquet' then
  testcomb(personnage1,zombie);
if perso.nom='Correia' then
    testcomb(personnage2,zombie);
if perso.nom='Mamkalo' then
  testcomb(personnage3,zombie);
if perso.nom='Kachin' then
  testcomb(personnage4,zombie);
end;

end.

