local xx = 450
local yy = 620;
local xx2 = 900;
local yy2 = 755;
local ofs = 30;
local followchars = true;
local del = 0;
local del2 = 0;
local cock = 0;
function onCreate()
	-- background shit
	makeLuaSprite('evilSchoolBG', 'Evilx/evilSchoolBG',-250, 70);
	setLuaSpriteScrollFactor('evilSchoolBG', 0.8, 0.9);
	scaleObject('evilSchoolBG', 6,6);
	 setProperty('evilSchoolBG.antialiasing', false);
	makeLuaSprite('evilSchoolFG', 'Evilx/evilSchoolFG', -125, 70);
	setLuaSpriteScrollFactor('evilSchoolFG', 0.8, 0.9);
	scaleObject('evilSchoolFG', 6,6);
          setProperty('evilSchool.antialiasing', false);
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeAnimatedLuaSprite('bgGhouls', 'Evilx/bgGhouls',-150, 320);
    addAnimationByPrefix('bgGhouls', 'bop', 'BG freaks glitch instance', 24, true);
	setLuaSpriteScrollFactor('bgGhouls', 0.8, 0.8);
	scaleObject('bgGhouls', 6, 6);
        setProperty('bgGhouls.antialiasing', false);
	
	makeAnimatedLuaSprite('animatedEvilSchool', 'Evilx/animatedEvilSchool',-900, -1000);
    setLuaSpriteScrollFactor('animatedEvilSchool', 0.8, 0.8);		
	scaleObject('animatedEvilSchool',6,6);
	setProperty('animatedEvilSchool.antialiasing', false);
		
		
	end
	addLuaSprite('evilSchoolFG', false); --Added offscreen before it starts moving.
	addLuaSprite('evilSchoolBG', false);
	
    addLuaSprite('animatedEvilSchool', false); --Added offscreen before it starts moving.
	addAnimationByPrefix('animatedEvilSchool', 'idle', 'background 2 instance', 24, true);
	addLuaSprite('bgGhouls', false);
	addAnimationByPrefix('bgGhouls', 'idle', 'BG freaks glitch instance', 24, true);
	addantialiasing('bgGhouls',false);
	
end

function onBeatHit()

end

function onUpdate()
    if del > 0 then
	   del = del - 1
	end
	if del2 > 0 then
	   del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'hey' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'hey' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end