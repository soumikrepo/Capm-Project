sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'soumik/app/purchaseorderapplication/test/integration/FirstJourney',
		'soumik/app/purchaseorderapplication/test/integration/pages/purchaseorderList',
		'soumik/app/purchaseorderapplication/test/integration/pages/purchaseorderObjectPage',
		'soumik/app/purchaseorderapplication/test/integration/pages/poitemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, purchaseorderList, purchaseorderObjectPage, poitemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('soumik/app/purchaseorderapplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThepurchaseorderList: purchaseorderList,
					onThepurchaseorderObjectPage: purchaseorderObjectPage,
					onThepoitemsObjectPage: poitemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);