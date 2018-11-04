sap.ui.define([
	"technicalConfiguration/controller/BaseController",
	"sap/ui/model/json/JSONModel",
	"sap/m/Dialog",
	'sap/m/Button',
	'sap/m/Text'
], function (BaseController, JSONModel, Dialog, Button, Text) {
	"use strict";

	return BaseController.extend("technicalConfiguration.controller.App", {

		onInit: function () {
			//Aplica el modo de densidad de contenido a la vista raíz
			this.getView().addStyleClass(this.getOwnerComponent().getContentDensityClass());

			this.setModel(new JSONModel({
				"originalRecords": []
			}), "oscenterOriginal");

		}
	});
});
