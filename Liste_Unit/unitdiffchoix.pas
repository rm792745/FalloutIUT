unit unitdiffchoix;

{$mode objfpc}{$H+}

interface
 uses
  Classes, SysUtils,gestionecran,unitlieu,unitdate,unitpersonnage,unitressource;
 procedure choix1;      // pour option 1 de l'ecran qui est "commencez"
 procedure choixbas;    // pour choisir le choix  en bas de l'ecran 1, 2 ou  3
 procedure MenuPrec;    // pour revenir à l'ecran precedent
 procedure ecranprincipale; // le menu principale du jeu ;
implementation

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
   writeln('5- Consulter la liste des Habitants');
   deplacercurseurXY(4,15);
   writeln('6- Consulter la liste des Ressources ');
   deplacercurseurXY(4,18);
   writeln('7- Quitter ');
   dessinerCadreXY(2,26,117,28,double,lightgreen,black); // ici pour ecrire le choix En bas de l'ecran
   deplacerCurseurXY(4,27);
   write('Choix : ');
   readln(option1);
   if option1 = 6 then   // on peut faire un case ici
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
      initialisation();
      getpoisson(5);
      writeln(' Poisson : ', nbpoisson);
      deplacercurseurXY(42,13);
      writeln(' Legume  : ' , nblegume);
      deplacercurseurXY(42,15);
      writeln(' ---------------------------------------- ' );
      deplacercurseurXY(58,16);
      writeln(' MATERIAUX ');
      deplacercurseurXY(42,18);
      writeln(' Bois    : ' ,nbbois);
      deplacercurseurXY(41,20);
      writeln(' Si on veu ajouter d''autre choses : ');
      deplacercurseurXY(42,22);
      writeln(' ---------------------------------------- ' );



                { pour revenir au menu prec }

      menuprec;
                { pour ajouter les diffrents choix possible ex : liste ressource , habitant etc , }
      readln;
   end;
   if option1 = 7 then
   begin
      ecranprincipale;
   end;
   if option1 = 5 then
   begin
      effacerecran;
      dessinerCadreXY(0,0,119,29,double,lightgreen,black);
      dessinerCadreXY(40,1,87,5,double,lightgreen,black);
      deplacercurseurXY(49,3);
      writeln(' > | LISTE DES HABITANTS | < ');
               { pour revnir au menu prec }
      menuprec;
      readln;
   end
   else
       choix1;
   end;


{pour le nom CHOIX en bas de l'ecran affiche }
procedure ChoixBas;

begin
   dessinerCadreXY(2,26,117,28,double,lightgreen,black);  // ici pour ecrire le choix En bas de l'ecran
   deplacerCurseurXY(4,27);
   write('Choix : ');
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

{Procedure menu principale du jeux }

 procedure ecranprincipale;
  var choixx:integer;
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
  readln(Choixx);

  case Choixx of
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

