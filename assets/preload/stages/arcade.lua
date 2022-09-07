function onCreate()

	makeLuaSprite('back', 'ms-pacman/pacfondoatras', -720, 300);
   scaleObject('back', 2, 2)
    addLuaSprite('back', false);


    makeAnimatedLuaSprite('ghost1', 'ms-pacman/ghosts1', 1800, 1100) -- posicion normal x = 1000
    addAnimationByPrefix('ghost1', 'bounce','fantasmas', 12, true);
    scaleObject('ghost1', 1.0, 1.0);
    addLuaSprite('ghost1', false);

    makeAnimatedLuaSprite('ghost2', 'ms-pacman/ghosts2', -1400, 1100) -- posicion normal x = -500 
    addAnimationByPrefix('ghost2', 'bounce','fantasmas', 12, true);
    scaleObject('ghost2', 1.0, 1.0);
    addLuaSprite('ghost2', false);

    makeLuaSprite('sisha', 'ms-pacman/pacsilla', 560, 900);
   scaleObject('sisha', 2, 2)
    addLuaSprite('sisha', false); 

    makeLuaSprite('bord1', 'ms-pacman/borde_1', 1, -20);
    addLuaSprite('bord1',false)
    setScrollFactor('bord1',0,0)
    setObjectCamera('bord1','hud')
    scaleObject('bord1', 1, 1);

    makeLuaSprite('bord2', 'ms-pacman/borde2', 1120, 20);
    addLuaSprite('bord2',false)
    setScrollFactor('bord2',0,0)
    setObjectCamera('bord2','hud')
    scaleObject('bord2', 1, 1);
    
    makeLuaSprite('cam', 'ms-pacman/paciluminacion', -500, -300);
   scaleObject('cam', 2, 2)
    addLuaSprite('cam',false)
    setScrollFactor('cam',0,0)
    setObjectCamera('cam','hud')
    
	makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1381,100,'000000')
    addLuaSprite('bartop',true)
    setObjectCamera('bartop','hud')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,650)
    makeGraphic('barbot',1381,100,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','hud')

    close(X)
end

function onBeatHit()

    objectPlayAnimation('ghost1', 'bounce', true)
    objectPlayAnimation('ghost2', 'bounce', true)
    
end    