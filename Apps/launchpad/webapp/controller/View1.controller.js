sap.ui.define([
	"Launchpad/controller/BaseController",
	"sap/ui/core/mvc/Controller",
	'jquery.sap.global',
	'sap/ui/model/json/JSONModel',
	"sap/m/Dialog",
	'sap/m/Button',
	'sap/m/Text',
	"sap/m/MessageBox",
	"sap/m/MessageToast"
], function (BaseController, Controller, jQuery, JSONModel, Dialog, Button, Text, MessageBox, MessageToast) {
	"use strict";

	return BaseController.extend("Launchpad.controller.View1", {


		onInit: function () {
			this.getRouter().getRoute("home").attachPatternMatched(this._onRouteMatched, this);
		},


		_onRouteMatched: function () {
			const servername = "/userControl/LogIn";
			var data = this.getView();
			fetch(servername, {
					method: 'POST',
					headers: {
						'Content-Type': 'application/json'
					},
					credentials: 'same-origin',
					withCredentials: true
				})
				.then(
					function (response) {
						console.log(response);
						if (response.status == 309 || response.status == 311) {
							window.location.href = "/Apps/userControl/webapp";
							MessageToast.show("Sesion No Iniciada", {
								duration: 2000
							});
						} else {
							if (response.status == 301) {
								response.json().then(function (res) {
									console.log(res.user[0].username);
									data.getModel("data").setProperty("/name", res.user[0].username)

									const serverName = "/app_rolControl/otbenerAppXrol";
									fetch(serverName, {
											method: 'POST',
											headers: {
												'Content-Type': 'application/json'
											},
											body: JSON.stringify({
												user_infor: res.user[0]
											})
										})
										.then(function (response) {
											response.json().then(function (app_id) {
												console.log(app_id);
												if (app_id.data.length > 0) {
													
													console.log(app_id.data.length + ' App');
													// console.log(app_id.Active.length);
													for (var i = 0; i < app_id.data.length; i++) {
														var aux = 'tile' + app_id.data[i].application_id;
														const tile = data.byId(aux.toString())
														if(tile !== undefined) {
															tile.setVisible(true)
														}
													}
												} else {
													console.log('No Tiene App');
												}
											});
										});		
								});
							}
						}
					});
		},

		logout: function (oEvent) {
			const servername = "/userControl/signout";
			fetch(servername, {
				method: 'GET',
				headers: {
					'Content-Type': 'application/json'
				},
				credentials: "same-origin",
				withCredentials: true,
			}).then(
				function (response) {
					if (response.status == 310) {
						window.location.href = "/Apps/userControl/webapp";
					} else {
						if (response.status == 309) {
						console.log(response);
							window.location.href = "/Apps/userControl/webapp";
							MessageToast.show("Sesion No Iniciada", {
								duration: 2000
							});
						}
					}
				});
		},

		onChangePass: function () {
			var oView = this.getView();
			this.oDialog = sap.ui.xmlfragment("Launchpad.view.DialogLogin", this);
			oView.addDependent(this.oDialog);
			this.oDialog.open();
		},

		onSaveDialog: function (oEvent) {
			var old_pass = sap.ui.getCore().byId("old").getValue();
			var new_pass = sap.ui.getCore().byId("pass").getValue();
			var conf = sap.ui.getCore().byId("pafss").getValue();
			var user_id ;
			var that = this
			var dummy = this.getView().getModel("dummy");
			var prefixUrl = dummy.getProperty("/urlServer") + ":" + dummy.getProperty("/port");
			const serverName = "/userControl/LogIn";
			if (old_pass) {
				fetch(serverName, {
					method: 'POST',
					headers: {
						'Content-Type': 'application/json'
					},
					credentials: 'same-origin',
					withCredentials: true
				}).then(function (response) {
					if (response.status !== 301) {
						console.log('Looks like there was a problem. Status Code: ' +
							response.status);
						console.log(response)
						return;
					}
					response.json().then(function (res) {
						if (res) {
							user_id = res.user[0].user_id;
							if (new_pass) {
								if (conf) {
									if (new_pass == conf) {
										const serverName = "/userControl/updateUserPassword";
										fetch(serverName, {
												method: 'PUT',
												headers: {
													'Content-Type': 'application/json'
												},
												body: JSON.stringify({
													user_id: user_id,
													password: new_pass
												})
											})
											.then(
												function (response) {
													if (response.status !== 200) {
														console.log('Looks like there was a problem. Status Code: ' +
															response.status);
														console.log(response)
														return;
													}
													
													response.json().then(function (res) {
														console.log(res);
														MessageToast.show("Contraseña actualizada con exito", {
															duration: 2000
														});
														that.onCloseDialog();
													});
												}
											)

									} else {
										MessageToast.show("Las contraseñas no coinciden", {
											duration: 2000
										});
									}
								} else {
									MessageToast.show("Por favor, repita la contraseña", {
										duration: 2000
									});
								}
							} else {
								MessageToast.show("Por favor, ingrese la nueva contraseña", {
									duration: 2000
								});
							}
						} else {
							MessageToast.show("Por favor rectifique su contraseña actual", {
								duration: 2000
							});
						}

					});
						}
					)

			} else {
				MessageToast.show("Por favor, ingrese su contraseña actual", {
					duration: 2000
				});
			}
		},

		onCloseDialog: function () {
			sap.ui.getCore().byId("old").setValue("");
			sap.ui.getCore().byId("pass").setValue("");
			sap.ui.getCore().byId("pafss").setValue("");
			this.oDialog.close()
			this.oDialog.destroy();
		},

		press: function (evt) {
			var dummy = this.getView().getModel("dummy"),
				idView = this.getView().getId(),
				idTile = evt.getSource().sId,
				prefixUrl = dummy.getProperty("/urlServer") + ":" + dummy.getProperty("/port");
			var band = this.getView().getModel("data").getProperty("/band")

			console.log(band);
			// console.log(prefixUrl);
			switch (idTile) {
				case idView + "--tile0":
					window.location.href = "/Apps/technicalConfiguration/webapp";
				break;
				case idView + "--tile9":
					window.location.href = "/Apps/userManagement/webapp";
				break;
			
			

				/* AQUI SE AGREGA LA ENTRADA A LA VISTA*/
		
				// case idView + "--tile13":
				// 	window.location.href = "/Apps/brooderReport/webapp";
				// 	break;
				// case idView + "--tile14":
				// 	window.location.href = "/Apps/liftBreedingFarmsRotation/webapp";
				// 	break;
				// case idView + "--tile15":
				// 	window.location.href = "/Apps/fatteningConfiguration/webapp";
				// 	break;
			}
		}

	});
});