public
prettify

	[ sourceStream atEnd ] whileFalse: [
		| char |
		char := sourceStream next.
		self updateQuoteState: char.
		inQuote
			ifTrue: [ self renderChar: char ]
			ifFalse: [
				(self class isWhitespaceCharacter: char)
					ifFalse: [ self renderCharPretty: char ]]]
