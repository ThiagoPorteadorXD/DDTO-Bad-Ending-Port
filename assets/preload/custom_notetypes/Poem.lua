function onCreate()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Poem' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'PoemNotes');
setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'poemSplashes');
		end
	end
end
