program combat;
uses unitpersonnage, unitMonstres,testCombat;


var
  combattant1:Personnage;
  combattant2:Monstre;

begin

  combattant1:= personnage1;
  combattant2 := monstreMyst();
  testComb(combattant1,combattant2);
end.

