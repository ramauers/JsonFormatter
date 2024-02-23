other
testPrettifyObject4

	self assert: ((JsonFormatter prettify: '{"text": "19\" are 19 inches"}') = '{
    "text": "19\" are 19 inches"
}')
