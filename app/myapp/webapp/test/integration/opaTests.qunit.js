sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'sap/fe/fioriapp/myapp/test/integration/FirstJourney',
		'sap/fe/fioriapp/myapp/test/integration/pages/PetCareList',
		'sap/fe/fioriapp/myapp/test/integration/pages/PetCareObjectPage'
    ],
    function(JourneyRunner, opaJourney, PetCareList, PetCareObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('sap/fe/fioriapp/myapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePetCareList: PetCareList,
					onThePetCareObjectPage: PetCareObjectPage
                }
            },
            opaJourney.run
        );
    }
);