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
  if reponse = 1 then  //si le personnage souhaite aller dans la forêt
    begin
      personnage1.affectation:=foret.nom;      //on change son affectation
      getBois(5);         //ramassage de 5 bois
    end;
  if reponse = 2 then       //si le personnage souhaite aller au lac
    begin
      personnage1.affectation:=lac.nom;
      getPoisson(5);               //ramassage 5 poissons
    end;
  if (reponse = 3) and (ferme.acces = TRUE) then
    begin
      personnage1.affectation:=ferme.nom; 
      getLegume(5);                //ramassage de 5 legumes 
    end;
  if (reponse = 3) and (ferme.acces = FALSE) then  //si on veut aller à la ferme mais qu'elle est fermée 
  begin
      writeln('voulez vous construire la ferme ?');
      readln(reponse);
        if (reponse = 1) then              //si le personnage dit oui,
          accesF()                        //on appelle la fonction qui deverouille la ferme et soustrait 50 de bois au personnage
        else
          writeln('Pas de soucis');     //sinon on ne fait rien (à part écrire un message)
  end;
   writeln;
   //compte rendu des 3 ressources : 
   writeln('[BOIS    - ',nbBois,']');
   writeln('[POISSON - ',nbPoisson,']');
   writeln('[LEGUME  - ',nbLegume,']');
end;

//--------------------------Ecran--------------------------
readln;

end.

