public
prettify: aString

	^ self new
		  sourceString: aString;
		  prettify;
		  contents
