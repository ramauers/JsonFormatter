private
renderCharPretty: char 

	('{[' includes: char) ifTrue: [
		self increaseIndent.
		resultStream nextPut: char.
		self isEmptyArrayOrMap
			ifTrue: [ inEmptyArrayOrMap := true ]
			ifFalse: [
				resultStream nextPut: Character lf.
				self renderIndent ].
		^ self ].

	(']}' includes: char) ifTrue: [
		self decreaseIndent.
		inEmptyArrayOrMap
			ifTrue: [ inEmptyArrayOrMap := false ]
			ifFalse: [
				resultStream nextPut: Character lf.
				self renderIndent ].
		resultStream nextPut: char.
		^ self ].

	$, == char ifTrue: [
		resultStream
			nextPut: char;
			nextPut: Character lf.
		self renderIndent.
		^ self ].

	$: == char ifTrue: [
		resultStream
			nextPut: char;
			nextPut: Character space.
		^ self ].

	resultStream nextPut: char
