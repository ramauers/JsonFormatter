private
isEmptyArrayOrMap
	"Assume that sourceStream is positioned after an opening char, either ${ or $["

	| pos openingChar closingChar elementContents isEmpty |
	pos := sourceStream position.
	openingChar := sourceStream collection at: sourceStream position - 1.
	closingChar := openingChar == ${
		               ifTrue: [ $} ]
		               ifFalse: [ $] ].
	elementContents := sourceStream upTo: closingChar.
	isEmpty := elementContents allSatisfy: [ :each |
		           self class isWhitespaceCharacter: each ].
	sourceStream position: pos.
	^ isEmpty
