unit unitMonstres;



{$mode objfpc}{$H+}



interface
Uses GestionEcran;

Type
  monstre = Record
    nom : string;
    force : Integer;
    vie : Integer
    end;

function loup():monstre;
function chien():monstre;
function rataupe():monstre;
procedure afficherloup();
procedure afficherChien();
procedure afficherRataupe();





implementation

function loup():monstre;
begin

  loup.nom := 'loup';
  loup.force := 20;
  loup.vie := 80;




end;



function chien():monstre;

begin
 chien.nom :='chien';
 chien.force := 30;
 chien.vie := 60;

end;

function rataupe():monstre;

begin
 rataupe.nom :='rataupe';
 rataupe.force := 5;
 rataupe.vie := 50;

end;

procedure afficherloup();
begin

deplacerCurseurXY(85,2);
writeln  ('                     .');
deplacerCurseurXY(85,3);
writeln  ('                    / V\');
deplacerCurseurXY(85,4);
writeln  ('                  / `  /');
deplacerCurseurXY(85,5);
writeln  ('                 <<   |');
deplacerCurseurXY(85,6);
writeln  ('                 /    |');
deplacerCurseurXY(85,7);
writeln  ('               /      |');
deplacerCurseurXY(85,8);
writeln  ('             /        |');
deplacerCurseurXY(85,9);
writeln  ('           /    \  \ /  ');
deplacerCurseurXY(85,10);
writeln  ('          (      ) | |');
deplacerCurseurXY(85,11);
writeln  ('  ________|   _/_  | |');
deplacerCurseurXY(85,12);
writeln  ('<__________\______)\__)');

end;
procedure afficherChien();
begin
deplacerCurseurXY(85,2);
writeln  ('                     .');
deplacerCurseurXY(85,3);
writeln  ('                    / V\');
deplacerCurseurXY(85,4);
writeln  ('                  / `  /');
deplacerCurseurXY(85,5);
writeln  ('                 <<   |');
deplacerCurseurXY(85,6);
writeln  ('                 /    |');
deplacerCurseurXY(85,7);
writeln  ('               /      |');
deplacerCurseurXY(85,8);
writeln  ('             /        |');
deplacerCurseurXY(85,9);
writeln  ('           /    \  \ /  ');
deplacerCurseurXY(85,10);
writeln  ('          (      ) | |');
deplacerCurseurXY(85,11);
writeln  ('  ________|   _/_  | |');
deplacerCurseurXY(85,12);
writeln  ('<__________\______)\__)');
end;




procedure afficherRataupe();
begin
deplacerCurseurXY(85,7);
writeln  ('  (\,/)');
deplacerCurseurXY(85,8);
writeln  ('   oo   ''''''//,        _');
deplacerCurseurXY(85,9);
writeln  (',/_;~,        \,    / ''');
deplacerCurseurXY(85,10);
writeln  ('"''   \    (    \    !');
deplacerCurseurXY(85,11);
writeln  (''',|  \    |__.''');
deplacerCurseurXY(85,12);
writeln  ('''~  ''~----''');

end;

end.
