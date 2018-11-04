sap.ui.define([
    "technicalConfiguration/controller/BaseController",
    "sap/ui/model/json/JSONModel",
    "sap/m/Dialog",
    "sap/m/Button",
    "sap/m/Text"
], function(BaseController, JSONModel, Dialog, Button, Text) {
    "use strict";

    return BaseController.extend("technicalConfiguration.controller.bill", {
        onInit: function() {
            
            console.log("Controlador de bill");
            this.getOwnerComponent().getRouter().getRoute("bill").attachPatternMatched(this._onRouteMatched, this);
            
        },
        _onRouteMatched: function(oEvent) {
            var that = this,
                util = this.getView().getModel("util"),
                bill = this.getView().getModel("mdbill");

        
            this.getView().getModel("util").setProperty("/phone/",
            this.getOwnerComponent().getContentDensityClass() === "sapUiSizeCozy");
            util.setProperty("/selectedEntity/", "mdbill");
            this.onRead(that, util, bill);
        },
        onRead: function(that, util, bill) {
          console.log('Aqui');
          let serverName = "/bill/lastCode/"
          let mdbill = this.getModel("mdbill")
          fetch(serverName, {
            method: 'GET',
            headers: {
              'Content-Type': 'application/json'
            }
          }).then(function (response) {
            if (response.status == 500) {
              console.log('Looks like there was a problem. Status Code: ' + response.status);
              return;
            } else {
              response.json().then(function (res) {
                console.log(res.data[0].max)
                mdbill.setProperty("/Code",res.data[0].max + 1);
              })
            }
          })
   
        },
        onDialogCheckInUser: function (oEvent) {
            this.formCheckIn = sap.ui.xmlfragment(
            "technicalConfiguration.view.DialogCheckIn", this);
            this.getView().addDependent(this.formCheckIn);
            this.formCheckIn.open();
           
        },
        onCheckInCloseDialog: function () {
            this.formCheckIn.close();
            this.formCheckIn.destroy();
        },

        OnCheckIn: function (oEvent) {
            let mdbill = this.getModel("mdbill")
            let that = this
            let Now = new Date()
            let bill;
            let userInfo = mdbill.getProperty("/infoUser")
            console.log(oEvent.getSource().mProperties.text);

            if ( mdbill.getProperty("/records").length > 0) {
                mdbill.getProperty("/records").forEach(element => {
                    element.bill_date = Now;
                    element.mdclient_id = userInfo.mdclient_id;
                    element.payment_method = oEvent.getSource().mProperties.text;
                    element.code = mdbill.getProperty("/Code")
                    element.status = true;
                });
    
                bill = mdbill.getProperty("/records")
    
                let serverName = "/bill/addbill/"
                fetch(serverName, {
                    method: 'POST',
                    headers: {
                      'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        bill: bill
                    })
                  }).then(function (response) {
                    if (response.status == 500) {
                      console.log('Looks like there was a problem. Status Code: ' + response.status);
                      return;
                    } else {
                      response.json().then(function (res) {
                        that.formCheckIn.close();
                        that.formCheckIn.destroy();
                        var dialog = new Dialog({
                            title: 'Información',
                            type: 'Message',
                            state: 'Success',
                            content: new Text({
                              text: 'Factura Cargado con Exito'
                            }),
                            beginButton: new Button({
                              text: 'OK',
                              press: function () {
                                mdbill.setProperty("/records",[]);
                                mdbill.setProperty("/infoUser",[]);
                                mdbill.setProperty("/Total",0);
                                mdbill.setProperty("/User", true);
                                mdbill.setProperty("/Load", false);
                                mdbill.setProperty("/Code", mdbill.getProperty("/Code") + 1);
                                dialog.close();
                              }
                            }),
                            afterClose: function () {
                              dialog.destroy();
                            }
                          });
      
                          dialog.open();
                      })
                    }
                })
            }else{
                that.formCheckIn.close();
                that.formCheckIn.destroy();
                var dialog = new Dialog({
                    title: 'Información',
                    type: 'Message',
                    state: 'Error',
                    content: new Text({
                      text: 'Necesita Cargar Algunos Productos para Facturar'
                    }),
                    beginButton: new Button({
                      text: 'OK',
                      press: function () {
                        dialog.close();
                      }
                    }),
                    afterClose: function () {
                      dialog.destroy();
                    }
                  });

                  dialog.open();
            }
        
          
        },
        onDialogLoadUser: function (oEvent) {
            this.formLoadUser = sap.ui.xmlfragment(
            "technicalConfiguration.view.DialogLoadUser", this);
            this.getView().addDependent(this.formLoadUser);
            this.formLoadUser.open();
           
        },

        onLoadUserCloseDialog: function () {
            this.formLoadUser.close();
            this.formLoadUser.destroy();
        },

        onLoadClientInfo: function (oEvent) {
              let  cd = sap.ui.getCore().byId("DialogCd").mProperties.value;
              let mdbill = this.getModel("mdbill")
              let serverName = "/clients/loadclient/"
              let that = this
              console.log(cd);

            fetch(serverName, {
                method: 'POST',
                headers: {
                  'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    cd: cd
                })
              }).then(function (response) {
                if (response.status == 500) {
                  console.log('Looks like there was a problem. Status Code: ' +
                    response.status);
                  return;
                } else {
                  response.json().then(function (res) {
                    that.formLoadUser.close();
                    that.formLoadUser.destroy();
                    
                    if (res.data.length > 0) {
                      
                        var dialog = new Dialog({
                            title: 'Información',
                            type: 'Message',
                            state: 'Success',
                            content: new Text({
                              text: 'Cliente Cargado con Exito'
                            }),
                            beginButton: new Button({
                              text: 'OK',
                              press: function () {
                                console.log(res.data[0])
                                mdbill.setProperty("/infoUser", res.data[0]);
                                mdbill.setProperty("/User", false);
                                mdbill.setProperty("/Load", true);
                                dialog.close();
                              }
                            }),
                            afterClose: function () {
                              dialog.destroy();
                            }
                          });
      
                          dialog.open();
                    }else{
                        
                        var dialog = new Dialog({
                            title: 'Información',
                            type: 'Message',
                            state: 'Error',
                            content: new Text({
                              text: 'Cliente No encontrado'
                            }),
                            beginButton: new Button({
                              text: 'OK',
                              press: function () {
                                dialog.close();
                              }
                            }),
                            afterClose: function () {
                              dialog.destroy();
                            }
                          });
      
                          dialog.open();
                    }
                  

                  });
                }
              })

        },  
        onDialogLoadProduct: function (oEvent) {
            this.formLoadProduct = sap.ui.xmlfragment(
            "technicalConfiguration.view.DialogLoadProduct", this);
            this.getView().addDependent(this.formLoadProduct);
            this.formLoadProduct.open();
        },

        onLoadProductCloseDialog: function () {
            this.formLoadProduct.close();
            this.formLoadProduct.destroy();
        },

        onLoadProductInfo: function (oEvent) {
            let  code = sap.ui.getCore().byId("ProductCode").mProperties.value;
            let  quantity = sap.ui.getCore().byId("Productquantity").mProperties.value;
            let mdbill = this.getModel("mdbill")
            let Total = mdbill.getProperty("/Total")
            let serverName = "/boatproducts/loadproduct/"
            let that = this
            let records;
            console.log(code);

            fetch(serverName, {
                method: 'POST',
                headers: {
                  'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    code: code
                })
              }).then(function (response) {
                if (response.status == 500) {
                  console.log('Looks like there was a problem. Status Code: ' +
                    response.status);
                  return;
                } else {
                  response.json().then(function (res) {
                    that.formLoadProduct.close();
                    that.formLoadProduct.destroy();
                    
                    if (res.data.length > 0) {
                      
                        var dialog = new Dialog({
                            title: 'Información',
                            type: 'Message',
                            state: 'Success',
                            content: new Text({
                              text: 'Producto Agregado con Exito'
                            }),
                            beginButton: new Button({
                              text: 'OK',
                              press: function () {
                                console.log(res.data)
                                console.log(quantity)
                                
                                if (quantity == '') {
                                    res.data[0].quantity = 1 
                                }else{
                                    res.data[0].quantity = quantity 
                                }
                                Total = Total +  (res.data[0].quantity *  res.data[0].unit_price)

                                records = mdbill.getProperty("/records")
                                records.push(res.data[0]);
                                mdbill.setProperty("/records",records);
                                mdbill.setProperty("/Total",Total);

                                dialog.close();
                              }
                            }),
                            afterClose: function () {
                              dialog.destroy();
                            }
                          });
      
                          dialog.open();
                    }else{
                        
                        var dialog = new Dialog({
                            title: 'Información',
                            type: 'Message',
                            state: 'Error',
                            content: new Text({
                              text: 'Producto No Existente'
                            }),
                            beginButton: new Button({
                              text: 'OK',
                              press: function () {
                                dialog.close();
                              }
                            }),
                            afterClose: function () {
                              dialog.destroy();
                            }
                          });
      
                          dialog.open();
                    }
                  

                  });
                }
              })
        },

        onCleanBill: function (oEvent) {
            let mdbill = this.getModel("mdbill")
            mdbill.setProperty("/records",[]);
            mdbill.setProperty("/Total",0);
        },

        validateIntInput: function (o) {
            let input= o.getSource();
            let length = 10;
            let value = input.getValue()
            let regex = new RegExp(`/^[0-9]{1,${length}}$/`)

            if (regex.test(value)) {
            console.log()
            return true
            }
            else {
            let aux = value
            .split('')
            .filter(char => {
            if (/^[0-9]$/.test(char)) {
            if (char !== '.') {
            return true
            }
            }
            })
            .join('')
            value = aux.substring(0, length)
            input.setValue(value)
            return false
            }
        }
    })
})