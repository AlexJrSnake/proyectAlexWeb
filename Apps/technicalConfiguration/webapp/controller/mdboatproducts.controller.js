sap.ui.define([
    "technicalConfiguration/controller/BaseController",
    "sap/ui/model/json/JSONModel",
    "sap/m/Dialog",
    "sap/m/Button"
], function(BaseController, JSONModel,Dialog,Button) {
    "use strict";

    return BaseController.extend("technicalConfiguration.controller.mdboatproducts", {

        onInit: function() {
            //ruta para la vista principal
            console.log("Controlador de mdboatproducts");
            this.getOwnerComponent().getRouter().getRoute("mdboatproducts").attachPatternMatched(this._onRouteMatched, this);
            //ruta para la vista de detalles de un registro
            this.getOwnerComponent().getRouter().getRoute("mdboatproducts_Record").attachPatternMatched(this._onRecordMatched, this);
            //ruta para la vista de creación de un registro
            this.getOwnerComponent().getRouter().getRoute("mdboatproducts_Create").attachPatternMatched(this._onCreateMatched, this);
        },

        /**
         * Coincidencia de ruta para acceder a la vista principal
         * @param  {Event} oEvent Evento que llamó esta función
         */
        _onRouteMatched: function(oEvent) {
            /**
             * @type {Controller} that         Referencia a este controlador
             * @type {JSONModel} util         Referencia al modelo "util"
             * @type {JSONModel} OS            Referencia al modelo "OS"
             * @type {JSONModel} MDSTAGE        Referencia al modelo "MdSTAGE"
             */

            var that = this,
                util = this.getView().getModel("util"),
                mdboatproducts = this.getView().getModel("mdboatproducts");

            //dependiendo del dispositivo, establece la propiedad "phone"
            this.getView().getModel("util").setProperty("/phone/",
            this.getOwnerComponent().getContentDensityClass() === "sapUiSizeCozy");

            //establece MDSTAGE como la entidad seleccionada
            util.setProperty("/selectedEntity/", "mdboatproducts");


            //obtiene los registros de mdstage
            this.onRead(that, util, mdboatproducts);
        },
         /**
         * Obtiene todos los registros de MDSTAGE
         * @param  {Controller} that         Referencia al controlador que llama esta función
         * @param  {JSONModel} util         Referencia al modelo "util"
         * @param  {JSONModel} MDSTAGE Referencia al modelo "MDSTAGE"
         */
        onRead: function(that, util, mdboatproducts) {
            /** @type {Object} settings opciones de la llamada a la función ajax */
            var service = util.getProperty('/serviceUrl');
            var settings = {
                url: service+"/boatproducts",
                method: "GET",
                success: function(res) {
                    console.log(res.data);
                    util.setProperty("/busy/", false);
                    mdboatproducts.setProperty("/records/", res.data);
                    console.log(mdboatproducts);
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
            mdboatproducts.setProperty("/records/", []);
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
            var mdboatproducts = this.getView().getModel("mdboatproducts");

            mdboatproducts.setProperty("/boatproducts_id/value", "");

            mdboatproducts.setProperty("/code/editable", true);
            mdboatproducts.setProperty("/code/value", "");
            mdboatproducts.setProperty("/code/state", "None");
            mdboatproducts.setProperty("/code/stateText", "");
            mdboatproducts.setProperty("/code/excepcion", "");
            mdboatproducts.setProperty('/code/ok', false);

            mdboatproducts.setProperty("/name/editable", true);
            mdboatproducts.setProperty("/name/value", "");
            mdboatproducts.setProperty("/name/state", "None");
            mdboatproducts.setProperty("/name/stateText", "");
            mdboatproducts.setProperty("/name/excepcion", "");
            mdboatproducts.setProperty('/name/ok', false);

            mdboatproducts.setProperty("/description/editable", true);
            mdboatproducts.setProperty("/description/value", "");
            mdboatproducts.setProperty("/description/state", "None");
            mdboatproducts.setProperty("/description/stateText", "");
            mdboatproducts.setProperty("/description/excepcion", "");
            mdboatproducts.setProperty('/description/ok', false);


            mdboatproducts.setProperty("/cost/editable", true);
            mdboatproducts.setProperty("/cost/value", "");
            mdboatproducts.setProperty("/cost/state", "None");
            mdboatproducts.setProperty("/cost/stateText", "");
            mdboatproducts.setProperty("/cost/excepcion", "");
            mdboatproducts.setProperty('/cost/ok', false);

            mdboatproducts.setProperty("/unit_price/editable", true);
            mdboatproducts.setProperty("/unit_price/value", "");
            mdboatproducts.setProperty("/unit_price/state", "None");
            mdboatproducts.setProperty("/unit_price/stateText", "");
            mdboatproducts.setProperty("/unit_price/excepcion", "");
            mdboatproducts.setProperty('/unit_price/ok', false);

        },
        /**
         * Habilita/deshabilita la edición de los datos de un registro MDSTAGE
         * @param  {Boolean} edit "true" si habilita la edición, "false" si la deshabilita
         */
        _editRecordValues: function(edit) {

            var mdboatproducts = this.getView().getModel("mdboatproducts");
            mdboatproducts.setProperty("/code/editable", edit);
            mdboatproducts.setProperty("/name/editable", edit);
            mdboatproducts.setProperty("/description/editable", edit);
            mdboatproducts.setProperty("/cost/editable", edit);
            mdboatproducts.setProperty("/unit_price/editable", edit);

            mdboatproducts.setProperty("/type/editable", edit);
          },
        /**
         * Se define un campo como obligatorio o no, de un registro MDSTAGE
         * @param  {Boolean} edit "true" si es campo obligatorio, "false" si no es obligatorio
         */
        _editRecordRequired: function(edit) {
            var mdboatproducts = this.getView().getModel("mdboatproducts");
            mdboatproducts.setProperty("/code/required", edit);
            mdboatproducts.setProperty("/name/required", edit);
            mdboatproducts.setProperty("/description/required", edit);
            mdboatproducts.setProperty("/cost/required", edit);
            mdboatproducts.setProperty("/unit_price/required", edit);
        },
        /**
         * Navega a la vista para crear un nuevo registro
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onNewRecord: function(oEvent) {
            console.log('Llegue');
            this.getRouter().navTo("mdboatproducts_Create", {}, false /*create history*/ );
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
         * Solicita al servicio correspondiente crear un registro MDSTAGE
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onCreate: function(oEvent) {
            //Si el registro que se desea crear es válido
            if (this._validRecord()) {
              console.log('Voy a insertar');
                var that = this;
                var util = this.getView().getModel("util");
                var serviceUrl = util.getProperty('/serviceUrl');
                var mdboatproducts = this.getView().getModel("mdboatproducts");

                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    data: JSON.stringify({
                        "code": mdboatproducts.getProperty("/code/value"),
                        "name": mdboatproducts.getProperty("/name/value"),
                        "description": mdboatproducts.getProperty("/description/value"),
                        "cost": mdboatproducts.getProperty("/cost/value"),
                        "unit_price": mdboatproducts.getProperty("/unit_price/value")
                    }),
                    url: serviceUrl+"/boatproducts",
                    dataType: "json",
                    async: true,
                    success: function(data) {
                        util.setProperty("/busy/", false);
                        that._resetRecordValues();
                        that.onToast(that.getI18n().getText("OS.recordCreated"));
                        that.getRouter().navTo("mdboatproducts", {}, true /*no history*/ );

                    },
                    error: function(request) {
                        //that.onToast('Error: ' + error.responseText);
                        var msg = 'Error de comunicación';
                          if(request.responseJSON.code==23505)
                            msg = 'El codigo '+mdboatproducts.getProperty("/code/value")+' ya se encuentra registrado en sistema';

                          that.onToast('Error: '+msg);
                          console.log("Read failed");
                    }
                });

            }else{
                console.log(" No _validRecord ");
            }
        },
        /**
         * Valida la correctitud de los datos existentes en el formulario del registro
         * @return {Boolean} Devuelve "true" si los datos son correctos, y "false" si son incorrectos
         */
        _validRecord: function() {
            /**
             * @type {JSONModel} mdboatproducts Referencia al modelo "mdboatproducts"
             * @type {Boolean} flag "true" si los datos son válidos, "false" si no lo son
             */
            var mdstage = this.getView().getModel("mdboatproducts"),
                flag = true,
                that = this,
                Without_SoL = /^\d+$/,
                Without_Num = /^[a-zA-Z\s]*$/;

            console.log(mdstage); 
            console.log(mdstage.getProperty("/code/value"));    
            console.log(mdstage.getProperty("/name/value"));

            if (mdstage.getProperty("/code/value") === "") {
                flag = false;
                mdstage.setProperty("/code/state", "Error");
                mdstage.setProperty("/code/stateText", this.getI18n().getText("enter.FIELD"));
            } else {
                mdstage.setProperty("/order_/state", "None");
                mdstage.setProperty("/order_/stateText", "");
            }

            if (mdstage.getProperty("/name/value") === "") {
                flag = false;
                mdstage.setProperty("/name/state", "Error");
                mdstage.setProperty("/name/stateText", this.getI18n().getText("enter.FIELD"));
            }

            if (mdstage.getProperty("/cost/value") === "") {
                flag = false;
                mdstage.setProperty("/cost/state", "Error");
                mdstage.setProperty("/cost/stateText", this.getI18n().getText("enter.FIELD"));
            }

          return flag;
        },
        /**
         * Visualiza los detalles de un registro MDSTAGE
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onViewBoatproductRecord: function(oEvent) {
            this._resetRecordValues();
            var mdboatproducts = this.getView().getModel("mdboatproducts");
            mdboatproducts.setProperty("/save/", false);
            mdboatproducts.setProperty("/cancel/", false);
            mdboatproducts.setProperty("/selectedRecordPath/", oEvent.getSource().getBindingContext("mdboatproducts"));
            mdboatproducts.setProperty("/boatproducts_id/value", oEvent.getSource().getBindingContext("mdboatproducts").getObject().mdboatproducts_id);
           
            mdboatproducts.setProperty("/code/value", oEvent.getSource().getBindingContext("mdboatproducts").getObject().code);
            mdboatproducts.setProperty("/code/excepcion", oEvent.getSource().getBindingContext("mdboatproducts").getObject().code);
           
            mdboatproducts.setProperty("/name/value", oEvent.getSource().getBindingContext("mdboatproducts").getObject().name);
            mdboatproducts.setProperty("/name/excepcion", oEvent.getSource().getBindingContext("mdboatproducts").getObject().name);

            mdboatproducts.setProperty("/description/value", oEvent.getSource().getBindingContext("mdboatproducts").getObject().description);
            mdboatproducts.setProperty("/description/excepcion", oEvent.getSource().getBindingContext("mdboatproducts").getObject().description);

            mdboatproducts.setProperty("/cost/value", oEvent.getSource().getBindingContext("mdboatproducts").getObject().cost);
            mdboatproducts.setProperty("/cost/excepcion", oEvent.getSource().getBindingContext("mdboatproducts").getObject().cost);

            mdboatproducts.setProperty("/unit_price/value", oEvent.getSource().getBindingContext("mdboatproducts").getObject().unit_price);
            mdboatproducts.setProperty("/unit_price/excepcion", oEvent.getSource().getBindingContext("mdboatproducts").getObject().unit_price);
         
            mdboatproducts.setProperty("/type/value", oEvent.getSource().getBindingContext("mdboatproducts").getObject().type);

            this.getRouter().navTo("mdboatproducts_Record", {}, false /*create history*/ );
            
            mdboatproducts.setProperty('/name/ok', true);
            mdboatproducts.setProperty('/code/ok', true);
        },
        /**
         * Coincidencia de ruta para acceder a los detalles de un registro
         * @param  {Event} oEvent Evento que llamó esta función
         */
        _onRecordMatched: function(oEvent) {

          this._viewOptions();

        },
        /**
         * Cambia las opciones de visualización disponibles en la vista de detalles de un registro
         */
        _viewOptions: function() {
            var mdstage = this.getView().getModel("mdboatproducts");
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

            var mdstage = this.getView().getModel("mdboatproducts");
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
        /**
         * Solicita al servicio correspondiente actualizar un registro MDSTAGE
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onUpdate: function(oEvent) {
            /**
             * Si el registro que se quiere actualizar es válido y hubo algún cambio
             * con respecto a sus datos originales
             */
            if (this._validRecord() && this._recordChanged()) {
                /**
                 * @type {JSONModel} MDSTAGE       Referencia al modelo "MDSTAGE"
                 * @type {JSONModel} util         Referencia al modelo "util"
                 * @type {Controller} that         Referencia a este controlador
                 */
                var mdboatproducts = this.getView().getModel("mdboatproducts");
                var util = this.getView().getModel("util");
                var serviceUrl = util.getProperty('/serviceUrl');
                var that = this;

                console.log("-------------------------------------------------");
                console.log(mdboatproducts.getProperty("/boatproducts_id/value"));
                console.log("-------------------------------------------------");

                $.ajax({
                    type: "PUT",
                    contentType: "application/json",
                    data: JSON.stringify({
                        "boatproducts_id": mdboatproducts.getProperty("/boatproducts_id/value"),
                        "code": mdboatproducts.getProperty("/code/value"),
                        "name": mdboatproducts.getProperty("/name/value"),
                        "description": mdboatproducts.getProperty("/description/value"),
                        "cost": mdboatproducts.getProperty("/cost/value"),
                        "unit_price": mdboatproducts.getProperty("/unit_price/value")
                    }),
                    url: serviceUrl+"/boatproducts/",
                    dataType: "json",
                    async: true,
                    success: function(data) {

                        util.setProperty("/busy/", false);
                        that._resetRecordValues();
                        that._viewOptions();
                        that.onToast(that.getI18n().getText("OS.recordUpdated"));
                        that.getRouter().navTo("mdboatproducts", {}, true /*no history*/ );

                    },
                    error: function(request, status, error) {
                      var msg = 'Error de comunicación';
                        if(request.responseJSON.code==23505)
                          msg = 'El codigo '+mdboatproducts.getProperty("/code/value")+' ya se encuentra registrado en sistema';

                        that.onToast('Error: '+msg);
                        console.log("Read failed");
                    }
                });
            }else{
                console.log(" No _validRecord Update ");
            }
        },
        /**
         * Verifica si el registro seleccionado tiene algún cambio con respecto a sus valores originales
         * @return {Boolean} Devuelve "true" el registro cambió, y "false" si no cambió
         */
        _recordChanged: function() {
            /**
             * @type {JSONModel} mdboatproducts         Referencia al modelo "MDSTAGE"
             * @type {Boolean} flag            "true" si el registro cambió, "false" si no cambió
             */
            var mdboatproducts = this.getView().getModel("mdboatproducts"),
                flag = false;

            console.log(mdboatproducts);    

            if (mdboatproducts.getProperty("/code/value") !== mdboatproducts.getProperty(mdboatproducts.getProperty("/selectedRecordPath/") + "/code")) {
                flag = true;
            }

            if (mdboatproducts.getProperty("/name/value") !== mdboatproducts.getProperty(mdboatproducts.getProperty("/selectedRecordPath/") + "/name")) {
                flag = true;
            }

            if (mdboatproducts.getProperty("/description/value") !== mdboatproducts.getProperty(mdboatproducts.getProperty("/selectedRecordPath/") + "/type")) {
                flag = true;
            }

            if (mdboatproducts.getProperty("/cost/value") !== mdboatproducts.getProperty(mdboatproducts.getProperty("/selectedRecordPath/") + "/type")) {
                flag = true;
            }

            if (mdboatproducts.getProperty("/unit_price/value") !== mdboatproducts.getProperty(mdboatproducts.getProperty("/selectedRecordPath/") + "/type")) {
                flag = true;
            }


            if(!flag) this.onToast('No se detectaron cambios');

            return flag;
        },
        onbroilerProductSearch: function(oEvent){
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
        onConfirmDelete: function(oEvent){

            var oBundle = this.getView().getModel("i18n").getResourceBundle();
            var deleteRecord = oBundle.getText("deleteRecord");
            var confirmation = oBundle.getText("confirmation");
            var util = this.getView().getModel("util");
            var serviceUrl = util.getProperty('/serviceUrl');
            var that = this;
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
                        var mdboatproducts = that.getView().getModel("mdboatproducts");

                    $.ajax({
                    type: "DELETE",
                    contentType: "application/json",
                    data: JSON.stringify({
                        "boatproducts_id": mdboatproducts.getProperty("/boatproducts_id/value")
                    }),
                    url: serviceUrl+"/boatproducts/",
                    dataType: "json",
                    async: true,
                    success: function(data) {

                        util.setProperty("/busy/", false);
                        that.getRouter().navTo("mdboatproducts", {}, true);
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

        changeName: function(oEvent){
            let input= oEvent.getSource();
            input.setValue(input.getValue().trim())
            let mdboatproducts= this.getModel("mdboatproducts")
            let excepcion= mdboatproducts.getProperty('/name/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/name", "changeName");
        },

        changeCode: function(oEvent){
            let input= oEvent.getSource();
            input.setValue(input.getValue().trim())
            let mdboatproducts= this.getModel("mdboatproducts")
            let excepcion= mdboatproducts.getProperty('/code/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/code", "changeCode");
        },

        changeDescription: function(oEvent){
            let input= oEvent.getSource();
            input.setValue(input.getValue().trim())
            let mdboatproducts= this.getModel("mdboatproducts")
            let excepcion= mdboatproducts.getProperty('/description/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/description", "changeDescription");
        },

        changeCost: function(oEvent){
            let input= oEvent.getSource();
            input.setValue(input.getValue().trim())
            let mdboatproducts= this.getModel("mdboatproducts")
            let excepcion= mdboatproducts.getProperty('/cost/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/cost", "changeCost");
        },

        changeUnit_price: function(oEvent){
            let input= oEvent.getSource();
            input.setValue(input.getValue().trim())
            let mdboatproducts= this.getModel("mdboatproducts")
            let excepcion= mdboatproducts.getProperty('/unit_price/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/unit_price", "changeUnit_price");
        },
     
        checkChange: function(name, excepcion,field, funct){

            let util = this.getModel("util");
            let mdboatproducts= this.getModel('mdboatproducts');
            let serverName  = "/boatproducts/"+funct;
            // console.log(serverName);
            console.log('check: ', name, excepcion)
            if (name=="" || name===null){
                mdboatproducts.setProperty(field+'/state', "None");
                mdboatproducts.setProperty(field+'/stateText', "");
                mdboatproducts.setProperty(field+'/ok', false);
            }
            else{
                fetch(serverName, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({
                        name: name,
                        diff: excepcion
                    })
                })
                .then(function(response) {
                    if (response.status !== 200) {
                        console.log('Looks like there was a problem. Status Code: ' +
                        response.status);
                        return;
                    }
                    response.json().then(function(res) {
                        console.log(res);
                        if(res.data.length>0){
                            mdboatproducts.setProperty(field+'/state', "Error");
                            mdboatproducts.setProperty(field+'/stateText', "código o nombre repetido");
                            mdboatproducts.setProperty(field+'/ok', false);
                        }
                        else{
                            mdboatproducts.setProperty(field+'/state', "Success");
                            mdboatproducts.setProperty(field+'/stateText', "");
                            mdboatproducts.setProperty(field+'/ok', true);
                        }
                    });
                })
                .catch(function(err) {
                    console.log('Fetch Error: ', err);
                });
            }
            
        }

    });
});
