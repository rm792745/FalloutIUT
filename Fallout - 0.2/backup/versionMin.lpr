program versionMin;

uses UnitRessource, unitepersonnage, UnitLieu;

var
  perso:personnage;
  reponse:Integer;              //1 = foret ----   2 = lac
  i:integer;

begin


//-------------------------Personnage---------------------





//--------------------------Lieu---------------------------






//--------------------------Ennemi-------------------------


//---------------------------test--------------------------
initialisationLieu;
initialisation;
while true do
begin
  perso:=personnage1;
  writeln('1 = Allez a la foret');
  writeln('2 = Allez au lac');
  writeln('3 = Allez a la ferme');
  writeln;
  readln(reponse);
  if reponse = 1 then
    begin
      personnage1.affectation:=foret.nom;
      getBois(5);
    end;
  if reponse = 2 then
    begin
      personnage1.affectation:=lac.nom;
      getPoisson(5);
    end;
  if (reponse = 3) and (ferme.acces = TRUE) then
    begin
      personnage1.affectation:=ferme.nom;
      getLegume(5);
    end;
  if (reponse = 3) and (ferme.acces = FALSE) then
  begin
      writeln('voulez vous construire la ferme ?');
      readln(reponse);
        if (reponse = 1) then
          accesF()
        else
          writeln('Pas de soucis');
  end;
   writeln;
   writeln('[BOIS    - ',nbBois,']');
   writeln('[POISSON - ',nbBois,']');
   writeln('[LEGUME  - ',nbBois,']');
end;

//--------------------------Ecran--------------------------
readln;

end.

