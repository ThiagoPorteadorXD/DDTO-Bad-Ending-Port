function onCreate()

precacheImage('doki/ruinedclub/everyoneisdeadeveryoneisdead');

  makeLuaSprite('BGBAD', 'doki/bigmonika/BG', -600, -400);
  setScrollFactor('BGBAD', 1, 1);
  scaleLuaSprite('BGBAD', 1.5, 1.5);
  addLuaSprite('BGBAD', false);

  makeLuaSprite('DDLCbg', 'doki/ruinedclub/DDLCbg', -600, -400);
  setScrollFactor('DDLCbg', 1, 1);
  scaleLuaSprite('DDLCbg', 3, 3);
  addLuaSprite('DDLCbg', false);
  setProperty('DDLCbg.visible', true);

  makeLuaSprite('DesksFront', 'doki/ruinedclub/DesksFront', -600, -450);
  setScrollFactor('DesksFront', 1.25, 1);
  scaleLuaSprite('DesksFront', 3, 3.2);
  addLuaSprite('DesksFront', true);
  setProperty('DesksFront.visible', true);

makeAnimatedLuaSprite('HomeStatic', 'doki/ruinedclub/HomeStatic', -450, -50);
addAnimationByPrefix('HomeStatic', 'HomeStatic', 'HomeStatic', 24, true);  
objectPlayAnimation('HomeStatic', 'HomeStatic', true)
scaleLuaSprite('HomeStatic', 2.5, 1.9);
setProperty('HomeStatic.alpha', 0)
addLuaSprite('HomeStatic', false);

  makeLuaSprite('Home', 'doki/ruinedclub/BG', -600, -400);
  setScrollFactor('Home', 1, 1);
  scaleLuaSprite('Home', 1.5, 1.5);
  addLuaSprite('Home', false);
  setProperty('Home.visible', false);

  makeLuaSprite('vignette', 'doki/vignette', 0, 0)
  setObjectCamera('vignette', 'hud')
  setProperty('vignette.alpha', 0)
  addLuaSprite('vignette', false)

  makeLuaSprite('papel', 'doki/ruinedclub/papel', 0, 0)
  setObjectCamera('papel', 'hud')
  scaleLuaSprite('papel', 2, 2);
  setProperty('papel.alpha', 0)
  addLuaSprite('papel', false)

  makeLuaSprite('fates', 'doki/ruinedclub/notepad', -20, -50);
  setScrollFactor('fates', 1, 1);
  scaleLuaSprite('fates', 1.5, 1.5);
  addLuaSprite('fates', false);
  setProperty('fates.visible', false);

makeAnimatedLuaSprite('BakaBGDoodles', 'doki/ruinedclub/BakaBGDoodles', 0, 0);
addAnimationByPrefix('BakaBGDoodles', 'Normal Overlay', 'Normal Overlay', 24, true);  
addAnimationByPrefix('BakaBGDoodles', 'HOME Overlay', 'HOME Overlay', 24, false);  
objectPlayAnimation('BakaBGDoodles', 'Normal Overlay', true)
scaleLuaSprite('BakaBGDoodles', 1.8, 1.8);
addLuaSprite('BakaBGDoodles', false);
setObjectCamera('BakaBGDoodles', 'hud')

makeAnimatedLuaSprite('Yuri', 'characters/silhouette_yuri', 1000, 50);
addAnimationByPrefix('Yuri', 'idle', 'Yuri Idle', 24, true); 
addAnimationByPrefix('Yuri', 'singLEFT', 'Yuri Sing Note Left', 24, true);
addAnimationByPrefix('Yuri', 'singDOWN', 'Yuri Sing Note Down', 24, true);
addAnimationByPrefix('Yuri', 'singUP', 'Yuri Sing Note Up', 24, true);
addAnimationByPrefix('Yuri', 'singRIGHT', 'Yuri Sing Note Right', 24, true);
setProperty('Yuri.flipX', true);
objectPlayAnimation('Yuri', 'idle');
addLuaSprite('Yuri', false);

    setProperty('countdownReady.visible', false)
    setProperty('countdownSet.visible', false)
    setProperty('countdownGo.visible', false)
    setProperty('introSoundsSuffix', 'muted')
  
