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

    return BaseController.extend("userManagement.controller.edit_user", {
        //text="{path:'data>application_name', formatter: '.formatter.formatApps'}

        formatter: formatter,

        onInit: function () {

            this.getRouter().getRoute("edit").attachPatternMatched(this._onRouteMatched, this);

        },

        _onRouteMatched: function (oEvent) {

            this.getView().byId("user_type").setValue("")
            this.getView().byId("user_type").setSelectedItem("")
            var tipo = this.getView().getModel("data").getProperty("/selected_user/user_role")
            this.active = this.getView().getModel("data").getProperty("/selected_user/active")
            var modelo = this.getView().getModel("data");
            this.getView().byId("switch_active").setState(this.active)
            var type = new Item({
                key: tipo,
                text: tipo
            })
            this.getView().byId("user_type").setSelectedItem(type);

            const serverNameRol = "/userManagement/findRol";
            fetch(serverNameRol, {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                })
                .then(
                    function (response) {
                        if (response.status !== 200) {
                            console.log('Looks like there was a problem. Status Code: ' + response.status);
                            return;
                        }
                        response.json().then(function (res) {
                            var rols = res.data
                            modelo.setProperty("/userTypes", rols)
                        });
                    }
                )


            // var permisos=this.getView().getModel("data").getProperty("/apps")
        },

        onPressReject: function () {
            // this.getView().getModel("data").setProperty("/apps","")
            this.getView().byId("username").setValue("")
            this.getView().byId("password").setValue("")
            this.getView().byId("password_2").setValue("")
            this.getView().byId("user_type").setSelectedItem("")
            // this.getView().byId("aplicaciones").setSelectedItems("")
            this.getRouter().navTo("main");
        },

        onPressAccept: function () {
            // var part = window.location.href.split("/"),
            //     prefix = part[2].split(":"),
            //     ip = prefix[0],
            //     port = prefix[1];
            // var app_r=part[4];
            // var rout= "http://"+ip+":"+port
            // var selected_apps=this.getView().byId("aplicaciones").getSelectedItems()

            var inf = "Se actualizará toda la información ingresada"
            var that = this

            var or_type = this.getView().getModel("data").getProperty("/selected_user/user_role")
            var id = this.getView().getModel("data").getProperty("/selected_user/user_id")
            var act = this.getView().byId("switch_active").getState()

            var dialog = new Dialog({
                title: '¿Desea continuar con la operación?',
                type: 'Message',
                content: new Text({
                    text: inf
                }),
                beginButton: new Button({
                    text: 'Si, deseo continuar',
                    press: function () {
                        var username = that.getView().byId("username").getValue()
                        var password = that.getView().byId("password").getValue()
                        var password2 = that.getView().byId("password_2").getValue()
                        var tipo = that.getView().byId("user_type").getSelectedKey()
                        // var selectedItems = that.getView().byId("aplicaciones").getSelectedItems();
                        // var prev_userApps=that.getView().getModel("data").getProperty("/user_app")

                        if (tipo != or_type) {
                            const serverName = "/userManagement/";
                            fetch(serverName, {
                                    method: 'PUT',
                                    headers: {
                                        'Content-Type': 'application/json'
                                    },
                                    body: JSON.stringify({
                                        user_id: id,
                                        user_type: tipo
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
                                        });
                                    }
                                )
                        }

                        if (password) {
                            if (password2) {
                                if (password === password2) {
                                    const serverName = "/userControl/updateUserPassword";
                                    fetch(serverName, {
                                            method: 'PUT',
                                            headers: {
                                                'Content-Type': 'application/json'
                                            },
                                            body: JSON.stringify({
                                                user_id: id,
                                                password: password
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
                                                    MessageToast.show("Usuario actualizado con exito", {
                                                        duration: 500
                                                    });
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
                        }

                        if (that.active != act) {
                            const serverName = "/userControl/editUserAct";
                            fetch(serverName, {
                                    method: 'PUT',
                                    headers: {
                                        'Content-Type': 'application/json'
                                    },
                                    body: JSON.stringify({
                                        user_id: id,
                                        active: act
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
                                            MessageToast.show("Usuario actualizado con exito", {
                                                duration: 500
                                            });
                                        });
                                    }
                                )
                        }
                        // if(selectedItems){
                        //     const serverName = "/user_appControl/";
                        //     fetch(serverName, {
                        //         method: 'DELETE',
                        //         headers: { 'Content-Type': 'application/json' },
                        //         body: JSON.stringify({
                        //             user_id: id
                        //         })  
                        //     })
                        //     .then(
                        //         function(response) {
                        //             if (response.status !== 200) {
                        //                 console.log('Looks like there was a problem. Status Code: ' +
                        //                 response.status);
                        //                 console.log(response)
                        //                 return;
                        //             }
                        //             response.json().then(function(res) {
                        //                 console.log(res);

                        //                 for(var i=0;i<selectedItems.length;i++){
                        //                     MessageToast.show("Usuario actualizado con exito", {duration:2000});
                        //                     const serverName = "/userManagement/addUser_app";
                        //                     fetch(serverName, {
                        //                         method: 'POST',
                        //                         headers: { 'Content-Type': 'application/json' },
                        //                         body: JSON.stringify({
                        //                             user_id: id,
                        //                             app_id: selectedItems[i].getKey()
                        //                         })  
                        //                     })
                        //                     .then(
                        //                         function(response) {
                        //                             if (response.status !== 200) {
                        //                                 console.log('Looks like there was a problem. Status Code: ' +
                        //                                 response.status);
                        //                                 console.log(response)
                        //                                 return;
                        //                             }
                        //                             response.json().then(function(res) {
                        //                                 console.log(res);
                        //                                 MessageToast.show("Usuario actualizado con exito", {duration:2000});
                        //                                 //setTimeout(() => {
                        //                                     that.getRouter().navTo("main");
                        //                                // }, 2000)
                        //                             });
                        //                         }
                        //                     )
                        //                 }
                        //             });
                        //         })   
                        // }
                        MessageToast.show("Usuario actualizado con exito", {
                            duration: 2000
                        });
                        //setTimeout(() => {
                        that.getRouter().navTo("main");
                        // }, 2000)
                        dialog.close();
                    }
                }),
                endButton: new Button({
                    text: 'No, deseo regresar',
                    press: function () {
                        dialog.close();
                    }
                }),
                afterClose: function () {
                    // that.getView().getModel("data").setProperty("/apps","")
                    // that.getView().byId("username").setValue("")
                    that.getView().byId("password").setValue("")
                    that.getView().byId("password_2").setValue("")
                    that.getView().byId("user_type").setSelectedItem("")
                    // that.getView().byId("aplicaciones").setSelectedItems("")
                    dialog.destroy();
                }
            });
            dialog.open();
        }
    });

});