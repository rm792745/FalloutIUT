Unit unittestcombat;

interface

Uses unitpersonnage, unitMonstres,GestionEcran;

procedure testComb(combattant1:personnage;combattant2:monstre);
procedure blesser(var perso : personnage; degat : Integer);
procedure blesser2(var mon : monstre;degat : Integer);
procedure combatHUD;



implementation

procedure testComb(combattant1:personnage;combattant2:monstre);

var
  degat1 : Integer;
  degat2 : Integer;
  coup : Integer;
begin
  degat1:=0;
  degat2:=0;

  randomize;
  while  (combattant2.vie>=0) and (combattant1.vie>=0) do
  begin
        dessinerCadreXY(0,0,119,29,double,lightgreen,black);
        if combattant2.nom='loup' then
           deplacerCurseurXY(0,3);
           dessinerCadreXY(80,1,113,15,double,lightred,black); //loup
           afficherloup();           //   1:LEFT , 5: DOWN , 118 RIGHT , 18 DOWN
           dessinerPerso();
           writeln(combattant1.prenom);
           deplacerCurseurXY(96,16);
           couleurtexte(lightred);
           writeln('-',degat1);
           couleurtexte(lightgreen);
           dessinerCadreXY(5,1,39,15,double,white,black);//personnage
           dessinerCadreXY(5,18,39,20,double,white,black); // vie de perso

           dessinerCadreXY(80,18,113,20,double,lightred,black); // vie loup
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
            write('Au tour de ');
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
            readln(coup);
            if coup = 1 then                           //coup de poing
               degat1 := random(combattant1.force)
            else
                begin
                degat1:= random(combattant1.force+10);    //coup de pied
                if degat1<5 then
                   begin
                   writeln('manque de bol c''est rate ! ');
                   degat1:=0;
                   end;
                end;

        writeln(combattant1.prenom,' frappe du ',degat1 );
        blesser2(combattant2,degat1);
        writeln;

        //tour du combattant 2 (automatique):
        degat2 := random(combattant2.force);
        writeln(combattant2.nom,' frappe du :  ',degat2 );
        blesser(combattant1,degat2);
        effacerEcran;


  end;

  if combattant2.vie<=0 then
     begin
    dessinerCadreXY(0,0,119,29,double,lightgreen,black);
    deplacercurseurXY(50,6);
    couleurtexte(white);
    writeln('Le Gagnant Est : ',combattant1.prenom);
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
          end
  else
  begin
    dessinerCadreXY(0,0,119,29,double,lightgreen,black);
  deplacercurseurXY(50,6);
  couleurtexte(white);
    writeln('Le Gagnant Est : ',combattant2.nom);
    couleurtexte(lightred);
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

end;

procedure blesser(var perso : personnage; degat : Integer);
begin
  perso.vie := perso.vie - degat;
end;

procedure blesser2(var mon : monstre;degat : Integer);
begin
  mon.vie := mon.vie - degat;
end;
procedure combatHUD;
begin
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
end;

end.


