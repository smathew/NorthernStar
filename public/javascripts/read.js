// **************************************************************
// Copyright � Share One
// **************************************************************

var DCS = 0

DCS = "Copyright &copy; Share One."

function getValue(string,value) {

	var startPos = string.indexOf(value + "=");
	if (startPos > -1) {
		startPos = startPos + value.length + 1;
		var endPos = string.indexOf("&",startPos);
		if (endPos == -1)
			endPos = string.length;
		return unescape(string.substring(startPos,endPos));
	}
	return '';
}

var passed = location.search.substring(1);

// **************************************************************
