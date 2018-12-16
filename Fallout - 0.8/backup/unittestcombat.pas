Unit unittestcombat;

interface

Uses unitpersonnage, unitMonstres,GestionEcran;

procedure testComb(combattant1:personnage;combattant2:monstre);
{simule le combat entre deux combattants}
procedure blesser(var perso : personnage; degat : Integer);
{blesse un personnage}
procedure blesser2(var mon : monstre;degat : Integer);
{blesse un monstre}
procedure victoire(combattant1:personnage);
{affiche la victoire du personnage}
procedure defaite(combattant2:monstre);
{affiche la victoire du monstre (defaite du personnage)}
procedure combatHUD;
{interface du combat}



implementation
var
  degat1 : Integer;
  degat2 : Integer;
  coup : Integer;

procedure testComb(combattant1:personnage;combattant2:monstre);
begin
  degat1:=0;
  degat2:=0;
  randomize;
  while  (combattant2.vie>=0) and (combattant1.vie>=0) do  //tant que la vie d'un des deux combattant ne tombe pas à 0
  begin
         combatHUD;
        if combattant2.nom='loup' then
           afficherloup;
           dessinerPerso();
           writeln(combattant1.prenom);
           deplacerCurseurXY(96,16);
           couleurtexte(lightred);
           writeln('-',degat1);

           couleurtexte(lightgreen);
           deplacerCurseurXY(94,19);  //affichage de la vie du monstre
           writeln(combattant2.vie);

           deplacerCurseurXY(97,19);
           writeln('/100');

           deplacerCurseurXY(20,16);
           couleurtexte(lightred);
           writeln('-',degat2);         //on affiche les degats occasionés
           couleurtexte(lightgreen);
           deplacerCurseurXY(18,19);
           writeln(combattant1.vie);     //affichage de la vie du joueur
           deplacerCurseurXY(21,19);
           writeln('/100');

           deplacercurseurXY(48,5);
           couleurtexte(yellow);

            couleurtexte(lightgreen);
            //tour du combattant 1
            deplacercurseurXY(17,25);
            write('Au tour de ');        //ffichage de "Au tour de "personnage", Tapez 1 pour un coup de poing et 2 pour un coup de pieds avec differentes couleurs
            couleurtexte(yellow);
            write(combattant1.prenom);
            couleurtexte(lightgreen);
            write(' , Tapez ');
            couleurtexte(lightred);
            write('1 ');
            couleurtexte(lightgreen);
            write('pour un coup de poing et ');
            couleurtexte(lightred);
            write('2 ');
            couleurtexte(lightgreen);
            write('pour un coup de pied : ');
            readln(coup);                //on regarde si l'utilisateur veut lancer un coup de poing ou de pied


            if coup = 1 then                           //coup de poing
               degat1 := random(combattant1.force+5)
            else
                begin
                degat1:= random(combattant1.force+10);    //coup de pied
                if degat1<5 then
                   begin
                   writeln('manque de bol c''est rate ! ');    //Si le personnage tape moins de 5, alors il râte son coup
                   degat1:=0;
                   end;
                end;

        writeln(combattant1.prenom,' frappe du ',degat1 );
        blesser2(combattant2,degat1);

        //tour du combattant 2 (automatique):
        degat2 := random(combattant2.force); //calcul des dêgats du personnage 2
        blesser(combattant1,degat2);        //on blesse le personnage 1 de "degat2" degats
end;

  if combattant2.vie<=0 then  //en cas de victoire
     begin
     victoire(combattant1);
     end

  else
  begin
     defaite(combattant2);
  end
end;

  procedure victoire(combattant1:personnage);

     begin
    dessinerCadreXY(0,0,119,29,double,lightgreen,black);
    deplacercurseurXY(50,6);
    couleurtexte(white);
    writeln('Le Gagnant Est : ',combattant1.prenom);
    //affichage de "victoire (avec defilement)
    couleurtexte(lightgreen);
          deplacercurseurXY(32,12);
          attendre(100);
          writeln('      ____   ____.__        __         .__');
         deplacercurseurXY(32,13);
         attendre(100);
         writeln('      \   \ /   /|__| _____/  |_  ____ |__|______   ____');
         deplacercurseurXY(32,14);
          attendre(100);
         writeln('       \   Y   / |  |/ ___\   __\/  _ \|  \_  __ \_/ __ \');
         deplacercurseurXY(32,15);
          attendre(100);
         writeln('        \     /  |  \  \___|  | (  <_> )  ||  | \/\  ___/');
         deplacercurseurXY(32,16);
         attendre(100);
         writeln('         \___/   |__|\___  >__|  \____/|__||__|    \___  >');
        deplacercurseurXY(32,17);
        attendre(100);
         writeln('                         \/                            \/');
         readln;
end;

  //en cas de defaite
procedure defaite(combattant2:monstre);
  begin
    dessinerCadreXY(0,0,119,29,double,lightgreen,black);
  deplacercurseurXY(50,6);
  couleurtexte(white);
    writeln('Le Gagnant Est : ',combattant2.nom);    //on affiche le nom du monstre
    couleurtexte(lightred);
    //affichage du message defaite en ASCII
          deplacercurseurXY(38,12);
          attendre(100);
          writeln('________          _____       .__  __');
          deplacercurseurXY(38,13);
          attendre(100);
          writeln('\______ \   _____/ ____\____  |__|/  |_  ____');
          deplacercurseurXY(38,14);
          attendre(100);
          writeln(' |    |  \_/ __ \   __\\__  \ |  \   __\/ __ \');
          deplacercurseurXY(38,15);
          attendre(100);
          writeln(' |    `   \  ___/|  |   / __ \|  ||  | \  ___/');
          deplacercurseurXY(38,16);
          attendre(100);
          writeln('/_______  /\___  >__|  (____  /__||__|  \___  >');
          deplacercurseurXY(38,17);
          attendre(100);
          writeln('        \/     \/           \/              \/ ');

    readln;
  end;


procedure blesser(var perso : personnage; degat : Integer);
begin
  perso.vie := perso.vie - degat;     //on enlève "degat" vie au personnage
end;

procedure blesser2(var mon : monstre;degat : Integer);
begin
  mon.vie := mon.vie - degat;     //on enlève "degat" vie au monstre
end;
procedure combatHUD;
begin
           effacerEcran;
           dessinerCadreXY(80,1,113,15,double,lightred,black);
           dessinerCadreXY(80,1,119,15,double,lightgreen,black); //affichage du cadre pour l'image du perso
           //affichage d'un "VS" en ASCII
           deplacercurseurXY(48,5);
           writeln(' ___      ___  ________');
           deplacercurseurXY(48,6);
           writeln('|"  \    /"  |/"       )');
           deplacercurseurXY(48,7);
           writeln(' \   \  //  /(:   \___/');
           deplacercurseurXY(48,8);
           writeln('  \\  \/. ./  \___  \');
           deplacercurseurXY(48,9);
           couleurtexte(lightred);
           writeln('   \.    //    __/  \\');
           deplacercurseurXY(48,10);
           writeln('    \\   /    /" \   :)');
           deplacercurseurXY(48,11);
           writeln('     \__/    (_______/');
           dessinerCadreXY(5,1,39,15,double,white,black);//personnage
           dessinerCadreXY(5,18,39,20,double,white,black); // affichage du cadre pour la vie du perso
           couleurtexte(lightgreen);
           dessinerCadreXY(80,18,113,20,double,lightred,black); // affichage du cadre pour la vie du loup
end;

end.


