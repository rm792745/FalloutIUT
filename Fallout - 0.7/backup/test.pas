uses
  Crt;

type
  TDirection = (dirUp,dirLeft,dirRight,dirDown);
var
  Ch: Char;
  Dir: TDirection;
  X,Y: Word;
begin
  CursorOff;
  Dir := dirDown;
  X   := 40;
  Y   := 1;
  repeat
    if KeyPressed then begin
      Ch := ReadKey;
      if Ch = #0 then Ch := ReadKey;
      case Ch of
        #72: Dir := dirUp;
        #75: Dir := dirLeft;
        #77: Dir := dirRight;
        #80: Dir := dirDown;
      end;
    end;
    Delay(250);
    case Dir of
      dirUp    : if Y > 1 then Dec(Y);
      dirDown  : if Y < 25 then Inc(Y);
      dirLeft  : if X > 1 then Dec(X);
      dirRight : if X < 80 then Inc(X);
    end;
    ClrScr;
    GoToXY(X,Y);
    Write('*');
  until UpCase(Ch) = 'Q';
  CursorOn;
end.

