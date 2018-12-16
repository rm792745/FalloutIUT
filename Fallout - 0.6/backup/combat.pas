program combat;
uses unitepersonnage, unitMonstres,testCombat;


var
  combattant1:Personnage;
  combattant2:Monstre;

begin
  choisissez un perosnnage à evoyer
  Si rep= 1 alors
   currentperso:=personnage1;
  combattant2 := monstreMyst();
  testComb(currentperso,combattant2);
end.

