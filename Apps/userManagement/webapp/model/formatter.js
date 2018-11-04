sap.ui.define([], function() {
	"use strict";

	return {
		formatApps: function(app){

            switch (app) {
                case "technicalConfiguration": 
                    return ("Configuracion técnica");
                case "userManagement":
                    return ("Gestión de Usuarios");
			}
		}

	};
});