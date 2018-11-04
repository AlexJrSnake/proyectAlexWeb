sap.ui.define([
    "technicalConfiguration/controller/BaseController",
    "sap/ui/model/json/JSONModel",
    "sap/m/Dialog",
    "sap/m/Button"
], function(BaseController, JSONModel,Dialog,Button) {
    "use strict";

    return BaseController.extend("technicalConfiguration.controller.mdclients", {

        onInit: function() {
            //ruta para la vista principal
            console.log("Controlador de mdclients");
            this.getOwnerComponent().getRouter().getRoute("mdclients").attachPatternMatched(this._onRouteMatched, this);
            //ruta para la vista de detalles de un registro
            this.getOwnerComponent().getRouter().getRoute("mdclients_Record").attachPatternMatched(this._onRecordMatched, this);
            //ruta para la vista de creación de un registro
            this.getOwnerComponent().getRouter().getRoute("mdclients_Create").attachPatternMatched(this._onCreateMatched, this);
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
                mdclients = this.getView().getModel("mdclients");

            //dependiendo del dispositivo, establece la propiedad "phone"
            this.getView().getModel("util").setProperty("/phone/",
            this.getOwnerComponent().getContentDensityClass() === "sapUiSizeCozy");

            //establece MDSTAGE como la entidad seleccionada
            util.setProperty("/selectedEntity/", "mdclients");


            //obtiene los registros de mdstage
            this.onRead(that, util, mdclients);
        },
         /**
         * Obtiene todos los registros de MDSTAGE
         * @param  {Controller} that         Referencia al controlador que llama esta función
         * @param  {JSONModel} util         Referencia al modelo "util"
         * @param  {JSONModel} MDSTAGE Referencia al modelo "MDSTAGE"
         */
        onRead: function(that, util, mdclients) {
            /** @type {Object} settings opciones de la llamada a la función ajax */
            var service = util.getProperty('/serviceUrl');
            console.log(mdclients);
            var settings = {
                url: service+"/clients",
                method: "GET",
                success: function(res) {
                    console.log(res.data);
                    util.setProperty("/busy/", false);
                    mdclients.setProperty("/records/", res.data);
                    console.log(mdclients);
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
            mdclients.setProperty("/records/", []);
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
            var mdclients = this.getView().getModel("mdclients");

            mdclients.setProperty("/client_id/value", "");

            mdclients.setProperty("/cd/editable", true);
            mdclients.setProperty("/cd/value", "");
            mdclients.setProperty("/cd/state", "None");
            mdclients.setProperty("/cd/stateText", "");
            mdclients.setProperty("/cd/excepcion", "");
            mdclients.setProperty('/cd/ok', false);

            mdclients.setProperty("/name/editable", true);
            mdclients.setProperty("/name/value", "");
            mdclients.setProperty("/name/state", "None");
            mdclients.setProperty("/name/stateText", "");
            mdclients.setProperty("/name/excepcion", "");
            mdclients.setProperty('/name/ok', false);

            mdclients.setProperty("/address/editable", true);
            mdclients.setProperty("/address/value", "");
            mdclients.setProperty("/address/state", "None");
            mdclients.setProperty("/address/stateText", "");
            mdclients.setProperty("/address/excepcion", "");
            mdclients.setProperty('/address/ok', false);


            mdclients.setProperty("/phone/editable", true);
            mdclients.setProperty("/phone/value", "");
            mdclients.setProperty("/phone/state", "None");
            mdclients.setProperty("/phone/stateText", "");
            mdclients.setProperty("/phone/excepcion", "");
            mdclients.setProperty('/phone/ok', false);

            mdclients.setProperty("/email/editable", true);
            mdclients.setProperty("/email/value", "");
            mdclients.setProperty("/email/state", "None");
            mdclients.setProperty("/email/stateText", "");
            mdclients.setProperty("/email/excepcion", "");
            mdclients.setProperty('/email/ok', false);

        },
        /**
         * Habilita/deshabilita la edición de los datos de un registro MDSTAGE
         * @param  {Boolean} edit "true" si habilita la edición, "false" si la deshabilita
         */
        _editRecordValues: function(edit) {

            var mdclients = this.getView().getModel("mdclients");
            mdclients.setProperty("/cd/editable", edit);
            mdclients.setProperty("/name/editable", edit);
            mdclients.setProperty("/address/editable", edit);
            mdclients.setProperty("/phone/editable", edit);
            mdclients.setProperty("/email/editable", edit);

            mdclients.setProperty("/type/editable", edit);
          },
        /**
         * Se define un campo como obligatorio o no, de un registro MDSTAGE
         * @param  {Boolean} edit "true" si es campo obligatorio, "false" si no es obligatorio
         */
        _editRecordRequired: function(edit) {
            var mdclients = this.getView().getModel("mdclients");
            mdclients.setProperty("/cd/required", edit);
            mdclients.setProperty("/name/required", edit);
            mdclients.setProperty("/address/required", edit);
            mdclients.setProperty("/phone/required", edit);
            mdclients.setProperty("/email/required", edit);
        },
        /**
         * Navega a la vista para crear un nuevo registro
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onNewRecord: function(oEvent) {
            console.log('Llegue');
            this.getRouter().navTo("mdclients_Create", {}, false /*create history*/ );
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
                var mdclients = this.getView().getModel("mdclients");

                $.ajax({
                    type: "POST",
                    contentType: "application/json",
                    data: JSON.stringify({
                        "cd": mdclients.getProperty("/cd/value"),
                        "name": mdclients.getProperty("/name/value"),
                        "address": mdclients.getProperty("/address/value"),
                        "phone": mdclients.getProperty("/phone/value"),
                        "email": mdclients.getProperty("/email/value")
                    }),
                    url: serviceUrl+"/clients",
                    dataType: "json",
                    async: true,
                    success: function(data) {
                        util.setProperty("/busy/", false);
                        that._resetRecordValues();
                        that.onToast(that.getI18n().getText("OS.recordCreated"));
                        that.getRouter().navTo("mdclients", {}, true /*no history*/ );

                    },
                    error: function(request) {
                        //that.onToast('Error: ' + error.responseText);
                        var msg = 'Error de comunicación';
                          if(request.responseJSON.cd==23505)
                            msg = 'El codigo '+mdclients.getProperty("/cd/value")+' ya se encuentra registrado en sistema';

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
             * @type {JSONModel} mdclients Referencia al modelo "mdclients"
             * @type {Boolean} flag "true" si los datos son válidos, "false" si no lo son
             */
            var mdstage = this.getView().getModel("mdclients"),
                flag = true,
                that = this,
                Without_SoL = /^\d+$/,
                Without_Num = /^[a-zA-Z\s]*$/;

            console.log(mdstage); 
            console.log(mdstage.getProperty("/cd/value"));    
            console.log(mdstage.getProperty("/name/value"));

            if (mdstage.getProperty("/cd/value") === "") {
                flag = false;
                mdstage.setProperty("/cd/state", "Error");
                mdstage.setProperty("/cd/stateText", this.getI18n().getText("enter.FIELD"));
            } else {
                mdstage.setProperty("/order_/state", "None");
                mdstage.setProperty("/order_/stateText", "");
            }

            if (mdstage.getProperty("/name/value") === "") {
                flag = false;
                mdstage.setProperty("/name/state", "Error");
                mdstage.setProperty("/name/stateText", this.getI18n().getText("enter.FIELD"));
            }


          return flag;
        },
        /**
         * Visualiza los detalles de un registro MDSTAGE
         * @param  {Event} oEvent Evento que llamó esta función
         */
        onViewBoatproductRecord: function(oEvent) {
            this._resetRecordValues();
            console.log( oEvent.getSource().getBindingContext("mdclients").getObject())
            var mdclients = this.getView().getModel("mdclients");
            mdclients.setProperty("/save/", false);
            mdclients.setProperty("/cancel/", false);
            mdclients.setProperty("/selectedRecordPath/", oEvent.getSource().getBindingContext("mdclients"));
            mdclients.setProperty("/client_id/value", oEvent.getSource().getBindingContext("mdclients").getObject().mdclient_id);
           
            mdclients.setProperty("/cd/value", oEvent.getSource().getBindingContext("mdclients").getObject().cd);
            mdclients.setProperty("/cd/excepcion", oEvent.getSource().getBindingContext("mdclients").getObject().cd);
           
            mdclients.setProperty("/name/value", oEvent.getSource().getBindingContext("mdclients").getObject().name);
            mdclients.setProperty("/name/excepcion", oEvent.getSource().getBindingContext("mdclients").getObject().name);

            mdclients.setProperty("/address/value", oEvent.getSource().getBindingContext("mdclients").getObject().address);
            mdclients.setProperty("/address/excepcion", oEvent.getSource().getBindingContext("mdclients").getObject().address);

            mdclients.setProperty("/phone/value", oEvent.getSource().getBindingContext("mdclients").getObject().phone);
            mdclients.setProperty("/phone/excepcion", oEvent.getSource().getBindingContext("mdclients").getObject().phone);

            mdclients.setProperty("/email/value", oEvent.getSource().getBindingContext("mdclients").getObject().email);
            mdclients.setProperty("/email/excepcion", oEvent.getSource().getBindingContext("mdclients").getObject().email);
         
            mdclients.setProperty("/type/value", oEvent.getSource().getBindingContext("mdclients").getObject().type);

            this.getRouter().navTo("mdclients_Record", {}, false /*create history*/ );
            
            mdclients.setProperty('/name/ok', true);
            mdclients.setProperty('/cd/ok', true);
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
            var mdstage = this.getView().getModel("mdclients");
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

            var mdstage = this.getView().getModel("mdclients");
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
                var mdclients = this.getView().getModel("mdclients");
                var util = this.getView().getModel("util");
                var serviceUrl = util.getProperty('/serviceUrl');
                var that = this;

                console.log("-------------------------------------------------");
                console.log(mdclients.getProperty("/client_id/value"));
                console.log("-------------------------------------------------");

                $.ajax({
                    type: "PUT",
                    contentType: "application/json",
                    data: JSON.stringify({
                        "mdclient_id": mdclients.getProperty("/client_id/value"),
                        "cd": mdclients.getProperty("/cd/value"),
                        "name": mdclients.getProperty("/name/value"),
                        "address": mdclients.getProperty("/address/value"),
                        "phone": mdclients.getProperty("/phone/value"),
                        "email": mdclients.getProperty("/email/value")
                    }),
                    url: serviceUrl+"/clients/",
                    dataType: "json",
                    async: true,
                    success: function(data) {

                        util.setProperty("/busy/", false);
                        that._resetRecordValues();
                        that._viewOptions();
                        that.onToast(that.getI18n().getText("OS.recordUpdated"));
                        that.getRouter().navTo("mdclients", {}, true /*no history*/ );

                    },
                    error: function(request, status, error) {
                      var msg = 'Error de comunicación';
                        if(request.responseJSON.cd==23505)
                          msg = 'El codigo '+mdclients.getProperty("/cd/value")+' ya se encuentra registrado en sistema';

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
             * @type {JSONModel} mdclients         Referencia al modelo "MDSTAGE"
             * @type {Boolean} flag            "true" si el registro cambió, "false" si no cambió
             */
            var mdclients = this.getView().getModel("mdclients"),
                flag = false;

            console.log(mdclients);    

            if (mdclients.getProperty("/cd/value") !== mdclients.getProperty(mdclients.getProperty("/selectedRecordPath/") + "/cd")) {
                flag = true;
            }

            if (mdclients.getProperty("/name/value") !== mdclients.getProperty(mdclients.getProperty("/selectedRecordPath/") + "/name")) {
                flag = true;
            }

            if (mdclients.getProperty("/address/value") !== mdclients.getProperty(mdclients.getProperty("/selectedRecordPath/") + "/type")) {
                flag = true;
            }

            if (mdclients.getProperty("/phone/value") !== mdclients.getProperty(mdclients.getProperty("/selectedRecordPath/") + "/type")) {
                flag = true;
            }

            if (mdclients.getProperty("/email/value") !== mdclients.getProperty(mdclients.getProperty("/selectedRecordPath/") + "/type")) {
                flag = true;
            }


            if(!flag) this.onToast('No se detectaron cambios');

            return flag;
        },
        onbroilerProductSearch: function(oEvent){
            var aFilters = [],
            sQuery = oEvent.getSource().getValue(),
            binding = this.getView().byId("clientsTable").getBinding("items");

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
                        var mdclients = that.getView().getModel("mdclients");

                    $.ajax({
                    type: "DELETE",
                    contentType: "application/json",
                    data: JSON.stringify({
                        "mdclient_id": mdclients.getProperty("/client_id/value")
                    }),
                    url: serviceUrl+"/clients/",
                    dataType: "json",
                    async: true,
                    success: function(data) {

                        util.setProperty("/busy/", false);
                        that.getRouter().navTo("mdclients", {}, true);
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
            let mdclients= this.getModel("mdclients")
            let excepcion= mdclients.getProperty('/name/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/name", "changeName");
        },

        changecd: function(oEvent){
            let input= oEvent.getSource();
            input.setValue(input.getValue().trim())
            let mdclients= this.getModel("mdclients")
            let excepcion= mdclients.getProperty('/cd/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/cd", "changecd");
        },

        changeaddress: function(oEvent){
            let input= oEvent.getSource();
            input.setValue(input.getValue().trim())
            let mdclients= this.getModel("mdclients")
            let excepcion= mdclients.getProperty('/address/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/address", "changeaddress");
        },

        changephone: function(oEvent){
            let input= oEvent.getSource();
            input.setValue(input.getValue().trim())
            let mdclients= this.getModel("mdclients")
            let excepcion= mdclients.getProperty('/phone/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/phone", "changephone");
        },

        changeemail: function(oEvent){
            let input= oEvent.getSource();
            input.setValue(input.getValue().trim())
            let mdclients= this.getModel("mdclients")
            let excepcion= mdclients.getProperty('/email/excepcion');

            this.checkChange(input.getValue().toString(), excepcion.toString(), "/email", "changeemail");
        },
     
        checkChange: function(name, excepcion,field, funct){

            let util = this.getModel("util");
            let mdclients= this.getModel('mdclients');
            let serverName  = "/clients/"+funct;
            // console.log(serverName);
            console.log('check: ', name, excepcion)
            if (name=="" || name===null){
                mdclients.setProperty(field+'/state', "None");
                mdclients.setProperty(field+'/stateText', "");
                mdclients.setProperty(field+'/ok', false);
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
                        console.log('Looks like there was a problem. Status cd: ' +
                        response.status);
                        return;
                    }
                    response.json().then(function(res) {
                        console.log(res);
                        if(res.data.length>0){
                            mdclients.setProperty(field+'/state', "Error");
                            mdclients.setProperty(field+'/stateText', "código o nombre repetido");
                            mdclients.setProperty(field+'/ok', false);
                        }
                        else{
                            mdclients.setProperty(field+'/state', "Success");
                            mdclients.setProperty(field+'/stateText', "");
                            mdclients.setProperty(field+'/ok', true);
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