makeAnimatedLuaSprite('sayori', 'characters/silhouette_sayo', -50, 120);
addAnimationByPrefix('sayori', 'idle', 'Sayo Idle nrw test', 24, true); 
addAnimationByPrefix('sayori', 'singLEFT', 'Sayo Sing Note Left', 24, true);
addAnimationByPrefix('sayori', 'singDOWN', 'Sayo Sing Note Down', 24, true);
addAnimationByPrefix('sayori', 'singUP', 'Sayo Sing Note Up', 24, true);
addAnimationByPrefix('sayori', 'singRIGHT', 'Sayo Sing Note Right', 24, true);
objectPlayAnimation('sayori', 'idle');
addLuaSprite('sayori', false);

setProperty('Yuri.alpha', 0)
setProperty('sayori.alpha', 0)
setProperty('BakaBGDoodles.alpha', 0)

setProperty('defaultCamZoom', 0.75) 
end

function onCountdownStarted()
makeLuaSprite('timeBarP', 'poemUI/timeBar', getProperty('timeBar.x')-10, getProperty('timeBar.y')-15);
setScrollFactor('timeBarP', 1, 1);
scaleLuaSprite('timeBarP', 1, 1);
setObjectCamera('timeBarP', 'hud');
addLuaSprite('timeBarP', false);

setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

makeLuaSprite('healthBarP', 'poemUI/healthBar', getProperty('healthBar.x')-10, getProperty('healthBar.y')-15);
setScrollFactor('healthBarP', 1, 1);
scaleLuaSprite('healthBarP', 1, 1);
setObjectCamera('healthBarP', 'hud');
addLuaSprite('healthBarP', false);

setProperty('healthBarP.visible', false); 
setProperty('timeBarP.visible', false); 

setTextFont("scoreTxt", "n1.ttf");
setTextFont("botplayTxt", "n1.ttf");
setTextFont("timeTxt", "n1.ttf");
doTweenColor('timeBar', 'timeBar', 'FFFFFF', 0.005, 'linear');
noteTweenX('nat0', 0, -1000, 0.001, 'quartInOut')
noteTweenX('nat1', 1, -1000, 0.001, 'quartInOut')
noteTweenX('nat2', 2, -1000, 0.001, 'quartInOut')
noteTweenX('nat3', 3, -1000, 0.001, 'quartInOut')
noteTweenX('bf4', 4, -1000, 0.001, 'quartInOut')
noteTweenX('bf5', 5, -1000, 0.001, 'quartInOut')
noteTweenX('bf6', 6, -1000, 0.001, 'quartInOut')
noteTweenX('bf7', 7, -1000, 0.001, 'quartInOut')
doTweenAlpha('dad', 'dad', 0, 0.01, 'linear')
doTweenAlpha('boyfriend', 'boyfriend', 0, 0.01, 'linear')
doTweenAlpha('gf', 'gf', 0, 0.01, 'linear')
end

