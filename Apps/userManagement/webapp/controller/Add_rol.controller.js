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

    return BaseController.extend("userManagement.controller.Add_rol", {
        formatter: formatter,
        onInit: function () {
            this.getRouter().getRoute("addrol").attachPatternMatched(this._onMasterMatched, this);
        },
        _onMasterMatched: function (oEvent) {
            const serverName = "/userManagement/findApps";
            let dataApp = this.getModel("data");

            fetch(serverName, {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                })
                .then(
                    function (response) {
                        if (response.status == 500) {
                            console.log('Looks like there was a problem. Status Code: ' + response.status);
                            return;
                        }
                        response.json().then(function (res) {
                            dataApp.setProperty("/apps", res.data);
                        });
                    }
                )
        },
        onSearch: function (oEvent) {
            var filters = [];
            var query = oEvent.getParameter("query");
            if (query && query.length > 0) {
                var filter = new sap.ui.model.Filter("username", sap.ui.model.FilterOperator.Contains, query);
                filters.push(filter);
            }
            // update binding
            var list = this.getView().byId("Table");
            var binding = list.getBinding("items");
            binding.filter(filters);

        },
        onPressAccept: function (oEvent) {
            var selectedItems = this.getView().byId("aplicaciones").getSelectedItems();
            let arr = [];
            var userrol = this.getView().byId("userrol").getValue()
            var that = this;
           
            for (let i = 0; i < selectedItems.length; i++)
                arr.push(selectedItems[i].getKey())

          
            if (userrol) {
                const serverName = "/app_rolControl/GetName";
                fetch(serverName, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    credentials: 'same-origin',
                    withCredentials: true,
                    body: JSON.stringify({
                        name: userrol
                    })
                })
                .then(function (name) {
                    name.json().then(function (name) {
                        console.log(name);
                        console.log(name.length);
                        if (name.length == 0) {
                            if (selectedItems.length > 0) {
                                //Se Obtinen los datos del user
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
                                        } else {
                                            userData.json().then(function (userDataNew) {
                                                //Se Crea el Nuevo Rol y Insertamos datos en mdapplication_rol
                                                const serverNameRol = "/app_rolControl/AddRolXApps";
                                                console.log(userrol);
                                                console.log(userDataNew.user[0]['username']);
                                                console.log(arr);
                                                fetch(serverNameRol, {
                                                    method: 'POST',
                                                    headers: {
                                                        'Content-Type': 'application/json'
                                                    },
                                                    body: JSON.stringify({
                                                        name: userrol,
                                                        userAdmin: userDataNew.user[0]['username'],
                                                        selectedItems: arr
                                                    })
                                                }).then(function (response) {
                                                    if (response.status == 500) {
                                                        console.log('Looks like there was a problem. Status Code: ' + response.status);
                                                        return;
                                                    }
                                                    MessageToast.show("Rol creado con exito", {
                                                        duration: 2000
                                                    });
                                                    that.getRouter().navTo("main");
                                                });
                                            });
                                        }
                                    })
                            } else {
                                MessageToast.show("Debe Seleccionar las Apps a manejar el Rol", {
                                    duration: 2000
                                });
                            }
                        }else{
                            MessageToast.show("El Nombre del Rol ya existe", {
                                duration: 2000
                            });
                        }
                    });
                });
            } else {
                MessageToast.show("Debe ingresar un Nombre al Rol", {
                    duration: 2000
                });
            }
        },
        onPressReject: function () {
            this.getView().getModel("data").setProperty("/apps", "")
            this.getView().byId("userrol").setValue("")
            this.getRouter().navTo("main");
        }
    });


});