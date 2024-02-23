private
isWhitespaceCharacter: char

	^ { Character space.
		  Character tab.
		  Character lf.
		  Character cr } includes: char
