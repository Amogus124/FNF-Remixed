local xx = 800
local yy = 550;
local xx2 = 1100;
local yy2 = 570;
local ofs = 30;
local followchars = true;
local del = 0;
local del2 = 0;
local cock = 0;
function onCreate()
	makeLuaSprite('sky', 'sky', -100, -80)
	setLuaSpriteScrollFactor('sky', 0.1, 0.1);
	addLuaSprite('sky', false);
    scaleObject('sky', 1.2, 1.2)

	makeLuaSprite('city', 'city', -10, 0)
	setLuaSpriteScrollFactor('city', 0.3, 0.3);
	addLuaSprite('city', false);
    scaleObject('city', 1.2, 1.2)

	makeLuaSprite('windows', 'win1', -10, 0)
	setLuaSpriteScrollFactor('windows', 0.3, 0.3);
	addLuaSprite('windows', false)
    scaleObject('windows', 1.2, 1.2)

	makeLuaSprite('trainbehind', 'behindTrain', -40, -50)
	addLuaSprite('trainbehind', false);
    scaleObject('trainbehind', 1.2, 1.2)

	makeLuaSprite('street', 'street', -40, -50)
	addLuaSprite('street', false);
    scaleObject('street', 1.2, 1.2)
    
    makeAnimatedLuaSprite('Nene','RemixedNene',320,290)
    addAnimationByPrefix('Nene','bounce','Idlealt',35,false)
    addLuaSprite('Nene',false)
    scaleObject('Nene', 1.1, 1.1)
    
    makeAnimatedLuaSprite('Darnell','RemixedDarnell',120,270)
    addAnimationByPrefix('Darnell','bounce','Idlealt',35,false)
    addLuaSprite('Darnell',false)
end

function onBeatHit()--for every beat

    if curBeat % 2 == 1 then
        objectPlayAnimation('Nene','bounce',true)
      end
    if curBeat % 2 == 1 then
        objectPlayAnimation('Darnell','bounce',true)
      end

    if mustHitSection then
		setProperty('defaultCamZoom',0.95);
	else
		setProperty('defaultCamZoom',1.10);
    end
end

function onStepHit()-- for every step
    --body
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