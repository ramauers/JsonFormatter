other
testCompactObject4

	self assert: ((JsonFormatter compact: '{
    "text": "19\" are 19 inches"
}') = '{"text":"19\" are 19 inches"}')
