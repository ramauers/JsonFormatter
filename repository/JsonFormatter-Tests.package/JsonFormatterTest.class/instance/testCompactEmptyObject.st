other
testCompactEmptyObject

	self assert: ((JsonFormatter compact:' {

} ') = '{}')
