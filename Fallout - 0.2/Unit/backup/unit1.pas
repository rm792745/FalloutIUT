unit Unit1;

{$mode objfpc}{$H+}

interface
Type
  personnage = record
    nom : string;
    prenom : string;
    affectation : string;
    tache : string;
    vie : Integer;
    energie : Integer;
    force : Integer;
  end;

procedure personnage1(fiche : personnage);
procedure personnage2(fiche : personnage);
procedure personnage3(fiche : personnage);
procedure personnage4(fiche : personnage);

implementation
procedure personnage1(fiche : personnage);
begin
  fiche.nom := 'Marquet';
  fiche.prenom := 'Robin';
  fiche.affectation := 'Aucune';
  fiche.tache := 'Aucune';
  fiche.vie := 100;
  fiche.energie := 100;
  fiche.force := 10;
end;

procedure personnage2(fiche : personnage);
begin
  fiche.nom := Correia;
  fiche.prenom := Lucas;
  fiche.affectation := Aucune;
  fiche.tache := Aucune;
  fiche.vie := 100;
  fiche.energie := 100;
  fiche.force := 10;
end;

procedure personnage3(fiche : personnage);
begin
  fiche.nom := Mamkalo;
  fiche.prenom := Mahmoud;
  fiche.affectation := Aucune;
  fiche.tache := Aucune;
  fiche.vie := 100;
  fiche.energie := 100;
  fiche.force := 10;
end;

procedure personnage4(fiche : personnage);
begin
  fiche.nom := Kachin;
  fiche.prenom := Adil;
  fiche.affectation := Aucune;
  fiche.tache := Aucune;
  fiche.vie := 100;
  fiche.energie := 100;
  fiche.force := 10;
end;

end.

