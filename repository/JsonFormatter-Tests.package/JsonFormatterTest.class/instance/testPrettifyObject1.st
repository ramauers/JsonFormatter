other
testPrettifyObject1

	self assert: ((JsonFormatter prettify: '{"property":"value"}') = '{
    "property": "value"
}')
