function onUpdate()
	--Variable Shit
		TittleText = "AAAAAAAAAAAAAAAA" --Custom Act Name Text
		CustomTittle = false --Put to true if you want a custom act name or else it will be the song name
		ActText = "Act" --Custom Act Text
		ActTextColor = "FFFF33" --Custom Act Text Color (It's in hexadecimal)
		CircleColor = "DF2D78" --The Circle Behind the text color
		TitleFont = "Arcade Classic.ttf" --I recommend the Arcade Classic cuz it has capital letter support
		ActFontText = "Arcade Classic.ttf"--I recommend the Arcade Classic cuz it has capital letter support
end
local allowCountdown = false
function onStartCountdown()
	if not allowCountdown then
		runTimer('startText', 0.1);
		runTimer('countdown', 2)
		allowCountdown = true;
		--startCountdown()
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' and not CustomTittle then
		--makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
		--addLuaSprite('blackscreen', true)
		makeLuaSprite('circle', 'Circle', 777, 0)
		setObjectCamera('circle', 'hud')
		addLuaSprite('circle', true)
		makeLuaText('text', songName, 2000, -1200, 250)
		setTextSize('text', 130)
		setTextBorder('text', 0)
		setTextFont('text', TitleFont)
		makeLuaText('act', ActText, 2000, -1200, 350)
		setTextColor('act', ActTextColor)
		setTextSize('act', 130)
		setTextBorder('act', 0)
		setTextFont('act', ActFontText)
		addLuaText('text')
		addLuaText('act')

		runTimer('appear', 0.3, 1)
		runTimer('fadeout', 1.3, 1)
		doTweenColor('circleColorTween', 'circle', CircleColor, 0.0000000001, 'linear')
	end
	if tag == 'startText' and CustomTittle then
		--makeLuaSprite('blackscreen', 'blackscreen', 0, 0)
		--setObjectCamera('blackscreen', 'hud')
		--addLuaSprite('blackscreen', true)
		makeLuaSprite('circle', 'Circle', 777, 0)
		setObjectCamera('circle', 'hud')
		addLuaSprite('circle', true)
		makeLuaText('text', TittleText, 2000, -1200, 250)
		setTextSize('text', 130)
		setTextBorder('text', 0)
		setTextFont('text', TitleFont)
		makeLuaText('act', ActText, 2000, -1200, 350)
		setTextColor('act', ActTextColor)
		setTextSize('act', 130)
		setTextBorder('act', 0)
		setTextFont('act', ActFontText)
		addLuaText('text')
		addLuaText('act')
	
		runTimer('appear', 0.3, 1)
		runTimer('fadeout', 1.3, 1)
		doTweenColor('circleColorTween', 'circle', CircleColor, 0.0000000001, 'linear')
	elseif tag == 'appear'then
		doTweenX('circletween', 'circle', 0, 1.2, 'elasticInOut')
		doTweenX('texttween', 'text', -400, 1.2, 'elasticInOut')
		doTweenX('acttween', 'act', -200, 1.2, 'elasticInOut')
	end
	if tag == 'fadeout' then
		doTweenAlpha('circlefade', 'circle', 0, 1, 'elasticInOut')
		doTweenAlpha('textfade', 'text', 0, 1, 'elasticInOut')
		doTweenAlpha('actfade', 'act', 0, 1, 'elasticInOut')
		doTweenAlpha('blackfade', 'blackscreen', 0, 1, 'elasticInOut')
	end
	if tag == 'countdown' then
		startCountdown()
	end
end