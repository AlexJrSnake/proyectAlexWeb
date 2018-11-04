sap.ui.define([], function() {
	"use strict";

	return {

		recordsCount: function(records) {
			console.log('len: '+records.length);
			return records.length;
		},
		enabledCreate: function(ok1, ok2){
			console.log('ok?: ', (ok1 && ok2))
			return (ok1 && ok2);
		}

	};
});
