program testCombat;
Uses unitepersonnage;
var
  degat1 : Integer;
  degat2 : Integer;
  combattant1 : personnage;
  combattant2 : personnage;

begin
  randomize;
  combattant1:=personnage1;
  combattant2 := personnage2;
  repeat

        degat1 := random(combattant1.force);
        degat2 := random(combattant2.force);
        writeln(combattant1.prenom,' frappe du ',degat1 );
        blesser(combattant2,degat1);
        writeln('il reste ',combattant2.vie,' vie a ',combattant2.prenom);
        writeln;
        writeln(combattant2.prenom,' frappe du ',degat2 );
        blesser(combattant1,degat2);
        writeln('il reste ',combattant1.vie,' vie a ',combattant1.prenom);

  until (combattant2.vie<=0) or (combattant1.vie<=0);
  if combattant2.vie<=0 then
    writeln('le gagnant est',combattant1.prenom)
  else
    writeln('le gagnant est',combattant2.prenom);
  readln;
end.

