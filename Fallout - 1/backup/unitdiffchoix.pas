unit unitdiffchoix;

{$mode objfpc}{$H+}

interface
 uses
  Classes, SysUtils,gestionecran,unitlieu,unitpersonnage,unitressource,uniNuit,gameOver;
 procedure choix1;      // pour option 1 de l'ecran qui est "commencez"
 procedure choixbas;    // pour choisir le choix  en bas de l'ecran 1, 2 ou  3
 procedure MenuPrec;    // pour revenir à l'ecran precedent
 procedure ecranprincipale; // le menu principale du jeu ;
 procedure listeRessource; // Afficher la liste des ressources
 procedure listeHabitant; //Afficher la liste des habitants
 procedure envoyerHabitant; //Envoyer un habitant
 procedure construction;  //Les batiments a contruire ou zone a explorer
 procedure zoneHabitant; //La zone selectionné pour l'habitant
 procedure dormir;       //test les ressources a ajouter pendant la nuit
 procedure dormirHUD;    //Hud de la nuit
 procedure choixLieu(nomL:string); //Connaitre le lieu séléctionné
 function choixPersonnage(nom:string):personnage;  //Connaitre le personnage séléctionné
 procedure histoire;

implementation
var
    actPerso:personnage;  //Variable qui definie le personnage selectionné
    chLieu1:Lieu;
    chLieu2:Lieu;
    chLieu3:Lieu;
    chLieu4:Lieu;
    mort:integer;        //Variable pour tester depuis combien de temps les villageois on pas mangé
    jour:integer;        //Variable qui compte le nombre de jour passé

{Procedure principal qui affiche le menu principal avec toute ses options}
procedure choix1;
var option1:integer;
begin
    effacerEcran;
    dessinerCadreXY(0,0,119,29,double,lightgreen,black);
    dessinerCadreXY(2,1,18,5,double,lightgreen,black);
    deplacerCurseurXY(4,2);
    writeln('jour ',jour);
    deplacercurseurXY(4,8);
    writeln('1- Consulter la liste des Habitants');
    deplacercurseurXY(4,11);
    writeln('2- Consulter la liste des Ressources ');
    deplacercurseurXY(4,14);
    writeln('3- Envoyer un habitant ');
    deplacercurseurXY(4,17);
    writeln('4- Construire un batiment / Explorer un lieu');
    deplacercurseurXY(4,20);
    writeln('5- Dormir');
    deplacercurseurXY(50,8);
    writeln('6- Quitter ');
    dessinerCadreXY(2,26,117,28,double,lightgreen,black); // ici pour ecrire le choix En bas de l'ecran
    deplacerCurseurXY(4,27);
    write('Choix : ');
    readln(option1);
    if option1 = 1 then
       listeHabitant;        //Appelle la procedure listehabitant qui affiche la liste des villageois
    if option1 = 2 then
       listeRessource;
    if option1 = 3 then
       envoyerHabitant;      //Appelle la procedure envoyerHabitant qui permet d'envoyer les habitants dans un lieu
    if option1 = 4 then
       construction;         //Appelle la procedure construction qui permet de construire un batiment ou explorer un lieu
    if option1 = 5 then
       dormir;               //Appelle la procedure dormir qui permet de passer au jour suivant en prenant en compte le rajout de ressource
    if option1 = 6 then
       ecranprincipale;      //retourne a l'ecran principal par la procedure ecranprincipale

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
      writeln(' Poisson : ', nbpoisson);      //affiche le nombre de poisson au total
      deplacercurseurXY(42,13);
      writeln(' Legume  : ' , nblegume);      //affiche le nombre de legume au total
      deplacercurseurXY(42,15);
      writeln(' ---------------------------------------- ' );
      deplacercurseurXY(58,16);
      writeln(' MATERIAUX ');
      deplacercurseurXY(42,18);               //affiche le nombre de bois au total
      writeln(' Bois : ' ,nbbois);
      deplacercurseurXY(42,20);
      writeln(' Metaux : ' ,nbmetaux);        //affiche  le nombre de metaux au total
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

{test le lieu ou ce trouve chaque personne pour donner les ressources}
procedure dormir;
begin
//Personnage1
  if chlieu1.nom = 'foret' then
    getBois(random(6));
  if chlieu1.nom = 'lac' then
    getPoisson(random(6));
  if chlieu1.nom = 'IUT' then
    getMetaux(random(6));
  if chlieu1.nom = 'ferme' then
    getLegume(random(6));
//Personnage2
  if chlieu2.nom = 'foret' then
    getBois(random(6));
  if chlieu2.nom = 'lac' then
    getPoisson(random(6));
  if chlieu2.nom = 'IUT' then
    getMetaux(random(6));
  if chlieu2.nom = 'ferme' then
    getLegume(random(6));
//Personnage3
  if chlieu3.nom = 'foret' then
    getBois(random(6));
  if chlieu3.nom = 'lac' then
    getPoisson(random(6));
  if chlieu3.nom = 'IUT' then
    getMetaux(random(6));
  if chlieu3.nom = 'ferme' then
    getLegume(random(6));
