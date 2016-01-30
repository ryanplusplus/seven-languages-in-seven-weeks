% Make a knowledge base representing musicians and instruments. Also represent
% musicians and their genre of music.

instrument(jimi_hendrix, guitar).
instrument(thom_yorke, vocals).
instrument(trent_reznor, vocals).
instrument(matt_bellamy, guitar).
instrument(yo_yo_ma, cello).

genre(jimi_hendrix, rock).
genre(thom_yorke, nerd_rock).
genre(trent_reznor, industrial).
genre(matt_bellamy, alternative).
genre(yo_yo_ma, classical).

% Find all musicians who play the guitar.

/*
| ?- instrument(Artist, guitar).
Artist = jimi_hendrix ? a
Artist = matt_bellamy
no
*/
