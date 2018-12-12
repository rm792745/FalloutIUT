program version;
uses gestionecran,unitlieu,unitdate,unitpersonnage,unitressource,unitDiffChoix;
begin
  effacerEtColorierEcran(0);
  couleurTexte(0);
  couleurTexte(lightgreen);
  dessinerCadreXY(0,0,119,29,double,lightgreen,black);  // 1:LEFT , 5: DOWN , 118 RIGHT , 18 DOWN
  //dessinerCadreXY(1,5,118,23,double,lightgreen,black);

  deplacerCurseurXY(25,10);
writeln('   _______    ___       __       __        ______    __    __  .___________.');
deplacerCurseurXY(25,11);
 writeln('  |   ____|  /   \     |  |     |  |      /  __  \  |  |  |  | |           |') ;
 deplacerCurseurXY(25,12);
 writeln('  |  |__    /  ^  \    |  |     |  |     |  |  |  | |  |  |  | `---|  |----`') ;
 deplacerCurseurXY(25,13);
 writeln('  |   __|  /  /_\  \   |  |     |  |     |  |  |  | |  |  |  |     |  |     ');
 deplacerCurseurXY(25,14);
 writeln('  |  |    /  _____  \  |  `----.|  `----.|  `--   | |  `--   |     |  |     ');
 deplacerCurseurXY(25,15);
 writeln('  |__|   /__/     \__\ |_______||_______| \______/   \______/      |__|    ');

  couleurTexte(lightcyan);
  deplacerCurseurXY(5,28);
  writeln('*** Tapez sur Entrer pour continuer *** ');
  deplacerCurseurXY(45,28);

  readln;
  initialisation;
  ecranprincipale;

end.


































































{program testcombat;
Uses unitepersonnage,GestionEcran;
var
  degat1 : Integer;
  degat2 : Integer;
  combattant1 : personnage;
  combattant2 : personnage;

begin
  randomize;
  combattant1:=personnage3;
  combattant2 := personnage4;
  repeat

        degat1 := random(combattant1.force);
        degat2 := random(combattant2.force);
        couleurTexte(lightgreen);
        write(combattant1.prenom,' frappe du ');couleurTexte(Lightred);  writeln(degat1);
        couleurTexte(lightgreen);
        blesser(combattant2,degat1);
        write('il reste ');couleurTexte(lightcyan); write(combattant2.vie); couleurTexte(lightgreen); write(' vie a ',combattant2.prenom); writeln;
        writeln;
        write(combattant2.prenom,' frappe du ');couleurTexte(Lightred);  writeln( degat2 );
         couleurTexte(lightgreen);
        blesser(combattant1,degat2);
       write('il reste ');couleurTexte(Lightcyan); write(combattant1.vie); couleurTexte(lightgreen); write(' vie a ',combattant1.prenom); writeln;
        writeln;

  until (combattant2.vie<=0) or (combattant1.vie<=0);
  if combattant2.vie<=0 then
    begin
    couleurTexte(13);
    writeln(' ******* ' ,'le gagnant est ',combattant1.prenom ,' ******** ');
    readln;
    end
  else
  begin
    couleurTexte(13);
    writeln(' ******* ' ,'le gagnant est ',combattant2.prenom ,' ******** ');

    readln;
  end;

end. }


