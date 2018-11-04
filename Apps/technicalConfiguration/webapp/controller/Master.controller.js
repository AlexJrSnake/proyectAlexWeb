sap.ui.define([
	"technicalConfiguration/controller/BaseController",
	"sap/m/MessageToast",
	"sap/m/Dialog",
	'sap/m/Button',
	'sap/m/Text',
	"technicalConfiguration/controller/MasterUserAppController",
], function (BaseController,MessageToast, Dialog, Button, Text,MasterUserAppController) {
	"use strict";

	return BaseController.extend("technicalConfiguration.controller.Master", {

		onInit: function () {		
			var oList = this.getView().byId("entitiesList");
			this._oList = oList;
			this._oListFilterState = {
				aFilter: [],
				aSearch: []
			};

			this._setFragments();
			this.getRouter().getRoute("master").attachPatternMatched(this._onMasterMatched, this);

		},
		_onMasterMatched: function(oEvent) {
			let util = this.getView().getModel("util"),
					that = this;

			util.attachRequestCompleted(function() {
				console.log(document.URL.split('/'));
				let prefixUrl = document.URL.split('/');
				let aprefixUrl = prefixUrl[2].split(':');

				util.setProperty('/serviceUrl', 'http://'+aprefixUrl[0]+":"+aprefixUrl[1]);


				let firstItem = that.getView().byId("entitiesList").getItems()[0],
						name = firstItem.getBindingContext("util").getObject().name;
						console.log(firstItem);


				if (firstItem) {
						console.log("Entre");
						that.getRouter().navTo(name, {}, false);
				}


			});

		},
		/**
		 * Muestra la vista principal de la entidad seleccionada
		 * @param  {Event} oEvent Evento que llamó esta función
		 */
		onSelectionChange: function(oEvent) {

			/**
			 * @type {Array} entities Arreglo con las entidades disponibles
			 * @type {String} name    Nombre de la entidad seleccionada
			 */
			var entities = ["mdstage"],
				name = oEvent.getSource().getBindingContext("util").getObject().name;
			/**
			 * Función para buscar la entidad que tenga el mismo nombre que la proporcionada en la ruta
			 */

			function findEntity(entity) {
				return entity === name;
			}

			console.log(name);
			if (name != 'bill') {
				this.getModel("mdbill").setProperty("/records",[]);
				this.getModel("mdbill").setProperty("/infoUser",[]);
				this.getModel("mdbill").setProperty("/Total",0);
				this.getModel("mdbill").setProperty("/User", true);
				this.getModel("mdbill").setProperty("/Load", false);
			}
			this.getRouter().navTo(name, {}, false /*create history*/ );
		},

		/**
		 * Busca una entidad y filtra la lista de entidades actuales
		 * @param  {Event} oEvent Evento que llamó esta función
		 */
		onSearch: function(oEvent) {
			var aFilters = [],
				sQuery = oEvent.getSource().getValue(),
				binding = this.getView().byId("entitiesList").getBinding("items");

			if (sQuery && sQuery.length > 0) {
				/** @type {Object} filter1 Primer filtro de la búsqueda */
				var filter1 = new sap.ui.model.Filter("displayName", sap.ui.model.FilterOperator.Contains, sQuery);
				aFilters = new sap.ui.model.Filter([filter1]);
			}

			//se actualiza el binding de la lista
			binding.filter(aFilters);
		},
		goToLaunchpad: function () {
			window.location.href = "/Apps/launchpad/webapp";
		},
		_updateListItemCount: function(iTotalItems) {
			var sTitle;
			// only update the counter if the length is final
			if (this._oList.getBinding("items").isLengthFinal()) {
				sTitle = this.getResourceBundle().getText("OS.TitleCount", [iTotalItems]);
				this.getModel("util").setProperty("/title", sTitle);
			}
		},
		onUpdateFinished: function(oEvent) {

			let util = this.getModel("util");
			util.setProperty("/title", this.getResourceBundle().getText("OS.TitleCount", [0]));
			util.setProperty("/noDataText", this.getResourceBundle().getText("OS.masterListNoDataText"));

			this._updateListItemCount(oEvent.getParameter("total"));
		}
	});
});
