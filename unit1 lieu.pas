unit unit1;

{$mode objfpc}{$H+}

interface
type
  lieu=record
    nom : string;
    ressource : string;
  end;

procedure lieu1(fiche : lieu);
procedure lieu2(fiche : lieu);
procedure lieu3(fiche : lieu);
procedure lieu4(fiche : lieu);
procedure lieu5(fiche : lieu);
procedure lieu6(fiche : lieu);

implementation
procedure lieu1(fiche : lieu);
begin
  fiche.nom:='lac';
  fiche.ressource:='poisson';
end;
procedure lieu2(fiche : lieu);
begin
  fiche.nom:='IUT';
  fiche.ressource:= 'pain';
end;
procedure lieu3(fiche : lieu);
begin
  fiche.nom:='la foret';
  fiche.ressource:='bois';
end;
procedure lieu4(fiche : lieu);
begin
  fiche.nom:='la ferme';
  fiche.ressource:='légume';
end;
procedure lieu5(fiche : lieu);
begin
  fiche.nom:='la decharge';
  fiche.ressource:='metal';
end;
procedure lieu6(fiche : lieu);
begin
  fiche.nom:='campement';
  fiche.ressource:='rien';
end;

end.
