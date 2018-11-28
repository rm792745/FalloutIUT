unit UnitLieu;



{$mode objfpc}{$H+}



interface

type

  lieu=record

    nom : string;
    ressource : Integer;
    acces : Boolean;

  end;


procedure foret():lieu;

procedure lac():lieu;

implementation

uses UnitRessource;

procedure lac(fiche : lieu);

begin

  lac.nom:='lac';

  lac.ressource:=getPoisson();

  lac.acces := TRUE;

end;

procedure foret(fiche : lieu);

begin

  foret.nom:='la fôret';

  foret.ressource:=getBois();

  lac.acces := FALSE;

end;
end.
