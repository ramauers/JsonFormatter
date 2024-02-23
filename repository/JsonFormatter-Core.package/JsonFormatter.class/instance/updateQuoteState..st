private
updateQuoteState: char

	(char == $" and: [ (sourceStream collection at: sourceStream position-2) ~~ $\ ])
		ifTrue: [	inQuote := inQuote not ]
