unit unitdiffchoix;

{$mode objfpc}{$H+}

interface
 uses
  Classes, SysUtils,gestionecran,unitlieu,unitdate,unitpersonnage,unitressource;
 procedure choix1;      // pour option 1 de l'ecran qui est "commencez"
 procedure choixbas;    // pour choisir le choix  en bas de l'ecran 1, 2 ou  3
 procedure MenuPrec;    // pour revenir à l'ecran precedent
 procedure ecranprincipale; // le menu principale du jeu ;
 procedure listeRessource; // Afficher la liste des ressources
 procedure listeHabitant; //Afficher la liste des habitants
 procedure envoyerHabitant; //Envoyer un habitant
 procedure zoneHabitant; //La zone selectionné pour l'habitant
 function choixLieu(nomL:string):lieu; //Connaitre le lieu séléctionné
 function choixPersonnage(nom:string):personnage;  //Connaitre le personnage séléctionné
implementation
var
    actPerso:personnage;
    actLieu:lieu;

procedure choix1;
var option1:integer;
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
   writeln('Description du jeu avec les differentes options possible');
   deplacercurseurXY(4,12);
   writeln('1- Consulter la liste des Habitants');
   deplacercurseurXY(4,15);
   writeln('2- Consulter la liste des Ressources ');
   deplacercurseurXY(4,18);
   writeln('3- Envoyer un habitant ');
   deplacercurseurXY(4,21);
   writeln('4- Quitter ');
   dessinerCadreXY(2,26,117,28,double,lightgreen,black); // ici pour ecrire le choix En bas de l'ecran
   deplacerCurseurXY(4,27);
   write('Choix : ');
   readln(option1);
   if option1 = 1 then
      listeHabitant;
   if option1 = 2 then
      listeRessource;
   if option1 = 3 then
      envoyerHabitant;
   if option1 = 4 then
      ecranprincipale;

end;