function onEvent(name, value1, value2)
if name == 'Add/Remove Vignette' then
doTweenAlpha('vignette', 'vignette', value1, value2, 'linear') 
end  
if name == 'Asbel' then
if value1 == 'strums' then
strums()
end
if value1 == 'strumsdad' then
doTweenAlpha('BakaBGDoodles', 'BakaBGDoodles', 1, 1, 'linear')
noteTweenAlpha("A1", 0, 1, 1, "linear")
noteTweenAlpha("A2", 1, 1, 1, "linear")
noteTweenAlpha("A3", 2, 1, 1, "linear")
noteTweenAlpha("A4", 3, 1, 1, "linear")
end
if value1 == 'strumsbf' then
noteTweenAlpha("A5", 4, 1, 1, "linear")
noteTweenAlpha("A6", 5, 1, 1, "linear")
noteTweenAlpha("A7", 6, 1, 1, "linear")
noteTweenAlpha("A8", 7, 1, 1, "linear")
end
if value1 == 'fase2' then
setProperty('defaultCamZoom', 0.77) 
setProperty('healthBarBG.visible', true)
setProperty('healthBar.visible', true)
setProperty('scoreTxt.visible', true)
setProperty('iconP1.visible', true)
setProperty('iconP2.visible', true)
doTweenColor('timeBar', 'timeBar', 'FF78D4', 0.005, 'linear');
Muerte()
end
if value1 == 'run' then
doTweenColor('timeBar', 'timeBar', 'FF54C9', 0.005, 'linear');
Run()
end  
if value1 == 'fase3' then
doTweenColor('timeBar', 'timeBar', 'FF33BF', 0.005, 'linear');
MiHogar()
end
if value1 == 'libreta' then
PoemaHud()
doTweenColor('timeBar', 'timeBar', 'FF0000', 0.005, 'linear');
setProperty('fates.visible', true);
doTweenAlpha('dad', 'dad', 0, 0.01, 'linear')
doTweenAlpha('gf', 'gf', 0, 0.01, 'linear')
setProperty('defaultCamZoom', 1.1) 
end
if value1 == 'libretafin' then
NormalHud()
doTweenColor('timeBar', 'timeBar', 'FF33BF', 0.005, 'linear');
setProperty('HomeStatic.alpha', 0)
doTweenAlpha('HomeStatic', 'HomeStatic', 1, 1, 'linear')
doTweenAlpha('fates', 'fates', 0, 1, 'linear')
setObjectCamera('HomeStatic', 'camHUD')
runTimer('ads', 1.2, 1);
end
if value1 == 'alf' then
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
doTweenColor('timeBar', 'timeBar', 'FFFFFF', 0.005, 'linear');
setProperty('dad.alpha', 0)
setProperty('gf.alpha', 0)
setProperty('boyfriend.alpha', 0)
end
if value1 == 'boyST' then
doTweenAlpha('boyfriend', 'boyfriend', 1, 0.5, 'linear') 
noteTweenAlpha("A5", 4, 1, 1, "linear")
noteTweenAlpha("A6", 5, 1, 1, "linear")
noteTweenAlpha("A7", 6, 1, 1, "linear")
noteTweenAlpha("A8", 7, 1, 1, "linear")
end  
if value1 == 'sayo' then
doTweenAlpha('sayori', 'sayori', 1, 0.5, 'linear') 
end  
if value1 == 'yur' then
doTweenAlpha('Yuri', 'Yuri', 1, 0.5, 'linear') 
end  
if value1 == 'final' then
MiMuerte()
end   
if value1 == 'todosjuntos' then
makeLuaSprite('everyoneisdeadeveryoneisdead', 'doki/ruinedclub/everyoneisdeadeveryoneisdead', 0, 0)
setObjectCamera('everyoneisdeadeveryoneisdead', 'camOther')
setProperty('everyoneisdeadeveryoneisdead.alpha', 0)
addLuaSprite('everyoneisdeadeveryoneisdead', false)
Felicidad()
end   
end
if name == 'Move Opponent Tween' then
doTweenX("TEATRAPE", "dad", value1, 0.1, "linear") 
end
if name == 'Move Boyfriend Tween' then
doTweenX("TEATRAPEATI", "boyfriend", value1, 0.1, "linear") 
end
end

function Muerte() 
scaleLuaSprite('BakaBGDoodles', 1.7, 1.7);  
setObjectCamera('HomeStatic', 'camHUD')
removeLuaSprite('DDLCbg')
removeLuaSprite('DesksFront')  
objectPlayAnimation('BakaBGDoodles', 'HOME Overlay', true)
setProperty('papel.alpha', 1)
setProperty('HomeStatic.alpha', 1)
runTimer('Muerte', 1.5, 1);
runTimer('Muerte2', 3.5, 1);
end

function Run() 
setProperty('HomeStatic.alpha', 0.1)
end

function strums() 
noteTweenAlpha("A1", 0, 0.001, 0.01, "linear")
noteTweenAlpha("A2", 1, 0.001, 0.01, "linear")
noteTweenAlpha("A3", 2, 0.001, 0.01, "linear")
noteTweenAlpha("A4", 3, 0.001, 0.01, "linear")
noteTweenAlpha("A5", 4, 0.001, 0.01, "linear")
noteTweenAlpha("A6", 5, 0.001, 0.01, "linear")
noteTweenAlpha("A7", 6, 0.001, 0.01, "linear")
noteTweenAlpha("A8", 7, 0.001, 0.01, "linear")
noteTweenX('dadTween1', 0, 90, 1, 'linear');
noteTweenX('dadTween2', 1, 205, 1, 'linear');
noteTweenX('dadTween3', 2, 315, 1, 'linear');
noteTweenX('dadTween4', 3, 425, 1, 'linear');
noteTweenX('bfTween1', 4, 730, 1, 'linear');
noteTweenX('bfTween2', 5, 845, 1, 'linear');
noteTweenX('bfTween3', 6, 955, 1, 'linear');
noteTweenX('bfTween4', 7, 1065, 1, 'linear');
end

function MiHogar() 
setObjectCamera('HomeStatic', 'camHUD')
runTimer('Hogar', 1, 1);
end

