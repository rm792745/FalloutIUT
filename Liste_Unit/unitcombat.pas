Unit unitcombat;

interface

Uses unitpersonnage, unitMonstres,GestionEcran;

procedure testComb(combattant1:personnage;combattant2:monstre);
procedure blesser(var perso : personnage; degat : Integer);
procedure blesser2(var mon : monstre;degat : Integer);



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
        if combattant2.nom='loup' then
          afficherloup();

        deplacerCurseurXY(85,16);
        writeln('-',degat1);
        deplacerCurseurXY(85,15);//affichage de la vie du monstre
        writeln(combattant2.vie);
        deplacerCurseurXY(88,15);
        writeln('/100');

        deplacerCurseurXY(10,19);
        writeln('-',degat2);
        deplacerCurseurXY(10,20);     //affichage de la vie du joueur
        writeln(combattant1.vie);
        deplacerCurseurXY(15,20);
        writeln('/100');



        //tour du combattant 1

        write('au tour de ',combattant1.prenom,' , Tapez 1 pour un coup de poing et 2 pour un coup de pied ');
        readln(coup);
        if coup = 1 then                           //coup de poing
           degat1 := random(combattant1.force)
        else
            begin
            degat1:= random(combattant1.force+10);    //coup de pied
            if degat1<5 then
               begin
               writeln('manque de bol c est rate ! ');
               degat1:=0;
               end;
            end;
        writeln(combattant1.prenom,' frappe du ',degat1 );
        blesser2(combattant2,degat1);
        writeln;

        //tour du combattant 2 (automatique):
        degat2 := random(combattant2.force);
        writeln(combattant2.nom,' frappe du ',degat2 );
        blesser(combattant1,degat2);
        effacerEcran;
  end;

  if combattant2.vie<=0 then
    writeln('le gagnant est ',combattant1.prenom)
  else
    writeln('le gagnant est ',combattant2.nom);
  readln;
  end;

procedure blesser(var perso : personnage; degat : Integer);
begin
  perso.vie := perso.vie - degat;
end;

procedure blesser2(var mon : monstre;degat : Integer);
begin
  mon.vie := mon.vie - degat;
end;



end.

