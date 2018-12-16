unit gameOver;

{$mode objfpc}{$H+}

interface
uses
  Classes, SysUtils, GestionEcran;

procedure finJeu();


implementation

procedure finJeu();
begin
  deplacercurseurXY(25,5);
  writeln('                         __________');
  attendre(100);
  deplacercurseurXY(25,6);
  writeln('                      .~#########%%;~.');
  attendre(100);
  deplacercurseurXY(25,7);
  writeln('                     /############%%;`\');
  attendre(100);
  deplacercurseurXY(25,8);
  writeln('                    /######/~\/~\%%;,;,\');
  attendre(100);
  deplacercurseurXY(25,9);
  writeln('                   |#######\    /;;;;.,.|');
  attendre(100);
  deplacercurseurXY(25,10);
  writeln('                   |#########\/%;;;;;.,.|');
  attendre(100);
  deplacercurseurXY(25,11);
  writeln('          XX       |##/~~\####%;;;/~~\;,|       XX');
  attendre(100);
  deplacercurseurXY(25,12);
  writeln('        XX..X      |#|  o  \##%;/  o  |.|      X..XX');
  attendre(100);
  deplacercurseurXY(25,13);
  writeln('      XX.....X     |##\____/##%;\____/.,|     X.....XX');
  attendre(100);
  deplacercurseurXY(25,14);
  writeln(' XXXXX.....XX      \#########/\;;;;;;,, /      XX.....XXXXX');
  attendre(100);
  deplacercurseurXY(25,15);
  writeln('X |......XX%,.@      \######/%;\;;;;, /      @#%,XX......| X');
  attendre(100);
  deplacercurseurXY(25,16);
  writeln('X |.....X  @#%,.@     |######%%;;;;,.|     @#%,.@  X.....| X');
  attendre(100);
  deplacercurseurXY(25,17);
  writeln('X  \...X     @#%,.@   |# # # % ; ; ;,|   @#%,.@     X.../  X');
  attendre(100);
  deplacercurseurXY(25,18);
  writeln(' X# \.X        @#%,.@                  @#%,.@        X./  #');
  attendre(100);
  deplacercurseurXY(25,19);
  writeln('  ##  X          @#%,.@              @#%,.@          X   #');
  attendre(100);
  deplacercurseurXY(25,20);
  writeln(', "# #X            @#%,.@          @#%,.@            X ##');
  attendre(100);
  deplacercurseurXY(25,21);
  writeln('   `###X             @#%,.@      @#%,.@             ####''');
  attendre(100);
  deplacercurseurXY(25,22);
  writeln('  . '' ###              @#%.,@  @#%,.@              ###`"');
  attendre(100);
  deplacercurseurXY(25,23);
  writeln('    . ";"                @#%.@#%,.@                ;"` '' .');
  attendre(100);
  deplacercurseurXY(25,24);
  writeln('      ''                    @#%,.@                   ,.');
  attendre(100);
  deplacercurseurXY(25,25);
  writeln('      ` ,                @#%,.@  @@   ');
  attendre(100);
  deplacercurseurXY(25,26);
  writeln('                          @@@  @@@ ');
  readln;
end;



end.

