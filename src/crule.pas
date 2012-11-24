program crule;
uses Flx;

  type
    MenuState    = external class ( FlxState )
    end;         
    PlayState    = class ( FlxState )
    end;
    CardinalRule = class( FlxGame )
      constructor init;
    end;                
    

  constructor CardinalRule.init;
  begin
    inherited init( 256, 224, 'MenuState', 2 );
  end; { CardinalRule.init }

begin  
end.