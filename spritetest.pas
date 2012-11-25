program spritetest;

{$FRAME_WIDTH  512}
{$FRAME_HEIGHT 448}
{$BACKGROUND $3366ff}
{$FRAME_RATE 32}

uses Flash8Ext, Key;
var
  loader       : MovieClipLoader;
  hero         : MovieClip;
  dx, dy       : integer;
  min_y, max_y : integer;
  min_x, max_x : integer;
  scr_w, scr_h : integer;

procedure onEnterFrame;
begin
  
  if hero <> nil then begin
    hero._x := hero._x + dx;
    hero._y := hero._y + dy;
    if hero._y < min_y then hero._y := min_y;
    if hero._y > max_y then hero._y := max_y;
    if hero._x > max_x then hero._x := max_x;
    if hero._x < max_x then hero._x := max_x;
  end;
end;

// this gets called magically when the clip loader finishes
procedure onLoadInit( o : MovieClip ); 
begin
  // scale everything by 2
  o._width := o._width * 2;
  o._height := o._height * 2;
  if o = hero then begin
    o._x := scr_w div 2;
    o._y := scr_h div 2;
  end;
end;

procedure pass;
begin
end;

 
procedure onKeyDown;
begin
  case getKeyCode of
    kbUp   : dec( dy, 4 );
    kbDown : inc( dy, 4 );
    kbLeft  : dec( dx, 2 );
    kbRight : inc( dx, 2 );
    kbPgUp  : pass;
    kbPgDn  : pass;
    kbHome  : pass;
    kbEnd   : pass;
  end;
end;

begin
  dx := 0;
  dy := 0;
  scr_h := 448;
  scr_w := 512;
  max_y := scr_h - hero._height;
  min_y := 0;
  max_x := scr_w - hero._width;
  min_x := 0;
  
  loader := MovieClipLoader.Create;
  loader.addListener(_root);

  hero := MovieClip.Create( nil, 'hero', 1 );
  loader.loadClip( 'img/cardinal-r.png', hero );

  Key.addListener(_root);
end.
