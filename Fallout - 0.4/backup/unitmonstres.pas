unit unitMonstres;

{$mode objfpc}{$H+}

interface
Type
  monstre = Record
    nom : string;
    force : Integer;
    vie : Integer
    end;



function Kraken():monstre;
function Minautore():monstre;
function sekse():monstre;
function monstreMyst():monstre;


implementation
function Kraken():monstre;
begin
  Kraken.nom := 'Le Kraken';
  Kraken.force := 20;
  Kraken.vie := 100;
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
    monstreMyst := Kraken
  else
    monstreMyst := sekse;
end;


end.

