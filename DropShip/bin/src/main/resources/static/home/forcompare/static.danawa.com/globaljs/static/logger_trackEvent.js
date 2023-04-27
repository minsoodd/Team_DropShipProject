<!--
	//logger section click
	function _trkEventLog(str) {
		try {_trk_clickTrace('EVT', str);} catch(_e) {}
	}

	function _trkEventRFOLog(str) {
		try {_trk_clickTrace('RFO', str);} catch(_e) {}
	}

	//TRK_CP STRING REPLACE For insight
	try {
		if((typeof _TRK_CP)!="undefined" && _TRK_CP!="") {
			_TRK_CP = _TRK_CP.replace(/\//g, "^");
		}
	} catch(_e) {}
//-->