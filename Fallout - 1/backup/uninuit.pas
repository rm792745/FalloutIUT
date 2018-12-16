unit uniNuit;

{$mode objfpc}{$H+}

interface
procedure evenement;
{but: activer un evenement aléatoire}
procedure attaqueLoup;
{simule l'attaque d'un loup}
procedure attaqueChien;
{simule l'attaque d'un chien errant}
procedure attaqueRataupe;
{simule l'attaque d'un rataupe}
procedure marchand;
{simule l'arrivée du marchand}
procedure afficherMarchand;
{afficher le menu du marchand}
procedure bilanRessource;



implementation

uses
  Classes, SysUtils,unittestcombat,Unitpersonnage,UnitMonstres,unitdiffchoix,gestionEcran,UnitRessource;

var
  choix:Integer;

procedure evenement;
var alea:Integer;

begin
  randomize;
  alea:=random(50);
  if alea<15 then
    attaqueLoup
  else if alea<30 then
    attaqueRataupe
  else if alea<40 then
    attaqueChien
  else if alea<50 then
    marchand;
end;

procedure attaqueLoup;
var
  perso:personnage;

begin
writeln('Vous entendez un hurlement au loin et le temps de vous reveillez, vous voyez s''approcher un loup prêt à vous attaquer');
writeln('Qui voulez-vous envoyer combattre ?');
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

procedure attaqueChien;
var
  perso:personnage;
begin
writeln('Vous entendez des aboiements incessants qui vous reveillent, ainsi vous vous levez et apercevez un chien errant s''approchant ');
writeln('à grande vitesse.Qui voulez-vous envoyer combattre ?');
readln(perso.nom);
if perso.nom='Marquet' then
  testcomb(personnage1,chien);
if perso.nom='Correia' then
    testcomb(personnage2,chien);
if perso.nom='Mamkalo' then
  testcomb(personnage3,chien);
if perso.nom='Kachin' then
  testcomb(personnage4,chien);
end;

procedure attaqueRataupe;
var
  perso:personnage;
begin
writeln('Vous entendez des grincements sous votre lit. En vous reveillant, vous voyez un rataupe à deux mètres de vous.  ');
writeln('Qui voulez-vous envoyer combattre ?');
readln(perso.nom);
if perso.nom='Marquet' then
  testcomb(personnage1,rataupe);
if perso.nom='Correia' then
    testcomb(personnage2,rataupe);
if perso.nom='Mamkalo' then
  testcomb(personnage3,rataupe);
if perso.nom='Kachin' then
  testcomb(personnage4,rataupe);
end;

procedure marchand;


begin
  writeln('Vous entendez des bruits de pas et vous levez, ainsi vous voyez arriver un étrange personnage');
  writeln('"bonsoir, je suis un marchand vagabond, désirez-vous m''acheter quelque chose ?"');
  readln;
  deplacerCurseurXY(2,50);
  write('Ecrire ici Votre Choix : ');

  readln(choix);
  if choix=1 then
    begin
    afficherMarchand;
    end
  else
    writeln('pas de soucis, je reviendrais une prochaine fois ! ');
  readln

end;

procedure afficherMarchand;

begin
  effacerEcran;
  deplacerCurseurXY(10,5);
  writeln(' __    __     ______     ______     ______     __  __     ______     __   __     _____ ');
  deplacerCurseurXY(10,6);
  writeln('/\ "-./  \   /\  __ \   /\  == \   /\  ___\   /\ \_\ \   /\  __ \   /\ "-.\ \   /\  __-.');
  deplacerCurseurXY(10,7);
  writeln('\ \ \-./\ \  \ \  __ \  \ \  __<   \ \ \____  \ \  __ \  \ \  __ \  \ \ \-.  \  \ \ \/\ \');
  deplacerCurseurXY(10,8);
  writeln(' \ \_\ \ \_\  \ \_\ \_\  \ \_\ \_\  \ \_____\  \ \_\ \_\  \ \_\ \_\  \ \_\\"\_\  \ \____- ');
  deplacerCurseurXY(10,9);
  writeln('  \/_/  \/_/   \/_/\/_/   \/_/ /_/   \/_____/   \/_/\/_/   \/_/\/_/   \/_/ \/_/   \/____/');
  deplacerCurseurXY(2,30);
  writeln('1.Acheter');
  writeln('2.Vendre');
  deplacerCurseurXY(2,50);
  write('Ecrire ici Votre Choix : ');
  readln(choix);
  if choix=1 then
    writeln('suce moi')
  else if choix=2 then
    writeln('lol')
  else
    choix1;
end;

procedure bilanRessource;
begin
  effacerEcran;
  dessinerCadreXY(0,0,119,29,double,lightgreen,black);
  dessinerCadreXY(40,1,87,5,double,lightgreen,black);
  deplacercurseurXY(49,3);
  writeln(' > | RESSOURCES TOTALES | < ');
  deplacercurseurXY(42,11);
  writeln('Bois ---> ',nbBois);
  deplacercurseurXY(42,13);
  writeln('Metaux ---> ',nbMetaux);
  deplacercurseurXY(42,15);
  writeln('Poisson ---> ',nbPoisson);
  deplacercurseurXY(42,17);
  writeln('Legumes ---> ',nbLegume);
  deplacercurseurXY(42,22);
  writeln(' ---------------------------------------- ' );
end;

end.

