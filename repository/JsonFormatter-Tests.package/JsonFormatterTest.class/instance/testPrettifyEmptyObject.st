other
testPrettifyEmptyObject

	self assert: ((JsonFormatter prettify:' {

} ') = '{}')
