sap.ui.define([
  'sap/ui/core/mvc/Controller',
  'jquery.sap.global',
  'sap/m/MessageToast',
  'sap/ui/model/json/JSONModel',
  'sap/ui/model/odata/v2/ODataModel',
  'sap/ui/model/odata/OperationMode',
  'testtest/controller/BaseController',
  'sap/m/IconTabFilter',
  'sap/m/Text'
], function (Controller, jQuery, MessageToast, JSONModel, ODataModel, OperationMode, BaseController, IconTabFilter, Text) {
  "use strict";

  return BaseController.extend("testtest.controller.Wharehouse", {

    onInit: function () {
      this.getRouter().getRoute("main").attachPatternMatched(this._onRouteMatched, this);
      const servername = "/userControl/signout";
      fetch(servername, {
        method: 'GET',
        withCredentials: true,
        headers: {
          'Content-Type': 'application/json'
        },
        credentials: 'same-origin'
      })
      localStorage.clear();
    },

    _onRouteMatched: function (oEvent) {

    },

    onPressButton: function () {
      var username = this.getView().byId('usuario').getValue(); // Obtengo Dato de la casilla usuario de la vista
      username = username.toLowerCase(); //Paso a Miniscula
      var password = this.getView().byId('pass').getValue(); //Obtenemos Contraseña
      var util = this.getModel("util");
      const servername = "/userControl/inicioPassport";

      fetch(servername, {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          credentials: 'same-origin',
          withCredentials: true,
          body: JSON.stringify({
            username: username,
            password: password
          })
        })
        .then(
          function (response) {
            if (response.status == 301) {
              response.json().then(function (res) {
                console.log(res);
                console.log();
                if (res.user.active == true) {
                  window.location.href = "/Apps/launchpad/webapp";
                } else {
                  MessageToast.show("Usuario inactivo, por favor comuniquese con un administrador", {
                    duration: 2000
                  });
                }

              })
            } else {
              if (response.status == 309) {
                window.location.href = "/Apps/userControl/webapp";
                MessageToast.show("Sesion No Iniciada", {
                  duration: 2000
                });
              } else {
                if (response.status == 311) {
                  MessageToast.show("Usuario o contraseña no valido", {
                    duration: 2000
                  });
                }
              }
            }
          });
      // var username = this.getView().byId("usuario").getValue()
      // username=username.toLowerCase()
      // var pass = this.getView().byId("pass").getValue()
      // var dummy = this.getView().getModel("util");
      // var users
      // let logg = false
      // const serverName = "/userControl";

      // fetch(serverName, {
      //   method: 'POST',
      //   headers: {
      //     'Content-Type': 'application/json'
      //   },
      //   body: JSON.stringify({
      //     username: username
      //   })
      // })
      // .then(
      //   function (response) {
      //     if (response.status !== 200) {
      //       console.log('Looks like there was a problem. Status Code: ' +
      //         response.status);
      //       return;
      //     }
      //     response.json().then(function (res) {
      //       console.log(res);
      //       users = res.data
      //       if (users.length > 0) {
      //         if (users[0]["active"] == true) {
      //           const serverNam = "/userControl/login";
      //           fetch(serverNam, {
      //               method: 'POST',
      //               headers: {
      //                 'Content-Type': 'application/json'
      //               },
      //               body: JSON.stringify({
      //                 user_id: users[0]["user_id"],
      //                 password: pass
      //               })
      //             })
      //             .then(
      //               function (response) {
      //                 console.log(response)
      //                 if (response.status !== 200 && response.status !== 403) {
      //                   console.log('Looks like there was a problem. Status Code: ' +
      //                     response.status);
      //                   return;
      //                 }
      //                 response.json().then(function (res) {
      //                   if (res) {
      //                     localStorage.setItem('usuario', users[0]["username"])
      //                     localStorage.setItem('user_id', users[0]["user_id"])
      //                     localStorage.setItem('type_user', users[0]["type_user"])
      //                     localStorage.setItem('nombre', users[0]["name"])
      //                     localStorage.setItem('apellido', users[0]["lastname"])
      //                     sessionStorage.setItem('logged', "loggeado")
      //                     const serverName = "/user_appControl";
      //                       fetch(serverName, {
      //                           method: 'POST',
      //                           headers: {
      //                             'Content-Type': 'application/json'
      //                           },
      //                           body: JSON.stringify({
      //                             user_id: users[0]["user_id"]
      //                           })
      //                         })
      //                         .then(
      //                           function (response) {
      //                             if (response.status !== 200) {
      //                               console.log('Looks like there was a problem. Status Code: ' +
      //                                 response.status);
      //                               return;
      //                             }
      //                             response.json().then(function (res) {
      //                               console.log(res);
      //                               var apps = res.data
      //                               for (var i = 0; i < apps.length; i++) {
      //                                 localStorage.setItem(apps[i]["application_name"], apps[i]["application_name"])
      //                                 var tile = "tile" + apps[i]["tile_number"]
      //                                 localStorage.setItem(tile, tile)
      //                               }
      //                               window.location.href = "/Apps/launchpad/webapp";
      //                             });
      //                           }
      //                         )
      //                   } else {
      //                     MessageToast.show("Clave incorrecta", {
      //                       duration: 2000
      //                     });
      //                   }

      //                 });
      //               }
      //             )
      //         } else {
      //           MessageToast.show("Usuario inactivo, por favor comuniquese con un administrador", {
      //             duration: 2000
      //           });


      //         }
      //       } else {
      //         MessageToast.show("Usuario no valido", {
      //           duration: 2000
      //         });
      //       }
      //     });
      //   })
      // .catch(function (err) {
      //   console.log('Fetch Error :-S', err);
      // });

    }
  });
});