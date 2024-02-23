public
compact: aString

	^ self new
		  sourceString: aString;
		  compact;
		  contents
