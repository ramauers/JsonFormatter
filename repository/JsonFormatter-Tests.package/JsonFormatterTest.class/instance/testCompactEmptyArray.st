other
testCompactEmptyArray

	self assert: ((JsonFormatter compact:' [

] ') = '[]')
