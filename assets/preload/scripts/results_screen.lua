local allowCountdown = false

function onEndSong()
    if not allowCountdown then
        runTimer('endText', 0.1);
        curWeek = week
		allowCountdown = true;
		startCountdown()
        return Function_Stop;
    end
    return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'endText' then
        noteTweenAlpha('1', 1, 0, 1, 'linear')
        noteTweenAlpha('2', 2, 0, 1, 'linear')
        noteTweenAlpha('3', 3, 0, 1, 'linear')
        noteTweenAlpha('4', 4, 0, 1, 'linear')
        noteTweenAlpha('5', 5, 0, 1, 'linear')
        noteTweenAlpha('6', 6, 0, 1, 'linear')
        noteTweenAlpha('7', 7, 0, 1, 'linear')
        noteTweenAlpha('0', 0, 0, 1, 'linear')
        doTweenAlpha('GUItween', 'camHUD', 0, 1, 'linear');
        --separation
        makeLuaText('songName', "You Cleared " .. getProperty(songName), 0, 0, 0);
        addLuaText('songName');
        setTextAlignment('songName', 'left');
        setTextSize('songName', 80);
        setObjectCamera('songName', 'other');
        makeLuaText('score', "Points " .. getProperty(score), 0, 55, 80);
        addLuaText('score');
        setTextAlignment('score', 'center');
        setTextSize('score', 50);
        setObjectCamera('score', 'other');
        makeLuaText('sicks', "Swags " .. getProperty('sicks'), 0, 55, 130);
        addLuaText('sicks');
        setTextAlignment('sicks', 'center');
        setTextSize('sicks', 50);
        setObjectCamera('sicks', 'other');
        makeLuaText('goods', "Nices " .. getProperty('goods'), 0, 55, 180);
        addLuaText('goods');
        setTextAlignment('goods', 'center');
        setTextSize('goods', 50);
        setObjectCamera('goods', 'other');
        makeLuaText('bads', "Craps " .. getProperty('bads'), 0, 55, 230);
        addLuaText('bads');
        setTextAlignment('bads', 'center');
        setTextSize('bads', 50);
        setObjectCamera('bads', 'other');
        makeLuaText('shits', "FUCKs " .. getProperty('shits'), 0, 55, 280);
        addLuaText('shits');
        setTextAlignment('shits', 'center');
        setTextSize('shits', 50);
        setObjectCamera('shits', 'other');
        makeLuaText('misses', "Misses " .. getProperty(misses), 0, 55, 320);
        addLuaText('misses');
        setTextAlignment('misses', 'center');
        setTextSize('misses', 50);
        setObjectCamera('misses', 'other');
        makeLuaText('hits', "Hits " .. getProperty(hits), 0, 55, 380);
        addLuaText('hits');
        setTextAlignment('hits', 'center');
        setTextSize('hits', 50);
        setObjectCamera('hits', 'other');
        makeLuaText('combos', "Combos " .. getProperty('combo'), 0, 55, 420);
        addLuaText('combos');
        setTextAlignment('combo', 'center');
        setTextSize('combos', 50);
        setObjectCamera('combos', 'other');
        makeLuaText('dff', 'none', 0, 55, 470);
        addLuaText('dff');
        setTextAlignment('dff', 'center');
        setTextSize('dff', 50);
        setObjectCamera('dff', 'other');
        runTimer('end', 15);
        makeLuaText('dff', 'This Difficulty Is Not Registered', 0, 55, 470);
        addLuaText('dff');
        setTextAlignment('dff', 'center');
        setTextSize('dff', 50);
        setObjectCamera('dff', 'other');
        runTimer('end', 10); --time for the screen to close by itself
        if getProperty('songMisses') == 0 then
            if getProperty('sicks') > 0 then
                removeLuaSprite('gfc', true);
                removeLuaSprite('fc', true);
                removeLuaSprite('sdcb', true);
                removeLuaSprite('clear', true);
                makeLuaSprite('sfc', 'displays/difficulties/sfc', 0, 0);
                setObjectCamera('sfc', 'other');
			    addLuaSprite('sfc', true);
            end
            if getProperty('goods') > 0 then
                removeLuaSprite('sfc', true);
                removeLuaSprite('fc', true);
                removeLuaSprite('sdcb', true);
                removeLuaSprite('clear', true);
                makeLuaSprite('gfc', 'displays/difficulties/gfc', 0, 0);
                setObjectCamera('gfc', 'other');
			    addLuaSprite('gfc', true);
            end
            if getProperty('bads') > 0 or getProperty('shits') > 0 then
                removeLuaSprite('sfc', true);
                removeLuaSprite('gfc', true);
                removeLuaSprite('sdcb', true);
                removeLuaSprite('clear', true);
                makeLuaSprite('fc', 'displays/difficulties/fc', 0, 0);
                setObjectCamera('fc', 'other');
			    addLuaSprite('fc', true);
            end
	    end
        if getProperty('songMisses') > 0 and getProperty('songMisses') < 10 then
            removeLuaSprite('sfc', true);
            removeLuaSprite('gfc', true);
            removeLuaSprite('fc', true);
            removeLuaSprite('clear', true);
            makeLuaSprite('sdcb', 'displays/difficulties/sdcb', 0, 0);
            setObjectCamera('sdcb', 'other');
			addLuaSprite('sdcb', true);
        end
        if getProperty('songMisses') >= 10 then
            removeLuaSprite('sfc', true);
            removeLuaSprite('gfc', true);
            removeLuaSprite('fc', true);
            removeLuaSprite('sdcb', true);
            makeLuaSprite('clear', 'displays/difficulties/clear', 0, 0);
            setObjectCamera('clear', 'other');
			addLuaSprite('clear', true);
        end
        if botPlay == true then
            makeLuaSprite('bpon', 'displays/botplay_on', 0, 0);
            setObjectCamera('bpon', 'other');
			addLuaSprite('bpon', true);
        end
        if botPlay == false then
            makeLuaSprite('bpoff', 'displays/botplay_off', 0, 0);
            setObjectCamera('bpoff', 'other');
			addLuaSprite('bpoff', true);
        end
        --if curWeek == week1 then (only in specified week)
        if difficulty == 0 then --change the difficulty text to current difficulty, in a week with the standard difficulties, 0 = Easy, 1 = Normal, 2 = Hard
            setTextString('dff', 'Difficulty Hard')
        end
        if difficulty == 1 then
            setTextString('dff', 'Difficulty Hard')
	    end
        if difficulty == 2 then
            setTextString('dff', 'Difficulty Hard')
        end
        if difficulty == 3 then
            setTextString('dff', 'Difficulty Mania')
        end
        --end ('if curWeek' end)
    end
    if tag == 'end' then
        endSong()
    end
end
--script by TerrorGaming473