{pour le nom CHOIX en bas de l'ecran affiche }
procedure ChoixBas;
begin
   dessinerCadreXY(2,26,117,28,double,lightgreen,black);  // ici pour ecrire le choix En bas de l'ecran
   deplacerCurseurXY(4,27);
   write('Choix : ');
   end;

{Procedure pour afficher les ressources}
procedure listeRessource;
begin
effacerEcran;   //right , Down , left , down
      dessinerCadreXY(0,0,119,29,double,lightgreen,black);
      dessinerCadreXY(40,1,87,5,double,lightgreen,black);
      deplacercurseurXY(42,3);
      writeln('  > | Liste DES RESSOURCES DISPONIBLE | < ');
      deplacercurseurXY(58,8);
      writeln(' NOURRITURE ' );
      deplacercurseurXY(42,9);
      writeln(' ---------------------------------------- ' );
      deplacercurseurXY(42,11);
      writeln(' Poisson : ', nbpoisson);
      deplacercurseurXY(42,13);
      writeln(' Legume  : ' , nblegume);
      deplacercurseurXY(42,15);
      writeln(' ---------------------------------------- ' );
      deplacercurseurXY(58,16);
      writeln(' MATERIAUX ');
      deplacercurseurXY(42,18);
      writeln(' Bois    : ' ,nbbois);
      deplacercurseurXY(42,22);
      writeln(' ---------------------------------------- ' );
                { pour revenir au menu prec }
      menuprec;
                { pour ajouter les diffrents choix possible ex : liste ressource , habitant etc , }
      readln;
end;

{Pour revenir au menu precedent facilement}
procedure MenuPrec;
var revenir:integer;
begin
   dessinerCadreXY(2,26,117,28,double,lightgreen,black);  // ici pour ecrire le choix En bas de l'ecran
   deplacerCurseurXY(4,27);
   write('Pour Revenir au menu precedent Ecrivez 1  : ');
   readln(revenir);
   if revenir= 1 then
   begin
     choix1;
   end
   else
   begin
     repeat menuprec

     until revenir=1 ;
   end;
end;

{Pour envoyer un habitant dans un lieu}
procedure envoyerHabitant;
begin
      effacerecran;
      dessinerCadreXY(0,0,119,29,double,lightgreen,black);
      dessinerCadreXY(40,1,87,5,double,lightgreen,black);
      deplacercurseurXY(49,3);
      writeln(' > | HABITANT A ENVOYER | < ');
      deplacercurseurXY(42,11);
      writeln(personnage1.nom,' ',personnage1.prenom);
      deplacercurseurXY(42,13);
      writeln(personnage2.nom,' ',personnage2.prenom);
      deplacercurseurXY(42,15);
      writeln(personnage3.nom,' ',personnage3.prenom);
      deplacercurseurXY(42,17);
      writeln(personnage4.nom,' ',personnage4.prenom);
      deplacercurseurXY(42,22);
      writeln(' ---------------------------------------- ' );
      deplacercurseurXY(42,3);
      writeln(' > | ECRIRE PREC POUR REVENIR EN ARRIERE | < ');
      dessinerCadreXY(2,26,117,28,double,lightgreen,black);  // ici pour ecrire le choix En bas de l'ecran
      deplacerCurseurXY(4,27);
      write('Quelle personne envoyer ? (Saisir le nom) : ');
      zoneHabitant;
      readln;
   end;

procedure zoneHabitant;
var
  nomPerso:String;
  optionLieu:String;
begin
  readln(nomPerso);
  actPerso:=choixPersonnage(nomPerso);
  effacerecran;
  dessinerCadreXY(0,0,119,29,double,lightgreen,black);
  dessinerCadreXY(40,1,87,5,double,lightgreen,black);
  deplacercurseurXY(49,3);
  writeln(' > | LIEU A EXPLORER | < ');
  deplacercurseurXY(42,11);
  writeln(foret.nom);
  deplacercurseurXY(42,13);
  writeln(lac.nom);
  deplacercurseurXY(42,15);
  writeln(ferme.nom);
  deplacercurseurXY(42,22);
  writeln(' ---------------------------------------- ' );
  deplacercurseurXY(41,3);
  writeln(' > | ECRIRE PREC POUR REVENIR EN ARRIERE | < ');
  dessinerCadreXY(2,26,117,28,double,lightgreen,black);  // ici pour ecrire le choix En bas de l'ecran
  deplacerCurseurXY(4,27);
  write('Ou envoyer ',actPerso.nom,' ',actPerso.prenom,' ? (Saisir le nom) : ');
  readln(optionLieu);
  actLieu:=choixLieu(optionLieu);
  actPerso.affectation := actLieu.nom;
  choix1;
end;

{Trouver le personnage choisi}
function choixPersonnage(nom:string):personnage;
begin
   if nom = 'Marquet' then
     choixPersonnage:=personnage1;
   else if nom = 'Correia' then
     choixPersonnage:=personnage2;
   else if nom = 'Mamkalo' then
     choixPersonnage:=personnage3;
   else if nom = 'Kachin'  then
     choixPersonnage:=personnage4;
   else
end;

function choixLieu(nomL:string):lieu;
begin
   if nomL = 'foret' then
     choixLieu := foret;
   if nomL = 'lac' then
     choixLieu:=lac;
   if nomL = 'base' then
     choixLieu:=base;
   if nomL = 'ferme'  then
     choixLieu:=ferme;
end;

{Pour connaitre la liste des habitants et leurs affectation}
procedure listeHabitant;
 begin
      effacerecran;
      dessinerCadreXY(0,0,119,29,double,lightgreen,black);
      dessinerCadreXY(40,1,87,5,double,lightgreen,black);
      deplacercurseurXY(49,3);
      writeln(' > | LISTE DES HABITANTS | < ');
      personnage1.affectation:='abcdef';
      deplacercurseurXY(42,11);
      writeln(personnage1.nom,' ',personnage1.prenom,' affectation : ',personnage1.affectation);
      deplacercurseurXY(42,13);
      writeln(personnage2.nom,' ',personnage2.prenom,' affectation : ',personnage2.affectation);
      deplacercurseurXY(42,15);
      writeln(personnage3.nom,' ',personnage3.prenom,' affectation : ',personnage3.affectation);
      deplacercurseurXY(42,17);
      writeln(personnage4.nom,' ',personnage4.prenom,' affectation : ',personnage4.affectation);
      deplacercurseurXY(42,22);
      writeln(' ---------------------------------------- ' );
               { pour revenir au menu prec }
      menuprec;
      readln;
   end;

{Procedure menu principale du jeux }

 procedure ecranprincipale;
  var choix:integer;
      out:string;
 begin
  effacerEcran;
  couleurTexte(lightgreen);
  deplacerCurseurXY(4,2);
  writeln('1- Commencez le Jeu'); writeln;
  deplacerCurseurXY(4,4);
  writeln('2- Histoire du jeu'); writeln;
  deplacerCurseurXY(4,6);
  writeln('3- Quitter'); writeln;
  deplacerCurseurXY(2,10);
  write('Ecrire ici Votre Choix : ');
  readln(Choix);

  case Choix of
  1: begin
    choix1;   // choix1 : menu principal codé en unit Diffchoix
     end;


  2: begin
     effacerecran;
     writeln('Histoire du jeu');
     readln;
     end;

  3: begin
   deplacerCurseurXY(4,25);
   writeln('Voulez vous vraiment quitter ? ');
   deplacerCurseurXY(4,27);
   writeln(' o/n :  ');
   readln(out);
   if out = 'n'  then
   begin
     ecranprincipale;
   end
     else if out ='o' then
     begin
     effacerecran;
     deplacercurseurXY(4,25);
     writeln(' Bye ');
     end;
   end;
  end;



 end;

end.

end.

