sap.ui.define([
"sap/ui/core/mvc/Controller",
"technicalConfiguration/model/formatter"
], function(Controller,formatter ) {
"use strict";
var  confirmDeleteDlg, showWarehousesDlg, selectWarehousesDlg, selectShedsDlg, showShedsDlg;
return Controller.extend("technicalConfiguration.controller.BaseController", {
    formatter: formatter,
    _setFragments: function() {
			//asigna el fragmento de confirmar eliminación a la vista y lo agrega al ciclo de vida de su modelo
			confirmDeleteDlg = sap.ui.xmlfragment("technicalConfiguration.view.DeleteConfirmationDialog", this);
			this.getView().addDependent(confirmDeleteDlg);

		},

    getI18n: function() {
        return this.getOwnerComponent().getModel("i18n").getResourceBundle();
    },
    getResourceBundle : function () {
      return this.getOwnerComponent().getModel("i18n").getResourceBundle();
    },
    getRouter: function() {
        return sap.ui.core.UIComponent.getRouterFor(this);
    },

    getModel : function (sName) {
      return this.getView().getModel(sName);
    },

    setModel : function (oModel, sName) {
      return this.getView().setModel(oModel, sName);
    },

    onNavMaster: function(oEvent) {
        this.getRouter().navTo("master", {}, true /*no history*/ );
    },

    onToast: function(message, f) {
        sap.m.MessageToast.show(message, {
            width: "22em",
            closeOnBrowserNavigation: false,
            onClose: f
        });
    },

    sendRequest : function (url, method, data, successFunc, srvErrorFunc, connErrorFunc) {
        const util = this.getModel("util");
        const $settings = {
            url: url,
            method: method,
            data: JSON.stringify(data),
            contentType: "application/json",
            error: err => {
                // console.log("error", err);
                util.setProperty("/connectionError/status", err.status);
                util.setProperty("/connectionError/message", err.statusText);
                this.onConnectionError();
                if(connErrorFunc) connErrorFunc(err);

            },
            success: res => {
                // console.log("respuesta", res);
                if(res.statusCode !== 200) {
                    util.setProperty("/serviceError/status", res.statusCode);
                    util.setProperty("/serviceError/message", res.msg);
                    this.onServiceError();
                    if(srvErrorFunc) srvErrorFunc(res);
                } else {
                    successFunc(res);
                }
            }
        };
        console.log("datos", data);
        $.ajax($settings);
    },
 
   

});
});
