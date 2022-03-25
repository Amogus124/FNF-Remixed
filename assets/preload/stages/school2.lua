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
	makeLuaSprite('weebSky2','school2/weebSky2',-150, -20);
	setLuaSpriteScrollFactor('weebSky2', 0.6,0.90);
	scaleObject('weebSky2', 9, 6);
	makeLuaSprite('weebSchool2', 'school2/weebSchool2', -200, 0);
	setLuaSpriteScrollFactor('weebSchool2', 0.6,0.90);
	scaleObject('weebSchool2',6, 7);
	makeLuaSprite('weebStreet2', 'school2/weebStreet2',-200, 0);
	setLuaSpriteScrollFactor('weebStreet2',  0.95, 0.95);
	scaleObject('weebStreet2', 7, 7);
    
	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
	makeLuaSprite('weebTreesBack2','school2/weebTreesBack2',-200, -20)
	setLuaSpriteScrollFactor('weebTreesBack2', 0.85, 0.85);
	scaleObject('weebTreesBack2', 6, 7);
	makeAnimatedLuaSprite('weebTrees2', 'school2/weebTrees2',-190, -20);
    setLuaSpriteScrollFactor('weebTrees2', 0.85, 0.85);		
	scaleObject('weebTrees2',6, 7)
    
	makeAnimatedLuaSprite('bgFreaks2', 'school2/bgFreaks2',-190, 320);
    addAnimationByPrefix('bgFreaks2', 'boo', 'BG girls group', 40, false)
    setLuaSpriteScrollFactor('bgFreaks2', 0.85, 0.85);		
	scaleObject('bgFreaks2',6, 6)
    
	makeAnimatedLuaSprite('petals2', 'school2/petals2',-190, 200);
    setLuaSpriteScrollFactor('petals2', 0.85, 0.85);		
	scaleObject('petals2',7, 7)
	setProperty('weebSky2.antialiasing', false);
	setProperty('weebSchool2.antialiasing', false);
	setProperty('weebTreesBack2.antialiasing', false);
	setProperty('bgFreaks2.antialiasing', false);
	setProperty('petals2.antialiasing', false);
    setProperty('weebStreet2.antialiasing', false);


	end

	addLuaSprite('weebSky2', false);
	addLuaSprite('weebSchool2', false);
	addLuaSprite('weebStreet2', false);
	addLuaSprite('weebTreesBack2', false);
	addLuaSprite('weebTrees2', false);
	addAnimationByPrefix('weebTrees2','idle', 'weebTrees2 idle',12,true);
	addLuaSprite('petals2', false);
	addAnimationByPrefix('petals2','idle', 'PETALS ALL',24,true);
	addLuaSprite('bgFreaks2', false);
	addAnimationByPrefix('bgFreaks2','idle', 'BG girls group',24,true);
	
 function onMoveCamera(focus)
	if focus == 'boyfriend' then
		camFollow.x (boyfriend.getMidpoint().x - 200);
		camFollow.y (boyfriend.getMidpoint().y - 200);
	elseif focus == 'dad' then
		
	end
 end
end

function onBeatHit()
    
    if curBeat % 2 == 1 then
        objectPlayAnimation('bgFreaks2','boo',true)
      end
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