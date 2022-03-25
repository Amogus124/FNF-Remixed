local cock = 0;
function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfpixeldead'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', ''); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'DontStopRemix'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'SOULEnd'); --put in mods/music/
end

local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onUpdate(elapsed)
	
    cock = cock + 0.5;
        setProperty('gf.x',getProperty('gf.x')+0.3)
        setProperty('gf.angle',cock)
    
    if boyfriendName == 'rssjbf' then --replace the name for your character name
	  if curStep >= 0 then
		songPos = getSongPosition()
		local currentBeat = (songPos/1000)*(bpm/80)
		doTweenY(boyfriendTweenY, 'boyfriend', 350-50*math.sin((currentBeat*0.25)*math.pi),0.001)
	  end
	end
end