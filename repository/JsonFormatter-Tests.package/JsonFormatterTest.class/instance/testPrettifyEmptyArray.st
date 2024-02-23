other
testPrettifyEmptyArray

	self assert: ((JsonFormatter prettify:' [

] ') = '[]')