function MiMuerte()
setProperty('defaultCamZoom', 0.75) 
setProperty('HomeStatic.alpha', 0)
removeLuaSprite('Home')
noteTweenAlpha("A1", 0, 0.001, 0.01, "linear")
noteTweenAlpha("A2", 1, 0.001, 0.01, "linear")
noteTweenAlpha("A3", 2, 0.001, 0.01, "linear")
noteTweenAlpha("A4", 3, 0.001, 0.01, "linear")
noteTweenAlpha("A5", 4, 0.001, 0.01, "linear")
noteTweenAlpha("A6", 5, 0.001, 0.01, "linear")
noteTweenAlpha("A7", 6, 0.001, 0.01, "linear")
noteTweenAlpha("A8", 7, 0.001, 0.01, "linear")
end

function Felicidad()
doTweenAlpha('HomeStatic', 'HomeStatic', 1, 0.3, 'linear') 
doTweenAlpha('everyoneisdeadeveryoneisdead', 'everyoneisdeadeveryoneisdead', 1, 0.3, 'linear') 
setObjectCamera('HomeStatic', 'camOther')
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Muerte' then
doTweenAlpha('BakaBGDoodles', 'BakaBGDoodles', 0, 2, 'linear') 
doTweenAlpha('papel', 'papel', 0, 2, 'linear') 
end  
if tag == 'Muerte2' then
setProperty('HomeStatic.alpha', 0)
setObjectCamera('HomeStatic', 'camGame')
removeLuaSprite('papel')
removeLuaSprite('BakaBGDoodles')  
end
if tag == 'Hogar' then
setObjectCamera('HomeStatic', 'camGame')
setProperty('Home.visible', true);
removeLuaSprite('BGBAD')
setProperty('defaultCamZoom', 0.77) 
end
if tag == 'ads' then
doTweenAlpha('dad', 'dad', 1, 0.01, 'linear')
doTweenAlpha('gf', 'gf', 1, 0.01, 'linear')
setProperty('HomeStatic.alpha', 1)
setObjectCamera('HomeStatic', 'camGame')
setProperty('Home.visible', true);
removeLuaSprite('fates')
setProperty('defaultCamZoom', 0.77) 
end
end


local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
if noteType == 'Yuri Sing' then
objectPlayAnimation('Yuri', singAnims[direction + 1], true)
end
if noteType == 'Sayo Sing' then
objectPlayAnimation('sayori', singAnims[direction + 1], true)
end
end 

function onBeatHit()
if curBeat % 2 == 0 then
objectPlayAnimation('sayori', 'idle');
objectPlayAnimation('Yuri', 'idle');
end
end

function PoemaHud()
setProperty('scoreTxt.scale.x', 2)
setProperty('scoreTxt.scale.y', 2)  
setProperty('timeTxt.scale.x', 2)
setProperty('timeTxt.scale.y', 2) 
setProperty('botplayTxt.scale.x', 2)
setProperty('botplayTxt.scale.y', 2)  
setTextFont("scoreTxt", "s1.ttf");
setTextFont("botplayTxt", "s1.ttf");
setTextFont("timeTxt", "s1.ttf");
setProperty('timeBarBG.visible', false);
setProperty('healthBarBG.visible', false)
setProperty('healthBarP.visible', true);  
setProperty('timeBarP.visible', true);  
doTweenColor('timeBar', 'timeBar', 'FF0000', 0.005, 'linear');
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'PoemNotes');
end
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'texture', 'PoemNotes');
end
end

function NormalHud()
setProperty('scoreTxt.scale.x', 1)
setProperty('scoreTxt.scale.y', 1)  
setProperty('timeTxt.scale.x', 1)
setProperty('timeTxt.scale.y', 1) 
setProperty('botplayTxt.scale.x', 1)
setProperty('botplayTxt.scale.y', 1)  
setTextFont("scoreTxt", "n1.ttf");
setTextFont("botplayTxt", "n1.ttf");
setTextFont("timeTxt", "n1.ttf");
setProperty('timeBarBG.visible', true);
setProperty('timeBar.visible', true);
setProperty('healthBarBG.visible', true)
setProperty('healthBar.visible', true)
setProperty('healthBarP.visible', false); 
setProperty('timeBarP.visible', false); 
doTweenColor('timeBar', 'timeBar', 'FF33BF', 0.005, 'linear');
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');
end
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
end
end