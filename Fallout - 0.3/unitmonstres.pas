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

function Minautore():monstre;

function sekse():monstre;

function monstreMyst():monstre;

procedure afficherloup();

procedure afficherZombie();





implementation

function loup():monstre;

begin

  loup.nom := 'loup';

  loup.force := 20;

  loup.vie := 100;




end;



function Minautore():monstre;

begin

 Minautore.nom :='Le Minautore';

 Minautore.force := 35;

 Minautore.vie := 150;

end;

function sekse():monstre;

begin

 sekse.nom :='Le sekse';

 sekse.force := 2;

 sekse.vie := 50;

end;

function monstreMyst():monstre;



var

  has : Integer;

begin

  randomize;

  has := random(3)+1;

  if has = 1 then

    monstreMyst := Minautore          //A CHANGER

  else if has = 2 then

    monstreMyst := Loup

  else

    monstreMyst := sekse;

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

procedure afficherZombie();
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

end.
