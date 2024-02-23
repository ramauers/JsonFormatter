other
testCompactObject1

	self assert: ((JsonFormatter compact: '{   "property"   :
"value"
  }') = '{"property":"value"}')
