other
testCompactObject2

	"Do not compact whitespaces in quotes"
	self assert: ((JsonFormatter compact: '               {   " prop erty "   :              " val ue "              }              ') = '{" prop erty ":" val ue "}')
