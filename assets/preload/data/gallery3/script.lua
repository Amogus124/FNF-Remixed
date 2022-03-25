function onCreate()
    --creating images
    makeLuaSprite('bg', 'all parts for gallery/bg/bg', 0, 0);
    setObjectCamera('bg', 'hud');
    addLuaSprite('bg', true);

    makeLuaSprite('pic1', 'all parts for gallery/images/SenpaiSpirit', 240, 150);
    setObjectCamera('pic1', 'hud');
    addLuaSprite('pic1', true);

    makeLuaSprite('pic2', 'all parts for gallery/images/SenpaiSpiritLights', 2000, 150);
    setObjectCamera('pic2', 'hud');
    addLuaSprite('pic2', true);

    makeLuaSprite('pic3', 'all parts for gallery/images/HolidayGF', 4000, -70);
    setObjectCamera('pic3', 'hud');
    addLuaSprite('pic3', true);
    
    makeLuaSprite('pic4', 'all parts for gallery/images/SoftieandPico', 6000, 150);
    setObjectCamera('pic4', 'hud');
    addLuaSprite('pic4', true);
    
    --DONT TOUCH
    makeLuaSprite('left note', 'all parts for gallery/note/one note', 50, 300);
    setObjectCamera('left note', 'hud');
    addLuaSprite('left note', true);

    makeLuaSprite('right note', 'all parts for gallery/note/one note', 1000, 300);
    setObjectCamera('right note', 'hud');
    addLuaSprite('right note', true);

    makeLuaText('choose', 'Press O to go to the previous page.', 0, 0, 660);
    addLuaText('choose');
    
    makeLuaText('credits', 'Gallery was made by Matt-Sudo-Jpg <3.', 0, 0, 700);
    addLuaText('credits');

    makeLuaText('inst', 'Use 1, 2, 3, 4 to scroll through photos.', 0, 0, 680);
    addLuaText('inst');

    --all variables
    setProperty('left note.angle', -90);
    setProperty('right note.angle', 90);
    --setProperty('pic2.scale.x', 2);
    --setProperty('pic2.scale.y', 2);
    setProperty('skipCountdown', true);
end

function onUpdate()
    --FlxG Keys
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.TWO') then
        doTweenX('1', 'pic1', -2000, 1, 'circOut');
        doTweenX('3', 'pic3', 2000, 1, 'circOut');
        doTweenX('4', 'pic4', 4000, 1, 'circOut');
        doTweenX('2', 'pic2', 240, 1, 'circOut');
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ONE') then
        doTweenX('1', 'pic1', 240, 1, 'circOut');
        doTweenX('3', 'pic3', 4000, 1, 'circOut');
        doTweenX('4', 'pic4', 6000, 1, 'circOut');
        doTweenX('2', 'pic2', 2000, 1, 'circOut');
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.THREE') then
        doTweenX('1', 'pic1', -2000, 1, 'circOut');
        doTweenX('3', 'pic3', 240, 1, 'circOut');
        doTweenX('4', 'pic4', 2000, 1, 'circOut');
        doTweenX('2', 'pic2', -2000, 1, 'circOut');
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.FOUR') then
        doTweenX('1', 'pic1', -2000, 1, 'circOut');
        doTweenX('3', 'pic3', -2000, 1, 'circOut');
        doTweenX('4', 'pic4', 240, 1, 'circOut');
        doTweenX('2', 'pic2', -2000, 1, 'circOut');
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.O') then
	    loadSong('gallery2', 1);
    end
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.S') then
	    loadSong('shooting-stars', 1);
    end
end

function onBeatHit()
    --cam thing lol
    if curBeat % 8 == 0 then
        triggerEvent('Add Camera Zoom', '0.01', '0.01')
    end
end