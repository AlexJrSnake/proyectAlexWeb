sap.ui.define([
    "technicalConfiguration/controller/BaseController",
    "sap/ui/model/json/JSONModel",
    "sap/m/Dialog",
    "sap/m/Button"
], function(BaseController, JSONModel,Dialog,Button) {
    "use strict";

    return BaseController.extend("technicalConfiguration.controller.billinformation", {

        onInit: function() {
            //ruta para la vista principal
            console.log("Controlador de billinformation");
            this.getOwnerComponent().getRouter().getRoute("billinformation").attachPatternMatched(this._onRouteMatched, this);
            //ruta para la vista de detalles de un registro
            this.getOwnerComponent().getRouter().getRoute("billinformation_Record").attachPatternMatched(this._onRecordMatched, this);
         
        },

     
        _onRouteMatched: function(oEvent) {
            var that = this,
                util = this.getView().getModel("util"),
                billinformation = this.getView().getModel("billinformation");

            //dependiendo del dispositivo, establece la propiedad "phone"
            this.getView().getModel("util").setProperty("/phone/",
            this.getOwnerComponent().getContentDensityClass() === "sapUiSizeCozy");

            //establece MDSTAGE como la entidad seleccionada
            util.setProperty("/selectedEntity/", "billinformation");


            //obtiene los registros de mdstage
            this.onRead(that, util, billinformation);
        },
     
        onRead: function(that, util, billinformation) {

            var service = util.getProperty('/serviceUrl');
            var settings = {
                url: service+"/bill",
                method: "GET",
                success: function(res) {
                    console.log(res.data);
                    util.setProperty("/busy/", false);
                    billinformation.setProperty("/records/", res.data);
                    console.log(billinformation);
                },
                error: function(err) {
                    console.log(err);
                    util.setProperty("/error/status", err.status);
                    util.setProperty("/error/statusText", err.statusText);
                    //that.onConnectionError();
                }
            };
            console.log(util);
            util.setProperty("/busy/", true);
            billinformation.setProperty("/records/", []);
            $.ajax(settings);
        },
        /**
         * Coincidencia de ruta para acceder a la creación de un registro
         * @param  {Event} oEvent Evento que llamó esta función
         */
        _onCreateMatched: function(oEvent) {

            this._resetRecordValues();
            this._editRecordValues(true);
            this._editRecordRequired(true);
        },
        /**
         * Resetea todos los valores existentes en el formulario del registro
         */
        _resetRecordValues: function() {
            /**
             * @type {JSONModel} MDSTAGE Referencia al modelo "MDSTAGE"
             */
            var billinformation = this.getView().getModel("billinformation");

            billinformation.setProperty("/code/value", "");
            

        },
        /**
         * Habilita/deshabilita la edición de los datos de un registro MDSTAGE
         * @param  {Boolean} edit "true" si habilita la edición, "false" si la deshabilita
         */
        _editRecordValues: function(edit) {

            var billinformation = this.getView().getModel("billinformation");
            billinformation.setProperty("/code/editable", edit);
            billinformation.setProperty("/name/editable", edit);
            billinformation.setProperty("/description/editable", edit);
            billinformation.setProperty("/cost/editable", edit);
            billinformation.setProperty("/unit_price/editable", edit);

            billinformation.setProperty("/type/editable", edit);
          },
        /**
         * Se define un campo como obligatorio o no, de un registro MDSTAGE
         * @param  {Boolean} edit "true" si es campo obligatorio, "false" si no es obligatorio
         */
        _editRecordRequired: function(edit) {
            var billinformation = this.getView().getModel("billinformation");
            billinformation.setProperty("/code/required", edit);
            billinformation.setProperty("/name/required", edit);
            billinformation.setProperty("/description/required", edit);
            billinformation.setProperty("/cost/required", edit);
            billinformation.setProperty("/unit_price/required", edit);
        },
        /**
         * Cancela la creación de un registro MDSTAGE, y regresa a la vista principal
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onCancelCreate: function(oEvent) {
            this._resetRecordValues();
            this.onNavBack(oEvent);
        },
        /**
         * Regresa a la vista principal de la entidad seleccionada actualmente
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onNavBack: function(oEvent) {
            /** @type {JSONModel} OS Referencia al modelo "OS" */
            var util = this.getView().getModel("util");

            this.getRouter().navTo(util.getProperty("/selectedEntity"), {}, false /*create history*/ );
        },
   
        /**
         * Visualiza los detalles de un registro MDSTAGE
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onViewBillinfomationRecord: function(oEvent) {
            
            this._resetRecordValues();

            console.log(oEvent.getSource().getBindingContext("billinformation").getObject())
            

            var billinformation = this.getView().getModel("billinformation");
            billinformation.setProperty("/save/", false);
            billinformation.setProperty("/cancel/", false);
            billinformation.setProperty("/selectedRecordPath/", oEvent.getSource().getBindingContext("billinformation"));
            billinformation.setProperty("/code/value", oEvent.getSource().getBindingContext("billinformation").getObject().code);
            let that = this;
            let Total = 0;
            console.log(billinformation.getProperty("/code/value"))
           
            let serverName = "/bill/billinfo/"
            fetch(serverName, {
                method: 'POST',
                headers: {
                  'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    code: billinformation.getProperty("/code/value")
                })
            }).then(function (response) {
                if (response.status == 500) {
                  console.log('Looks like there was a problem. Status Code: ' + response.status);
                  return;
                } else {
                    response.json().then(function(res) {
                        console.log(res)
                        billinformation.setProperty("/records", res.data);
                        billinformation.setProperty("/Code", res.data[0].code);
    
                        res.data.forEach(element => {
                            Total = Total +  (element.quantity * element.unit_price)
                        });
                        billinformation.setProperty("/Total", Total);

                        that.getRouter().navTo("billinformation_Record", {}, false /*create history*/ );
    
                        billinformation.setProperty('/name/ok', true);
                        billinformation.setProperty('/code/ok', true);
                    })
                   
                }
            })

         
            
          
        },
       

        _onRecordMatched: function(oEvent) {

          this._viewOptions();

        },
        
        
        _viewOptions: function() {
            var mdstage = this.getView().getModel("billinformation");
            mdstage.setProperty("/save/", false);
            mdstage.setProperty("/cancel/", false);
            mdstage.setProperty("/modify/", true);
            mdstage.setProperty("/delete/", true);

            this._editRecordValues(false);
            this._editRecordRequired(false);
        },
         /**
         * Ajusta la vista para editar los datos de un registro
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onEdit: function(oEvent) {

            var mdstage = this.getView().getModel("billinformation");
            mdstage.setProperty("/save/", true);
            mdstage.setProperty("/cancel/", true);
            mdstage.setProperty("/modify/", false);
            mdstage.setProperty("/delete/", false);
            this._editRecordRequired(true);
            this._editRecordValues(true);
        },

        /**
         * Cancela la edición de un registro MDSTAGE
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onCancelEdit: function(oEvent) {
            /** @type {JSONModel} MDSTAGE  Referencia al modelo MDSTAGE */

            this.onView();
        },
        /**
         * Ajusta la vista para visualizar los datos de un registro
         */
        onView: function() {
            this._viewOptions();
        },
     
        onbillinformationSearch: function(oEvent){
            var aFilters = [],
            sQuery = oEvent.getSource().getValue(),
            binding = this.getView().byId("boatproductsTable").getBinding("items");

            if (sQuery && sQuery.length > 0) {
                /** @type {Object} filter1 Primer filtro de la búsqueda */
                var filter1 = new sap.ui.model.Filter("name", sap.ui.model.FilterOperator.Contains, sQuery);
                aFilters = new sap.ui.model.Filter([filter1]);
            }

            //se actualiza el binding de la lista
            binding.filter(aFilters);

        },
        onConfirmStatusDisable: function(oEvent){

            var oBundle = this.getView().getModel("i18n").getResourceBundle();
            var deleteRecord = oBundle.getText("bill.disableRecord");
            var confirmation = oBundle.getText("confirmation");
            var util = this.getView().getModel("util");
            var serviceUrl = util.getProperty('/serviceUrl');
            var that = this;
            var records = this.getView().getModel("billinformation").getProperty("/records")

            records.forEach(element => {
                element.status = false;
            });

            var dialog = new Dialog({
                title: confirmation,
                type: "Message",
                content: new sap.m.Text({
                    text: deleteRecord
                }),

                beginButton: new Button({
                    text: "Si",
                    press: function() {
                         util.setProperty("/busy/", true);
                        var billinformation = that.getView().getModel("billinformation");

                    $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    data: JSON.stringify({
                        "bill": records
                    }),
                    url: serviceUrl+"/bill/billdisable",
                    dataType: "json",
                    async: true,
                    success: function(data) {

                        util.setProperty("/busy/", false);
                        that.getRouter().navTo("billinformation", {}, true);
                        dialog.close();
                        dialog.destroy();

                    },
                    error: function(request, status, error) {
                        that.onToast('Error de comunicación');
                        console.log("Read failed");
                    }
                    });

                    }
                }),
                endButton: new Button({
                    text: 'No',
                    press: function() {
                        dialog.close();
                        dialog.destroy();
                    }
                })
            });

            dialog.open();

        },
        onConfirmStatusEnable: function(oEvent){

            var oBundle = this.getView().getModel("i18n").getResourceBundle();
            var deleteRecord = oBundle.getText("bill.enableRecord");
            var confirmation = oBundle.getText("confirmation");
            var util = this.getView().getModel("util");
            var serviceUrl = util.getProperty('/serviceUrl');
            var that = this;
            var records = this.getView().getModel("billinformation").getProperty("/records")

            records.forEach(element => {
                element.status = true;
            });

            var dialog = new Dialog({
                title: confirmation,
                type: "Message",
                content: new sap.m.Text({
                    text: deleteRecord
                }),

                beginButton: new Button({
                    text: "Si",
                    press: function() {
                         util.setProperty("/busy/", true);
                        var billinformation = that.getView().getModel("billinformation");

                    $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    data: JSON.stringify({
                        "bill": records
                    }),
                    url: serviceUrl+"/bill/billdisable",
                    dataType: "json",
                    async: true,
                    success: function(data) {

                        util.setProperty("/busy/", false);
                        that.getRouter().navTo("billinformation", {}, true);
                        dialog.close();
                        dialog.destroy();

                    },
                    error: function(request, status, error) {
                        that.onToast('Error de comunicación');
                        console.log("Read failed");
                    }
                    });

                    }
                }),
                endButton: new Button({
                    text: 'No',
                    press: function() {
                        dialog.close();
                        dialog.destroy();
                    }
                })
            });

            dialog.open();

        }



    });
});
