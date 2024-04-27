sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'soumik.app.purchaseorderapplication',
            componentId: 'poitemsObjectPage',
            contextPath: '/purchaseorder/poitems'
        },
        CustomPageDefinitions
    );
});