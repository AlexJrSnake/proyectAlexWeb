sap.ui.define([
    "userManagement/controller/BaseController",
    "sap/ui/model/json/JSONModel",
    'sap/ui/core/BusyIndicator',
    'sap/ui/model/odata/v2/ODataModel',
    'sap/ui/model/odata/OperationMode',
    "sap/m/MessageToast",
    'sap/ui/core/Item',
    "sap/m/Dialog",
    'sap/m/Button',
    'sap/m/Text',
    'userManagement/model/formatter'
], function (BaseController, JSONModel, BusyIndicator, ODataModel, OperationMode, MessageToast, Item, Dialog, Button, Text, formatter) {
    "use strict";

    return BaseController.extend("userManagement.controller.edit_rol", {
        //text="{path:'data>application_name', formatter: '.formatter.formatApps'}

        formatter: formatter,

        onInit: function () {

            this.getRouter().getRoute("editrol").attachPatternMatched(this._onRouteMatched, this);

        },
        _onRouteMatched: function (oEvent) {

            var rolname = this.getView().getModel("data").getProperty("/selected_rol/rolname")
            var rol_id = this.getView().getModel("data").getProperty("/selected_rol/rol_id")
            var that = this;
            // var modelo=this.getView().getModel("data");
            this.apli = this.getView().byId("aplicaciones");

            var modelo = this.getView().getModel("data")
            //--------------------------------------------

            const serverName = "/userManagement/findApps";
            // let dataApp = this.getModel("data");


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
                            var apps = res.data
                            modelo.setProperty("/apps", apps);
                            that.apli.setEditable(true)
                        });
                    }
                )
            //--------------------------------------------
            const serverNameApps = "/app_rolControl/otbenerApps";
            fetch(serverNameApps, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        rolname: rolname,
                        rol_id: rol_id
                    })
                })
                .then(function (response) {
                    if (response.status == 500) {
                        console.log('Looks like there was a problem. Status Code: ' +
                            response.status);
                        return;
                    }
                    response.json().then(function (res) {
                        console.log(res);
                        console.log(res.data);
                        that.apps = res.data
                        modelo.setProperty("/user_app", that.apps)
                        const keys = []

                        for (var i = 0; i < that.apps.length; i++) {
                            keys.push(that.apps[i]["application_id"])
                            var it = new Item({
                                key: that.apps[i]["application_id"],
                                text: that.formatter.formatApps(that.apps[i]["application_name"]),

                            })
                            console.log(it);
                            that.apli.addSelectedItem(it)
                            that.apli.fireSelectionChange()
                        }
                        that.apli.setSelectedKeys(keys)
                        // dataApp.setProperty("/apps", apps)
                        console.log(that.apli);
                    })
                });
            var permisos = this.getView().getModel("data").getProperty("/apps")
            console.log(permisos);

        },
        onPressReject: function () {
            this.getView().getModel("data").setProperty("/apps", "")
            this.getView().byId("userrol").setValue("")
            this.getView().byId("aplicaciones").setSelectedItems("")
            this.getRouter().navTo("main");
        },
        handleSelectionFinish: function () {
            console.log(this.getView().byId("aplicaciones").getSelectedItems())
        },
        onPressAccept: function () {
            var that = this;
            var inf = "Se actualizará toda la información ingresada"
            let arr = [];

            var dialog = new Dialog({
                title: '¿Desea continuar con la operación?',
                type: 'Message',
                content: new Text({
                    text: inf
                }),
                beginButton: new Button({
                    text: 'Si, deseo continuar',
                    press: function () {
                        var rolname = that.getView().getModel("data").getProperty("/selected_rol/rolname")
                        var rol_id = that.getView().getModel("data").getProperty("/selected_rol/rol_id")
                        var selectedItems = that.getView().byId("aplicaciones").getSelectedItems();

                        if (rolname) {
                            const serverName = "/app_rolControl/updateRolName";
                            fetch(serverName, {
                                method: 'POST',
                                headers: {
                                    'Content-Type': 'application/json'
                                },
                                body: JSON.stringify({
                                    rolname: rolname,
                                    rol_id: rol_id
                                })
                            }).then(function (response) {
                                console.log(response);
                                if (response.status == 500) {
                                    console.log('Looks like there was a problem. Status Code: ' +
                                        response.status);
                                    console.log(response)
                                    return;
                                }
                            })
                        } else {
                            MessageToast.show("Debe ingresar nombre del rol", {
                                duration: 2000
                            });
                        }

                        if (selectedItems) {

                            for (let i = 0; i < selectedItems.length; i++)
                                arr.push(selectedItems[i].getKey())


                            const serverName = "/app_rolControl/updateAppsXRol";
                            fetch(serverName, {
                                    method: 'POST',
                                    headers: {
                                        'Content-Type': 'application/json'
                                    },
                                    body: JSON.stringify({
                                        rol_id: rol_id,
                                        NewSelectedItems: arr
                                    })
                                })
                                .then(function (response2) {
                                    if (response2.status == 500) {
                                        console.log('Looks like there was a problem. Status Code: ' +
                                            response.status);
                                        return;
                                    }
                                    MessageToast.show("Rol actualizado con exito", {
                                        duration: 2000
                                    });
                                    that.getRouter().navTo("main");

                                })
                        } else {
                            MessageToast.show("Debe Seleccionar una Aplicacion", {
                                duration: 2000
                            });
                        }

                    }
                }),
                endButton: new Button({
                    text: 'No, deseo regresar',
                    press: function () {
                        dialog.close();
                    }
                }),
                afterClose: function () {
                    that.getView().getModel("data").setProperty("/apps", "");
                    that.getView().byId("userrol").setValue("");
                    that.getView().byId("aplicaciones").setSelectedItems("");
                    dialog.destroy();
                }
            });
            dialog.open();
        }
    })

});