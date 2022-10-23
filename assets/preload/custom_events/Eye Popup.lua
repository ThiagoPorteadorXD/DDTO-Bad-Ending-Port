function onCreate()
precacheImage('doki/MarkovEyes');
end	

function onEvent(name, value1, value2)
if name == "Eye Popup" then
makeAnimatedLuaSprite('MarkovEyes', 'doki/MarkovEyes', value1, value2)
addAnimationByPrefix('MarkovEyes', 'MarkovEyes', 'MarkovWindow', 24, false)
objectPlayAnimation('MarkovEyes', 'MarkovEyes', true);
scaleLuaSprite('MarkovEyes', 1, 1);
setObjectCamera('MarkovEyes', 'other')
addLuaSprite('MarkovEyes', false)
end
end