sap.ui.define([
  "testtest/controller/BaseController"
], function(BaseController) {
  "use strict";

  return BaseController.extend("testtest.controller.App", {
  
    onInit: function() {
      this.getView().addStyleClass(this.getOwnerComponent().getContentDensityClass());
    }
    
  });
});
