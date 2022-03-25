local cock = 0;
local cock2 = 0;
local cock3 = 0;
local cock4 = 0;
function onCreate()

    makeLuaSprite('Sky','bsky',-950,-500)
    addLuaSprite('Sky',false)
    setLuaSpriteScrollFactor('Sky', 0.2, 0.2)
    scaleObject('Sky', 1.2, 1.1)
    
    makeLuaSprite('Fire','bfire',-1200,900)
    addLuaSprite('Fire',false)
    setLuaSpriteScrollFactor('Fire', 0.8, 0.8)
    scaleObject('Fire', 1.3, 1)
    
    makeLuaSprite('Night','bnightopacity',-950,-500)
    addLuaSprite('Night',true)
    setLuaSpriteScrollFactor('Night', 0.2, 0.2)
    scaleObject('Night', 1.3, 1.1)
    
 if not lowQuality then
    makeLuaSprite('BrokenCock3','bbrokenlight3',1900,500)
    setLuaSpriteScrollFactor('BrokenCock3', 2, 1)
    addLuaSprite('BrokenCock3',true)
    
    makeLuaSprite('BrokenCock1','bbrokenlight',400,600)
    addLuaSprite('BrokenCock1',true)
    
    makeLuaSprite('GOKUHOLYSHIT','bgoku',-1050,-500)
    addLuaSprite('GOKUHOLYSHIT',false)
    
    makeLuaSprite('SonicEXE','bsonicexe',750,450)
    setLuaSpriteScrollFactor('SonicEXE', 0.6, 0.6)
    addLuaSprite('SonicEXE',false)
    
    makeLuaSprite('MyBalls','bmyballs',1300,-350)
    setLuaSpriteScrollFactor('MyBalls', 0.6, 0.6)
    addLuaSprite('MyBalls',false)
    
    makeLuaSprite('BrokenCock2','bbrokenlight2',-750,-550)
    addLuaSprite('BrokenCock2',false)
    
    makeLuaSprite('PissGlow','bfireglow',-1200,-350)
    addLuaSprite('PissGlow',true)
    setLuaSpriteScrollFactor('PissGlow', 0.8, 0.8)
    scaleObject('PissGlow', 1.3, 1)
  end
  
    makeLuaSprite('Pussy','bwhittyground',-150,500)
    addLuaSprite('Pussy',false)
    
end

function onBeatHit()--for every beat
    --body
end

function onStepHit()-- for every step
    --body
end

function onUpdate()
    cock = cock + 0.05;
        setProperty('MyBalls.angle',cock)
    cock2 = cock2 - 0.1;
        setProperty('SonicEXE.angle',cock2)
    cock3 = cock3 - 0.2;
        setProperty('BrokenCock1.angle',cock3)
    cock4 = cock4 + 0.3;
        setProperty('GOKUHOLYSHIT.x',getProperty('GOKUHOLYSHIT.x')+0.2)
        setProperty('GOKUHOLYSHIT.angle',cock4)
    

	  if curStep >= 0 then
		songPos = getSongPosition()
		local currentBeat = (songPos/1000)*(bpm/80)
		doTweenY(SonicEXEY, 'SonicEXE', 150-20*math.sin((currentBeat*0.4)*math.pi),0.001)
    end
end