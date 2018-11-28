unit date;


interface

type
  Jour = (lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche);
  Mois = (janvier, fevrier, mars, avril, mai, juin, juillet, aout, septembre ,octobre, novembre, decembre);
function bissextile(annee:Integer):boolean;
function jourSuivant(j:Jour):Jour;
function jourPrecedent(j:Jour):Jour;
function moisSuivant(j:Mois):Mois;
function moisPrecedent(j:Mois):Mois;
function nbJour(annee:Integer; m:Mois):Integer;
procedure writeJour(j:Jour);
procedure writeMois(m:Mois);
procedure listeJour(j:Jour;m:Mois;annee:Integer);


implementation
//Determiner si une annee est bissextile ou non
function bissextile(annee:Integer):boolean;
var
  res : Boolean;

begin
  if ((annee mod 4 = 0) and (annee mod 100 <> 0)) then
    res := TRUE
  else if (annee mod 400 = 0) then
    res := TRUE
  else
    res := FALSE;
  bissextile := res;
end;

function jourSuivant(j:Jour):Jour;
begin
if (j <> dimanche) then
  jourSuivant := succ(j)
else
  jourSuivant := lundi;
end;

function jourPrecedent(j:Jour):Jour;
begin
if (j <> lundi) then
  jourPrecedent := pred(j)
else
  jourPrecedent := Dimanche;
end;

function moisSuivant(j:Mois):Mois;
begin
if (j <> decembre) then
  moisSuivant := succ(j)
else
  moisSuivant := janvier;
end;

function moisPrecedent(j:Mois):Mois;
begin
if (j <> janvier) then
  moisPrecedent := pred(j)
else
  moisPrecedent := decembre;
end;

function nbJour(annee:Integer; m:Mois):Integer;
begin
case m of
  janvier,mars,mai,juillet,aout,octobre,decembre : nbJour:=31;
fevrier :
  begin
  if (bissextile(annee) = TRUE) then
    nbJour := 29
  else
    nbJour := 28
  end;
else
  nbJour := 30;
end;
end;

procedure writeJour(j:Jour);
begin
case j of
  lundi: write('Lundi');
  mardi: write('Mardi');
  mercredi: write('Mercredi');
  jeudi: write('jeudi');
  vendredi: write('Vendredi');
  samedi: write('Samedi');
  dimanche: write('Dimanche');
  end;
end;

procedure writeMois(m:Mois);
begin
case m of
  janvier: write('Janvier');
  fevrier: write('Fevrier');
  mars: write('Mars');
  avril: write('Avril');
  mai: write('Mai');
  juin: write('Juin');
  juillet: write('Juillet');
  aout: write('Aout');
  septembre: write('Septembre');
  octobre: write('Octobre');
  novembre: write('Novembre');
  decembre: write('Decembre');
  end;
end;

procedure listeJour(j:Jour;m:Mois;annee:Integer);


end.

