sap.ui.define([
    "userManagement/controller/BaseController",
    "sap/ui/model/json/JSONModel",
    'sap/ui/core/BusyIndicator',
    'sap/ui/model/odata/v2/ODataModel',
    'sap/ui/model/odata/OperationMode',
    "sap/m/MessageToast",
    'sap/ui/core/Item',
    'userManagement/model/formatter'
], function (BaseController, JSONModel, BusyIndicator, ODataModel, OperationMode, MessageToast, Item, formatter) {
    "use strict";


    return BaseController.extend("userManagement.controller.Add_user", {

        formatter: formatter,

        onInit: function () {

            this.getRouter().getRoute("add").attachPatternMatched(this._onMasterMatched, this);

        },

        _onMasterMatched: function (oEvent) {
            var type = new Item({
                key: "",
                text: ""
            })
            this.getView().byId("user_type").setSelectedItem(type)
            this.apli = this.getView().byId("aplicaciones")

            var modelo= this.getView().getModel("data");

            const serverNameRol = "/userManagement/findRol";
			fetch(serverNameRol, {
				method: 'GET',
				headers: { 'Content-Type': 'application/json' }, 
			})
			.then(
				function(response) {
					if (response.status !== 200) {
					console.log('Looks like there was a problem. Status Code: ' + response.status);
					return;
					}
					response.json().then(function(res) {
						var rols=res.data
						modelo.setProperty("/userTypes",rols)
					});
				  }
			)
        },

        // updateUserType: function (oEvent) {
        //     var type = this.getView().byId("user_type").getSelectedKey()
        //     var modelo = this.getView().getModel("data")
        //     var type2, type3
        //     var that = this

        //     // if (type == "Administrador" || type == "Planificador") {
        //     //     type2 = "Progresivo"
        //     //     type3 = "Regresivo"
        //     // }
        //     // if (type == "Progresivo-Regresivo") {
        //     //     type = "Progresivo"
        //     //     type2 = "Regresivo"
        //     // }

        //     const serverName = "/userManagement";
        //     fetch(serverName, {
        //             method: 'POST',
        //             headers: {
        //                 'Content-Type': 'application/json'
        //             },
        //             body: JSON.stringify({
        //                 type: type
        //             })
        //         })
        //         .then(function (response) {
        //             if (response.status !== 200) {
        //                 console.log('Looks like there was a problem. Status Code: ' +
        //                     response.status);
        //                 return;
        //             }
        //             response.json().then(function (res) {
        //                 var apps = res.data
        //                 if (type == "Administrador" || type == "Planificador") {
        //                     for (var i = 0; i < apps.length; i++) {
        //                         // console.log(apps[i]["application_name"]);
        //                         var it = new Item({
        //                             key: apps[i]["application_id"],
        //                             text: apps[i]["application_name"]
        //                         })
        //                         that.apli.addSelectedItem(it)

        //                     }
        //                     that.apli.setEditable(false)
        //                     // modelo.setProperty('/apps',apps);
        //                 } else {
        //                     if (type == "Progresivo" || type == "Progresivo-Regresivo") {
        //                         for (var i = 0; i < apps.length; i++) {
        //                             if (apps[i]["application_name"] == "dailyMonitor") {
        //                                 var daily = apps.splice(i, 1)
        //                                 var it = new Item({
        //                                     key: daily[0]["application_id"],
        //                                     text: daily[0]["application_name"]
        //                                 })
        //                                 that.apli.addSelectedItem(it)
        //                             }
        //                         }
        //                     }
        //                     modelo.setProperty("/apps", apps)

        //                 }
        //             });
        //         })
        // },

        onPressAccept: function () {
            var username = this.getView().byId("username").getValue()
            username = username.toLowerCase()
            var password = this.getView().byId("password").getValue()
            var password2 = this.getView().byId("password_2").getValue()
            var name = this.getView().byId("name").getValue()
            name = name.charAt(0).toUpperCase() + name.slice(1).toLowerCase()
            // name.charAt(0).toUpperCase()
            var lastname = this.getView().byId("lastname").getValue()
            lastname = lastname.charAt(0).toUpperCase() + lastname.slice(1).toLowerCase()
            // lastname.charAt(0).toUpperCase()
            var that = this
            var tipo = this.getView().byId("user_type").getSelectedKey()
            // var selectedItems = this.getView().byId("aplicaciones").getSelectedItems();
            var id

            if (name && lastname) {

            } else {
                MessageToast.show("Debe ingresar nombre y apellido", {
                    duration: 2000
                });
            }
            if (username) {
                const serverName = "/userManagement/findUsername";
                fetch(serverName, {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({
                            username: username
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
                                if (res.data[0]["count"] == 0) {
                                    if (password) {
                                        if (password2) {
                                            if (password == password2) {

                                                const serverName = "/userControl/LogIn";
                                                fetch(serverName, {
                                                    method: 'POST',
                                                    headers: {
                                                        'Content-Type': 'application/json'
                                                    }, 
                                                    credentials: 'same-origin',
                                                    withCredentials: true
                                                })
                                                .then(function (userData) {
                                                   
                                                    if (userData.status == 309) {
                                                        window.location.href = "/Apps/launchpad/webapp"
                                                    }else{
                                                        console.log(userData);

                                                        userData.json().then(function (userDataNew) {
                                                            const now = new Date();

                                                            console.log(userDataNew);

                                                            const serverName = "/userManagement/addUser";
                                                            fetch(serverName, {
                                                                    method: 'POST',
                                                                    headers: {
                                                                        'Content-Type': 'application/json'
                                                                    },
                                                                    body: JSON.stringify({
                                                                        username: username,
                                                                        password: password,
                                                                        type_user: tipo,
                                                                        active: true,
                                                                        name: name,
                                                                        lastname: lastname,
                                                                        userAdmin :userDataNew.user[0]['username'],
                                                                        date: now
                                                                    })
                                                                })
                                                                .then(function (response) {
                                                                        if (response.status !== 200) {
                                                                            console.log('Looks like there was a problem. Status Code: ' +
                                                                                response.status);
                                                                            console.log(response)
                                                                            return;
                                                                        }else{
                                                                            MessageToast.show("Usuario creado con exito", {
                                                                                duration: 2000
                                                                            });
                                                                            that.getRouter().navTo("main");
                                                                        }
                                                                        // response.json().then(function (res) {
                                                                        //     console.log(res);
                                                                        //     id = res.data["user_id"]
                                                                        //     if (selectedItems) {
                                                                        //         for (var i = 0; i < selectedItems.length; i++) {
                                                                        //             const serverName = "/userManagement/addUser_app";
                                                                        //             fetch(serverName, {
                                                                        //                     method: 'POST',
                                                                        //                     headers: {
                                                                        //                         'Content-Type': 'application/json'
                                                                        //                     },
                                                                        //                     body: JSON.stringify({
                                                                        //                         user_id: id,
                                                                        //                         app_id: selectedItems[i].getKey()
                                                                        //                     })
                                                                        //                 })
                                                                        //                 .then(
                                                                        //                     function (response) {
                                                                        //                         if (response.status !== 200) {
                                                                        //                             console.log('Looks like there was a problem. Status Code: ' +
                                                                        //                                 response.status);
                                                                        //                             console.log(response)
                                                                        //                             return;
                                                                        //                         }
                                                                        //                         response.json().then(function (res) {
                                                                                                    // MessageToast.show("Usuario creado con exito", {
                                                                                                    //     duration: 2000
                                                                                                    // });
                                                                                                    // that.getRouter().navTo("main");
                                                                        //                         });
                                                                        //                     })
                                                                        //         }
                                                                        //     }
                                                                        // });
                                                                    }
                                                                )
            
                                                        });
                                                    }
                                                });
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
                                        MessageToast.show("Debe ingresar una contraseña", {
                                            duration: 2000
                                        });
                                    }
                                } else {
                                    MessageToast.show("El usuario '" + username + "' ya existe", {
                                        duration: 2000
                                    });
                                }
                            });
                        })
            } else {
                MessageToast.show("Debe ingresar un nombre de usuario", {
                    duration: 2000
                });
            }
        },

        onPressReject: function () {
            this.getView().getModel("data").setProperty("/apps", "")
            this.getView().byId("username").setValue("")
            this.getView().byId("name").setValue("")
            this.getView().byId("lastname").setValue("")
            this.getView().byId("password").setValue("")
            this.getView().byId("password_2").setValue("")
            this.getView().byId("user_type").setSelectedItem("")
            // this.getView().byId("aplicaciones").setSelectedItems("")
            this.getRouter().navTo("main");
        }
    });
});