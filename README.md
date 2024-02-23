# JsonFormatter
A Pretty Printer for JSON-Strings developed in GemStone/S 64 Bit.

This reporitory contains the class JsonFormatter and some basic tests.

JsonFormatter was developed in and only tested with GemStone/S 64 Bit Version 3.7.0. Due to its simplicity it will probably work in older versions and Pharo as well.

JsonFormatter is a self-contained class with no dependencies other than GemStone/S kernel classes. As a companion to Gemstone's build in JSON capabilities (JsonParser, asJson), it can be a very lightweight alternative to NeoJSON.


Usage of JsonFormatter is very straightforward and illustrated by the following example snippets:

```smalltalk
	"Generate JSON"
	aJsonString := anArrayOrDictionary asJson.
	
	"Prettify a JSON-String"
	aPrettyString := JsonFormatter prettify: aJsonString.
	
	"Compact a JSON-String"
	aCompactString := JsonFormatter compact: aJsonString.
```
