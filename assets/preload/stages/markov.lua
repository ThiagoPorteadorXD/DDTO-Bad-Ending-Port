function onCreate()

  makeLuaSprite('blanco', '', -800, -350);
  makeGraphic('blanco', 3000, 3000,'FFFFFF')
  setProperty('blanco.alpha', 0)
  addLuaSprite('blanco', false)

  makeLuaSprite('BGBAD', 'doki/bigmonika/BG', -600, -400);
  setScrollFactor('BGBAD', 1, 1);
  scaleLuaSprite('BGBAD', 1.5, 1.5);
  addLuaSprite('BGBAD', false);
  setProperty('BGBAD.visible', false);  

	makeLuaSprite('ClosetBG', 'doki/ClosetBG', -800, -350);
	setScrollFactor('ClosetBG', 1, 1);
	scaleLuaSprite('ClosetBG', 2.3, 2.1);
	addLuaSprite('ClosetBG', false);

  makeLuaSprite('vignette', 'doki/vignette', 0, 0)
  setObjectCamera('vignette', 'hud')
  setProperty('vignette.alpha', 0)
  addLuaSprite('vignette', false)

  makeLuaSprite('Black', '', 0, 0)
  makeGraphic('Black', screenWidth, screenHeight,'000000')
  setObjectCamera('Black', 'hud')
  setProperty('Black.alpha', 0)
  addLuaSprite('Black', false)
  
    setProperty('countdownReady.visible', false)
    setProperty('countdownSet.visible', false)
    setProperty('countdownGo.visible', false)
    setProperty('introSoundsSuffix', 'muted')

	setProperty('defaultCamZoom', 1) 
end

function onCountdownStarted()
doTweenAlpha('camGame', 'camGame', 0, 0.001, 'linear')
doTweenColor('timeBar', 'timeBar', 'FF0000', 0.005, 'linear');
setTextFont("scoreTxt", "y1.ttf");
setTextFont("botplayTxt", "y1.ttf");
setTextFont("timeTxt", "y1.ttf");
noteTweenX('yuri0', 0, -1000, 0.001, 'quartInOut')
noteTweenX('yuri1', 1, -1000, 0.001, 'quartInOut')
noteTweenX('yuri2', 2, -1000, 0.001, 'quartInOut')
noteTweenX('yuri3', 3, -1000, 0.001, 'quartInOut')
setProperty('gf.visible', false)
setProperty('boyfriend.visible', false)
end  

function onEvent(name, value1, value2)
if name == 'Vignette' then
doTweenAlpha('vignette', 'vignette', value1, value2, 'linear') 
end  
if name == 'Asbel' then
if value1 == 'yuristrum1' then
doTweenAlpha('camGame', 'camGame', 1, 1, 'linear')
noteTweenX('dadTween1', 0, 90, 1, 'linear');
noteTweenX('dadTween2', 1, 205, 1, 'linear');
noteTweenX('dadTween3', 2, 315, 1, 'linear');
noteTweenX('dadTween4', 3, 425, 1, 'linear');   
noteTweenAlpha("A1", 0, 0.0001, 0.01, "linear")
noteTweenAlpha("A2", 1, 0.0001, 0.01, "linear")
noteTweenAlpha("A3", 2, 0.0001, 0.01, "linear")
noteTweenAlpha("A4", 3, 0.0001, 0.01, "linear") 
end
if value1 == 'yuristrum2' then
noteTweenAlpha("A1", 0, 1, 1, "linear")
noteTweenAlpha("A2", 1, 1, 1, "linear")
noteTweenAlpha("A3", 2, 1, 1, "linear")
noteTweenAlpha("A4", 3, 1, 1, "linear") 
end  
if value1 == 'XDD' then
setProperty('blanco.alpha', 1)
removeLuaSprite('BGBAD')
removeLuaSprite('ClosetBG')
end  
end
if name == 'Change Character' then
if value2 == 'yuri-closeup' then
doTweenColor('timeBar', 'timeBar', '7300FF', 0.005, 'linear');
setTextFont("scoreTxt", "y3.ttf");
setTextFont("botplayTxt", "y3.ttf");
setTextFont("timeTxt", "y3.ttf");
setProperty('ClosetBG.visible', true)
setProperty('BGBAD.visible', false)
setProperty('gf.visible', false)
setProperty('boyfriend.visible', false)
end
if value2 == 'yuri-crazy' then
doTweenColor('timeBar', 'timeBar', 'A052FF', 0.005, 'linear');
setTextFont("scoreTxt", "y1.ttf");
setTextFont("botplayTxt", "y1.ttf");
setTextFont("timeTxt", "y1.ttf");
setProperty('ClosetBG.visible', false)
setProperty('BGBAD.visible', true)
setProperty('gf.visible', true)
setProperty('boyfriend.visible', true)
end
end
if name == 'Screen in Darkness' then
doTweenAlpha('Black', 'Black', value1, value2, 'linear') 
end
end