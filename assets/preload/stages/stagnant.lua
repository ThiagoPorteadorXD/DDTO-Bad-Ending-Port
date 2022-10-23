function onCreate()

	makeLuaSprite('DDLCbg', 'doki/clubroom/DDLCbg', -600, -400);
	setScrollFactor('DDLCbg', 1, 1);
	scaleLuaSprite('DDLCbg', 1.5, 1.5);
	addLuaSprite('DDLCbg', false);
	setProperty('DDLCbg.visible', true);

	makeLuaSprite('DesksFront', 'doki/clubroom/DesksFront', -600, -450);
	setScrollFactor('DesksFront', 1.25, 1);
	scaleLuaSprite('DesksFront', 3, 3.2);
	addLuaSprite('DesksFront', true);
	setProperty('DesksFront.visible', true);

	makeLuaSprite('BGBAD', 'doki/bigmonika/BG', -600, -400);
	setScrollFactor('BGBAD', 1, 1);
	scaleLuaSprite('BGBAD', 1.5, 1.5);
	addLuaSprite('BGBAD', false);
	setProperty('BGBAD.visible', false);	

	makeAnimatedLuaSprite('BGSketch', 'doki/clubroom/BGSketch', -600, -400);
    addAnimationByPrefix('BGSketch', 'BGSketch', 'BGSketch', 24, true);  
    objectPlayAnimation('BGSketch', 'BGSketch', true)
    scaleLuaSprite('BGSketch', 1.5, 1.5);
    addLuaSprite('BGSketch', false);
    setProperty('BGSketch.alpha', 0.0001);	

    makeAnimatedLuaSprite('PaperBG', 'doki/clubroom/PaperBG', -600, -400);
    addAnimationByPrefix('PaperBG', 'PaperBG', 'PaperBG', 24, true);  
    objectPlayAnimation('PaperBG', 'PaperBG', true)
    scaleLuaSprite('PaperBG', 3, 3);
    addLuaSprite('PaperBG', false);
    setProperty('PaperBG.visible', false);	

  makeLuaSprite('vignette', 'doki/vignette', 0, 0)
  setObjectCamera('vignette', 'hud')
  setProperty('vignette.alpha', 0)
  addLuaSprite('vignette', false)

makeAnimatedLuaSprite('PoemTransition', 'doki/PoemTransition', 0, 0);
addAnimationByPrefix('PoemTransition', 'poemtransition', 'poemtransition', 24, false);  
scaleLuaSprite('PoemTransition', 2, 2);
addLuaSprite('PoemTransition', false);
setObjectCamera('PoemTransition', 'hud')
setProperty('PoemTransition.visible', false);	

setProperty('defaultCamZoom', 0.75) 

    setProperty('countdownReady.visible', false)
    setProperty('countdownSet.visible', false)
    setProperty('countdownGo.visible', false)
    setProperty('introSoundsSuffix', 'muted')
    
  makeLuaSprite('Pantalla', '', 0, 0)
  makeGraphic('Pantalla', screenWidth, screenHeight,'000000')
  setObjectCamera('Pantalla', 'other')
  setProperty('Pantalla.alpha', 0)
  addLuaSprite('Pantalla', true)
end

function onCountdownStarted()
doTweenColor('timeBar', 'timeBar', '9DF4FF', 0.005, 'linear');

makeLuaSprite('timeBarP', 'poemUI/timeBar', getProperty('timeBar.x')-10, getProperty('timeBar.y')-15);
setScrollFactor('timeBarP', 1, 1);
scaleLuaSprite('timeBarP', 1, 1);
setObjectCamera('timeBarP', 'hud');
addLuaSprite('timeBarP', false);

makeLuaSprite('healthBarP', 'poemUI/healthBar', getProperty('healthBar.x')-10, getProperty('healthBar.y')-15);
setScrollFactor('healthBarP', 1, 1);
scaleLuaSprite('healthBarP', 1, 1);
setObjectCamera('healthBarP', 'hud');
addLuaSprite('healthBarP', false);

setProperty('healthBarP.visible', false);	
setProperty('timeBarP.visible', false);	
end
function onStepHit()
if curStep == 286 then
setProperty('defaultCamZoom', 0.9) 	
setProperty('DesksFront.visible', false);
setProperty('BGBAD.visible', true);	
end
if curStep == 543 then
setProperty('defaultCamZoom', 0.75) 	
setProperty('DesksFront.visible', true);
setProperty('BGBAD.visible', false);	
end
if curStep == 800 then
setProperty('defaultCamZoom', 0.9) 	
removeLuaSprite('DesksFront')
removeLuaSprite('DDLCbg')
setProperty('BGBAD.visible', true);	
end
if curStep == 1056 then
setProperty('defaultCamZoom', 0.75) 	
setProperty('BGBAD.visible', true);	
doTweenAlpha('BGSketch', 'BGSketch', 1, 1,'quardInOut')
end
if curStep == 1312 then
setProperty('PaperBG.visible', true);
setProperty('gfGroup.visible', false);		
setProperty('defaultCamZoom', 0.9) 	
setProperty('BGBAD.visible', false);	
doTweenAlpha('BGSketch', 'BGSketch', 0, 0.01,'quardInOut')
end
if curStep == 1823 then
setProperty('PaperBG.visible', false);		
setProperty('gfGroup.visible', true);
setProperty('defaultCamZoom', 0.8) 	
setProperty('BGBAD.visible', true);	
setProperty('BGSketch.visible', false);	
end
if curStep == 2080 then
setProperty('defaultCamZoom', 0.9) 		
end
if curStep == 2144 then
setProperty('defaultCamZoom', 1) 		
end
if curStep == 2207 then
setProperty('defaultCamZoom', 1.1) 		
end
if curStep == 2273 then
setProperty('defaultCamZoom', 0.75) 	
setProperty('BGBAD.visible', true);	
doTweenAlpha('BGSketch', 'BGSketch', 1, 1,'quardInOut')	
end
if curStep == 2336 then
removeLuaSprite('BGBAD')
removeLuaSprite('BGSketch')	
setProperty('PaperBG.visible', true);
setProperty('gfGroup.visible', false);			
setProperty('defaultCamZoom', 0.9) 	
end
end		

function onEvent(name, value1, value2)
if name == 'Add/Remove Vignette' then
doTweenAlpha('vignette', 'vignette', value1, value2, 'linear') 
end  
if name == 'Asbel' then
if value1 == 'PoemaHud' then
PoemaHud()
end	
if value1 == 'NormalHud' then
NormalHud()
end	
if value1 == 'bye' then
setProperty('Pantalla.alpha', 1)
end
end
if name == 'Poem Transition' then
if value1 == 'true' then
setProperty('PoemTransition.visible', true);	
objectPlayAnimation('PoemTransition', 'poemtransition', true)
end
if value1 == 'false' then
setProperty('PoemTransition.visible', false);	
end
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
setTextFont("scoreTxt", "vcr.ttf");
setTextFont("botplayTxt", "vcr.ttf");
setTextFont("timeTxt", "vcr.ttf");
setProperty('timeBarBG.visible', true);
setProperty('timeBar.visible', true);
setProperty('healthBarBG.visible', true)
setProperty('healthBar.visible', true)
setProperty('healthBarP.visible', false);	
setProperty('timeBarP.visible', false);	
doTweenColor('timeBar', 'timeBar', '9DF4FF', 0.005, 'linear');
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');
end
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');
end
end