//Personnage4
  if chlieu4.nom = 'foret' then
    getBois(random(6));
  if chlieu4.nom = 'lac' then
    getPoisson(random(6));
  if chlieu4.nom = 'IUT' then
    getMetaux(random(6));
  if chlieu4.nom = 'ferme' then
    getLegume(random(6));
  dormirHUD;
  evenement;
  bilanRessource;
  choix1;
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

{Permet de contruire un batiement ou d'explorer un lieu}
procedure construction;
var
    choix:Integer;
begin
 effacerecran;
 deplacercurseurXY(5,3);
 writeln(' > | BATIMENT A CONSTRUIRE | < ');
 deplacercurseurXY(5,6);
 writeln('2- Construire la ferme (50 bois) (25 metaux)');
 deplacercurseurXY(70,3);
 writeln(' > | BATIMENT A CONSTRUIRE | < ');
 deplacercurseurXY(70,6);
 writeln('5- lac (1 jour avant l''acces)');
 deplacercurseurXY(70,8);
 writeln('6- foret (1 jour avant l''acces)');
 deplacercurseurXY(70,10);
 writeln('7- IUT (1 jour avant l''acces)');
 deplacerCurseurXY(4,27);
 write('Quelle batiment construire ou lieu a explorer ? : ');
 readln(choix);
 if choix = 2 then
   accesF;
 if choix = 5 then
   begin
     exploLac;
     dormirHUD;
   end;
 if choix = 6 then
   begin
     exploForet;
     dormirHUD;
   end;
 if choix = 7 then
   begin
     exploIut;
     dormirHUD;
   end;

 readln;
 choix1;
end;

{Envoyer un habitant dans un lieu}
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
  if foret.explorer = TRUE then
    begin
    deplacercurseurXY(42,11);
    writeln(foret.nom);
    end;
  if lac.explorer = TRUE then
    begin
    deplacercurseurXY(42,13);
    writeln(lac.nom);
    end;
  if iut.explorer = TRUE then
    begin
    deplacercurseurXY(42,15);
    writeln(iut.nom);
    end;
  if ferme.acces = TRUE then
    begin
    deplacercurseurXY(42,17);
    writeln(ferme.nom);
    end;
  deplacercurseurXY(42,22);
  writeln(' ---------------------------------------- ' );
  deplacercurseurXY(41,3);
  writeln(' > | ECRIRE PREC POUR REVENIR EN ARRIERE | < ');
  dessinerCadreXY(2,26,117,28,double,lightgreen,black);  // ici pour ecrire le choix En bas de l'ecran
  deplacerCurseurXY(4,27);
  write('Ou envoyer ',actPerso.nom,' ',actPerso.prenom,' ? (Saisir le nom) : ');
  readln(optionLieu);
  choixLieu(optionLieu);
  choix1;
end;

{Trouver le personnage choisi}
function choixPersonnage(nom:string):personnage;
begin
   if nom = 'Marquet' then
     choixPersonnage:=personnage1
   else if nom = 'Correia' then
     choixPersonnage:=personnage2
   else if nom = 'Mamkalo' then
     choixPersonnage:=personnage3
   else if nom = 'Kachin'  then
     choixPersonnage:=personnage4
   else
end;

{Detecte le lieu ou le villageois est enoyé}
procedure choixLieu(nomL:string);
begin
  if actPerso.nom= 'Marquet' then
  begin
   if nomL = 'foret' then
     chLieu1.nom := 'foret';
   if nomL = 'lac' then
     chLieu1.nom:='lac';
   if nomL = 'base' then
     chLieu1.nom:='base';
   if nomL = 'ferme'  then
     chLieu1.nom:='ferme';
   if nomL = 'IUT'  then
     chLieu1.nom:='IUT';
   end
   else if actPerso.nom= 'Correia' then
     begin
   if nomL = 'foret' then
     chLieu2.nom := 'foret';
   if nomL = 'lac' then
     chLieu2.nom:='lac';
   if nomL = 'base' then
     chLieu2.nom:='base';
   if nomL = 'ferme'  then
     chLieu2.nom:='ferme';
   if nomL = 'IUT'  then
     chLieu2.nom:='IUT';
   end
      else if actPerso.nom= 'Mamkalo' then
     begin
   if nomL = 'foret' then
     chLieu3.nom := 'foret';
   if nomL = 'lac' then
     chLieu3.nom:='lac';
   if nomL = 'base' then
     chLieu3.nom:='base';
   if nomL = 'ferme'  then
     chLieu3.nom:='ferme';
   if nomL = 'IUT'  then
     chLieu3.nom:='IUT';
   end
  else if actPerso.nom= 'Kachin' then
     begin
   if nomL = 'foret' then
     chLieu4.nom := 'foret';
   if nomL = 'lac' then
     chLieu4.nom:='lac';
   if nomL = 'base' then
     chLieu4.nom:='base';
   if nomL = 'ferme'  then
     chLieu4.nom:='ferme';
   if nomL = 'IUT'  then
     chLieu4.nom:='IUT';
   end

end;

{Affiche l'hud pour la procedure dormir et fait manger les villageois}
procedure dormirHUD;

 begin
  effacerEcran;
  //Nourrir les villageois
  if nbPoisson >= 5 then
     begin
     mort:=0;
     rmPoisson(5);
     deplacercurseurXY(25,10);
     writeln('Les villageois on preparer une petite friture de poisson ! (-5 poissons)');
     end
  else if (nbPoisson<5) AND (nbLegume>=3) then
     begin
     mort:=0;
     deplacercurseurXY(25,10);
     writeln('Vos villageois on fait une bonne petite soupe ! (-3 legumes)');
     rmLegume(3);
     end
  else
    begin
    mort:=mort + 1;
    deplacercurseurXY(25,10);
    writeln('Attention vos villageois on pas de quoi manger ! ils vont mourir de faim');
    deplacercurseurXY(25,11);
    writeln('(1 jour de plus sans les nourrir et ils mourront)');
    end;
  if mort = 2 then
  begin
    effacerEcran;
    deplacercurseurXY(20,3);
    writeln('                        Vous avez survecu : ',jour,' jour');
    finJeu;
    ecranprincipale;
  end;

  deplacercurseurXY(25,25);
  writeln('            *      .         .                   .');
  deplacercurseurXY(25,26);
  writeln('    .                                      *         .         *');
  deplacercurseurXY(25,27)  ;
  writeln('                      *            *           .-. ') ;
  deplacercurseurXY(25,28);
  writeln('        *        *         .                  ( (       *')   ;
  deplacercurseurXY(25,29);
  writeln('                    .                   *      ''-'' ')   ;
  deplacercurseurXY(25,30);
  writeln('  ,\//,.\//\/.         ,\/,   ,\/.//,                       .') ;
  deplacercurseurXY(25,31);
  writeln('  //o\\/o//o\\ ,.,.,   //o\   /o\\o\\         *     .')     ;
  deplacercurseurXY(25,32);
  writeln('    |   |  |  /###/#\    |     |  |      .                 *') ;
  deplacercurseurXY(25,33);
  writeln('    |   |  |  |'' ''|:|    |`=.=''|  |                      ')   ;
  deplacercurseurXY(25,34);
  writeln('^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^""""""""""~~~~~~~~~~~~~~~~~~') ;
  jour := jour + 1;
  readln;
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
      writeln(personnage1.nom,' ',personnage1.prenom,' affectation : ',chLieu1.nom);
      deplacercurseurXY(42,13);
      writeln(personnage2.nom,' ',personnage2.prenom,' affectation : ',chLieu2.nom);
      deplacercurseurXY(42,15);
      writeln(personnage3.nom,' ',personnage3.prenom,' affectation : ',chLieu3.nom);
      deplacercurseurXY(42,17);
      writeln(personnage4.nom,' ',personnage4.prenom,' affectation : ',chLieu4.nom);
      deplacercurseurXY(42,22);
      writeln(' ---------------------------------------- ' );
               { pour revenir au menu prec }
      menuprec;
      readln;
   end;

procedure histoire;
begin
 deplacercurseurXY(25,2);
 writeln(' L''apocalypse... Je pensais que ce mot n''aurait jamais pu être employe au sérieux.');
 deplacercurseurXY(25,3);
 writeln(' L''an 2154 restera a jamais grave dans les memoires de ceux qui sont encore vivants, la');
 deplacercurseurXY(25,2);
 writeln(' surpopulation causa la famine qui causa elle-même la misere et la maladie. Des millions de');
 deplacercurseurXY(25,2);
 writeln(' morts étaient e deplorer, des corps mutile et entasse a cause des guerres civiles qui etaient');
 deplacercurseurXY(25,2);
 writeln(' présente partout dans le monde. Pour lutter contre ce fleau les grandes nations deciderent');
 deplacercurseurXY(25,2);
 writeln(' d''unir leurs forces afin d''eradiquer les maladies et de reinstaurer la paix dans le monde. Les');
 deplacercurseurXY(25,2);
 writeln(' meilleurs biologistes cherchèrent des moyens efficaces afin de creer des vaccins. Seulement');
 deplacercurseurXY(25,2);
 writeln(' un virus tres dangereux c''est propage en dehors du laboratoire de haute sécurité qui eut un');
deplacercurseurXY(25,2);
 writeln(' effet dévastateur sur l''ensemble du monde, toutes les personnes exposees à celui-ci furent');
 deplacercurseurXY(25,2);
 writeln(' aussitôt modifiées en ce que l’on peut appeler ''zombies''.');
 deplacercurseurXY(25,2);
writeln(' Moi ainsi que quelques habitant de Dijon avons eu la bonne idée au tout début de la');
 deplacercurseurXY(25,2);
 writeln(' propagation de créer une sorte de bunker souterrain ou nous sommes restés les 3 années');
 deplacercurseurXY(25,2);
writeln(' qui ont suivie, à notre sortie le monde était méconnaissable, désormais notre seul but est de survivre.');

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
     histoire;
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

