unit Flx;
interface

  type
             
    FlxGame  = external class ( Sprite )
      constructor init( x, y : double; startClass : string; scale : double); 
    end;                     
                             
    FlxBasic = external class
      constructor new;
    end;     
             
    FlxGroup = external class ( FlxBasic )
      procedure add( obj : FlxBasic );
    end;     
             
    FlxState = external class ( FlxGroup )
      
    end;     
             
    FlxText  = external class ( FlxBasic )
      constructor new( x, y : double; width : integer; txt : string );
    end;     
             
implementation
end.
