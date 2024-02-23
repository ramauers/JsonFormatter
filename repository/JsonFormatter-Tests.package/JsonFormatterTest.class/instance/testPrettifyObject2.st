other
testPrettifyObject2

	"Do not touch whitespaces in quotes"
	self assert: ((JsonFormatter prettify: '               {   " prop erty "   :              " val ue "              }              ') = '{
    " prop erty ": " val ue "
}')
