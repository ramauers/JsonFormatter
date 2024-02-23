initialization
initialize

	indent := 0.
	indentString := '    '.
	inQuote := false.
	inEmptyArrayOrMap := false.
	resultStream := WriteStream on: String new
