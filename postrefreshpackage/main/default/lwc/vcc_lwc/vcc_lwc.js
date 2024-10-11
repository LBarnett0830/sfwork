import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import AccountLocationFacilityImport from '@salesforce/apex/VCC_DataImportUtil.AccountLocationFacilityImport';
import massSignersImport from '@salesforce/apex/VCC_DataImportUtil.massSignersImport';
import customSettingAddendumImport from '@salesforce/apex/VCC_DataImportUtil.customSettingAddendumImport';
import customSettingNoteImport from '@salesforce/apex/VCC_DataImportUtil.customSettingNoteImport';
import massCptToProgressNoteMappingImport from '@salesforce/apex/VCC_DataImportUtil.massCptToProgressNoteMappingImport';
import { subscribe } from 'lightning/empApi';
import massCodeSetImport from '@salesforce/apex/VCC_DataImportUtil.massCodeSetImport';
import massVistaUserImport from '@salesforce/apex/VCC_DataImportUtil.massVistaUserImport';
import createTestUsers from '@salesforce/apex/VCC_DataImportUtil.createTestUsers';
import createAutomationTestUsers from '@salesforce/apex/VCC_DataImportUtil.createAutomationTestUsers';
import createVCVAndQueueTestUsers from '@salesforce/apex/VCC_DataImportUtil.createVCVAndQueueTestUsers';
import assignTestUsersPermissions from '@salesforce/apex/VCC_DataImportUtil.assignTestUsersPermissions';
import assignTestSotRnMdUserPermissions from '@salesforce/apex/VCC_DataImportUtil.assignTestSotRnMdUserPermissions';
import assignAutomationUserPermissions from '@salesforce/apex/VCC_DataImportUtil.assignAutomationUserPermissions';
import assignPharmAutomationUserPermissions from '@salesforce/apex/VCC_DataImportUtil.assignPharmAutomationUserPermissions';
import assignVCVTestUsersPermissions from '@salesforce/apex/VCC_DataImportUtil.assignVCVTestUsersPermissions';
import assignQueueTestUsersPermissions from '@salesforce/apex/VCC_DataImportUtil.assignQueueTestUsersPermissions';
import assignVCVTestUsersMSALeadMSAPermissions from '@salesforce/apex/VCC_DataImportUtil.assignVCVTestUsersMSALeadMSAPermissions';
import createTrainingModeTestUsers from '@salesforce/apex/VCC_DataImportUtil.createTrainingModeTestUsers';
import assignTrainingModeTestUsersPermissions from '@salesforce/apex/VCC_DataImportUtil.assignTrainingModeTestUsersPermissions';
import assignPharmTrainingModeTestUsersPermissions from '@salesforce/apex/VCC_DataImportUtil.assignPharmTrainingModeTestUsersPermissions';
import assignMPandCATrainingModeTestUsersPermissions from '@salesforce/apex/VCC_DataImportUtil.assignMPandCATrainingModeTestUsersPermissions';

import bsConfig from '@salesforce/apex/VCC_DataImportUtil.bsConfig';
import bsAssignedUser from '@salesforce/apex/VCC_DataImportUtil.bsAssignedUser';

//create a new status variable, add it to the setupcomplete check, 
//add a get for the failure, set the status variable
//in the return of the method within the handleclick (where the console.log is)
//update html to show success or failure

export default class Vcc_lwc extends LightningElement {
        subscription = {};
        AccountLocationFacilityStatus = null;
        MassSignersStatus = null;
        massCptToProgressNoteMappingStatus = null;
        customSettingAddendumStatus = null;
        massCodeSetStatus = null;
        customSettingNoteStatus = null;
        createTestUsersStatus = null;
        massVistaUserImportStatus = null;
        bsConfigStatus = null;
        bsAssignedUserStatus = null;
        buttonClicked = false;
        disabled = false;
        eventHeard = 0; 
        isFailure = false;
        turnOnRelaunchSpinner = null;
        createAutomationTestUsersStatus = null;
        createVCVAndQueueTestUsersStatus = null;
        assignTestUsersPermissionsStatus = null;
        assignTestSotRnMdUserPermissionsStatus = null;
        assignAutomationUserPermissionsStatus = null;
        assignPharmAutomationUserPermissionsStatus = null;
        assignVCVTestUsersPermissionsStatus = null;
        assignQueueTestUsersPermissionsStatus = null;
        assignVCVTestUsersMSALeadMSAPermissionsStatus = null;
        createTrainingModeTestUsersStatus = null;
        assignTrainingModeTestUsersPermissionsStatus = null;
        assignPharmTrainingModeTestUsersPermissionsStatus = null;
        assignMPandCaTrainingModeTestUsersPermissionsStatus = null;

    // relaunchSpinner = false;

    //true from line 43 is being passed in to value
        set isOverallSuccess(value){
            this.showToast();
        }

        set isFailure(value){

        }

        get setupComplete(){
            if(this.AccountLocationFacilityStatus == true && 
                this.MassSignersStatus == true && 
                this.massCptToProgressNoteMappingStatus == true &&
                this.customSettingAddendumStatus == true &&
                this.massCodeSetStatus == true &&
                this.customSettingNoteStatus == true &&
                this.createTestUsersStatus == true &&
                this.massVistaUserImportStatus == true &&
                this.createAutomationTestUsersStatus == true &&
                this.createVCVAndQueueTestUsersStatus == true &&
                this.assignTestUsersPermissionsStatus == true &&
                this.assignTestSotRnMdUserPermissionsStatus == true &&
                this.assignAutomationUserPermissionsStatus == true &&
                this.assignPharmAutomationUserPermissionsStatus == true &&
                this.assignVCVTestUsersPermissionsStatus == true &&
                this.assignQueueTestUsersPermissionsStatus == true &&
                this.assignVCVTestUsersMSALeadMSAPermissionsStatus == true &&
                this.createTrainingModeTestUsersStatus == true &&
                this.assignTrainingModeTestUsersPermissionsStatus == true &&
                this.assignPharmTrainingModeTestUsersPermissionsStatus == true &&
                this.assignMPandCaTrainingModeTestUsersPermissionsStatus
                //&&
                //this.bsConfigStatus == true &&
                //this.bsAssignedUserStatus == true
                )
                {
                this.isOverallSuccess = true;
            }
            if (this.AccountLocationFacilityStatus != null && 
                this.MassSignersStatus != null &&
                this.massCptToProgressNoteMappingStatus != null &&
                this.customSettingAddendumStatus != null &&
                this.massCodeSetStatus != null &&
                this.customSettingNoteStatus != null &&
                this.createTestUsersStatus != null &&
                this.massVistaUserImportStatus != null &&
                this.createAutomationTestUsersStatus != null  &&
                this.createVCVAndQueueTestUsersStatus != null &&
                this.assignTestUsersPermissionsStatus != null &&
                this.assignTestSotRnMdUserPermissionsStatus != null &&
                this.assignAutomationUserPermissionsStatus != null &&
                this.assignPharmAutomationUserPermissionsStatus != null &&
                this.assignVCVTestUsersPermissionsStatus != null &&
                this.assignQueueTestUsersPermissionsStatus != null &&
                this.assignVCVTestUsersMSALeadMSAPermissionsStatus != null &&
                this.createTrainingModeTestUsersStatus != null &&
                this.assignTrainingModeTestUsersPermissionsStatus != null &&
                this.assignPharmTrainingModeTestUsersPermissionsStatus != null &&
                this.assignMPandCaTrainingModeTestUsersPermissionsStatus
                //&&
                //this.bsConfigStatus != null &&
                //this.bsAssignedUserStatus != null
                ) 
                {
                return true;

            } else {
                return false;
            }
        }

        get accountFailure(){
            if (this.AccountLocationFacilityStatus == null || this.AccountLocationFacilityStatus == true) {
                return false;
                // false=there has been no failure at this time
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get massSignersFailure(){
            if (this.MassSignersStatus == null || this.MassSignersStatus == true) {
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get massCptFailure(){
            if (this.massCptToProgressNoteMappingStatus == null || this.massCptToProgressNoteMappingStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get customSettingAddendumFailure(){
            if (this.customSettingAddendumStatus == null || this.customSettingAddendumStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get massCodeSetFailure(){
            if(this.massCodeSetStatus == null || this.massCodeSetStatus == true) {
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get customSettingNoteFailure(){
            if(this.customSettingNoteStatus == null || this.customSettingNoteStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get createTestUsersFailure(){
            if(this.createTestUsersStatus == null || this.createTestUsersStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get massVistaUserFailure(){
            if(this.massVistaUserImportStatus == null || this.massVistaUserImportStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get createAutomationTestUsersFailure(){
            if(this.createAutomationTestUsersStatus == null || this.createAutomationTestUsersStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get createVCVAndQueueTestUsersFailure(){
            if(this.createVCVAndQueueTestUsersStatus == null || this.createVCVAndQueueTestUsersStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get assignTestUsersPermissionsFailure(){
            if(this.assignTestUsersPermissionsStatus == null || this.assignTestUsersPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get assignTestSotRnMdUserPermissionsFailure(){
            if(this.assignTestSotRnMdUserPermissionsStatus == null || this.assignTestSotRnMdUserPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get assignAutomationUserPermissionsFailure() {
            if(this.assignAutomationUserPermissionsStatus == null || this.assignAutomationUserPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }
        
        get assignPharmAutomationUserPermissionsFailure() {
            if(this.assignPharmAutomationUserPermissionsStatus == null || this.assignPharmAutomationUserPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get assignVCVTestUsersPermissionsFailure() {
            if(this.assignVCVTestUsersPermissionsStatus == null || this.assignVCVTestUsersPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get assignQueueTestUsersPermissionsFailure() {
            if(this.assignQueueTestUsersPermissionsStatus == null || this.assignQueueTestUsersPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get assignVCVTestUsersMSALeadMSAPermissionsFailure () {
            if(this.assignVCVTestUsersMSALeadMSAPermissionsStatus == null || this.assignVCVTestUsersMSALeadMSAPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get createTrainingModeTestUsersFailure () {
            if(this.createTrainingModeTestUsersStatus == null || this.createTrainingModeTestUsersStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get assignTrainingModeTestUsersPermissionsFailure () {
            if(this.assignTrainingModeTestUsersPermissionsStatus == null || this.assignTrainingModeTestUsersPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get assignPharmTrainingModeTestUsersPermissionsFailure () {
            if(this.assignPharmTrainingModeTestUsersPermissionsStatus == null || this.assignPharmTrainingModeTestUsersPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        get assignMPandCATrainingModeTestUsersPermissionsFailure () {
            if(this.assignMPandCaTrainingModeTestUsersPermissionsStatus == null || this.assignMPandCaTrainingModeTestUsersPermissionsStatus == true){
                return false;
            } else {
                this.isFailure = true;
                return true;
            }
        }

        /*
        get bsConfigFailure(){
            if(this.bsConfigStatus == null || this.bsConfigStatus == true){
                return false;
            } else {
                this.isFailure = true;
            }
        }

        get bsAssignedUserFailure(){
            if(this.bsAssignedUserStatus == null || this.bsAssignedUserStatus == true){
                return false;
            } else {
                this.isFailure = true;
            }
            console.log('bsAssignedUserStatus ' +this.bsAssignedUserStatus);
            console.log('bsASsignedUserFailure ' +this.bsAssignedUserFailure);
            console.log('isFailure ' + this.isFailure);
        }
        */

        showToast() {
            const event = new ShowToastEvent({
                title: 'Success!',
                message: 'The test data has been imported',
            });
            this.dispatchEvent(event);
        }
    
        handleClick(event) {
            var buttonName = event.target.dataset.name;
            this.buttonClicked = true;
            const {name} = event.target
            this[name] = true;
            this.disabled = true;
            let statusList = [];
            let errorList = [];

            console.log('buttonName ====> ' +buttonName);

            if (buttonName === 'relaunch'){
                if (this.AccountLocationFacilityStatus === false){
                    this.AccountLocationFacilityStatus = null;
                    console.log('AccountLocationFacilityStatus ====> ' +this.AccountLocationFacilityStatus);
                }
                if(this.MassSignersStatus === false){
                    this.MassSignersStatus = null;
                    console.log('MassSignersStatus ====> ' +this.MassSignersStatus)
                }
                if(this.massCptToProgressNoteMappingStatus === false){
                    this.massCptToProgressNoteMappingStatus = null;
                    console.log('MassCptToProgressNoteMappingStatus ====> ' +this.massCptToProgressNoteMappingStatus);
                }
                if(this.customSettingAddendumStatus === false){
                    this.customSettingAddendumStatus = null;
                    console.log('customSettingAddendumStatus ====> ' +this.customSettingAddendumStatus);
                }
                if(this.massCodeSetStatus === false){
                    this.massCodeSetStatus = null;
                    console.log('massCodeSetStatus ====> ' +this.massCodeSetStatus);
                }
                if(this.customSettingNoteStatus === false){
                    this.customSettingNoteStatus = null;
                    console.log('customSettingNoteStatus ====> ' +this.customSettingNoteStatus);
                }
                if(this.createTestUsersStatus === false){
                    this.createTestUsersStatus = null;
                    console.log('createTestUsersStatus ====> ' +this.createTestUsersStatus)
                }
                if(this.massVistaUserImportStatus === false){
                    this.massVistaUserImportStatus = null;
                    console.log('massVistaUserImportStatus ====> ' +this.massVistaUserImportStatus);
                }
                if(this.createAutomationTestUsersStatus === false){
                    this.createAutomationTestUsersStatus = null;
                    console.log('createAutomationTestUsersStatus ===> ' +this.createAutomationTestUsersStatus);
                }
                if(this.createVCVAndQueueTestUsersStatus === false){
                    this.createVCVAndQueueTestUsersStatus = null;
                    console.log('createVCVAndQueueTestUsersStatus ===> ' +this.createVCVAndQueueTestUsersStatus);
                }
                if(this.assignTestUsersPermissionsStatus === false){
                    this.assignTestUsersPermissionsStatus = null;
                    console.log('assignTestUsersPermissionsStatus ===> ' +this.assignTestUsersPermissionsStatus);
                }
                if(this.assignTestSotRnMdUserPermissionsStatus === false){
                    this.assignTestSotRnMdUserPermissionsStatus = null;
                    console.log('assignTestSotRnMdUserPermissionsStatus ===> ' +this.assignTestSotRnMdUserPermissionsStatus);
                }
                if(this.assignAutomationUserPermissionsStatus === false){
                    this.assignAutomationUserPermissionsStatus = null;
                    console.log('assignAutomationUserPermissionsStatus ===> ' +this.assignAutomationUserPermissionsStatus);
                }
                if(this.assignPharmAutomationUserPermissionsStatus === false){
                    this.assignPharmAutomationUserPermissionsStatus = null;
                    console.log('assignPharmAutomationUserPermissionsStatus ===> ' +this.assignPharmAutomationUserPermissionsStatus);
                }
                if(this.assignVCVTestUsersPermissionsStatus === false){
                    this.assignVCVTestUsersPermissionsStatus = null;
                    console.log('assignVCVTestUsersPermissionsStatus ===> ' +this.assignVCVTestUsersPermissionsStatus);
                }
                if(this.assignQueueTestUsersPermissionsStatus === false){
                    this.assignQueueTestUsersPermissionsStatus = null;
                    console.log('assignQueueTestUsersPermissionsStatus ===> ' +this.assignQueueTestUsersPermissionsStatus);
                }
                if(this.assignVCVTestUsersMSALeadMSAPermissionsStatus === false){
                    this.assignVCVTestUsersMSALeadMSAPermissionsStatus = null;
                    console.log('assignVCVTestUsersMSALeadMSAPermissionsStatus ===> ' + this.assignVCVTestUsersMSALeadMSAPermissionsStatus);
                }
                if(this.createTrainingModeTestUsersStatus === false){
                    this.createTrainingModeTestUsersStatus = null;
                    console.log('createTrainingModeTestUsersStatus ===> ' + this.createTrainingModeTestUsersStatus);
                }
                if(this.assignTrainingModeTestUsersPermissionsStatus === false){
                    this.assignTrainingModeTestUsersPermissionsStatus = null;
                    console.log('assignTrainingModeTestUsersPermissionsStatus ===> ' + this.assignTrainingModeTestUsersPermissionsStatus);
                }
                if(this.assignPharmTrainingModeTestUsersPermissionsStatus === false){
                    this.assignPharmTrainingModeTestUsersPermissionsStatus = null;
                    console.log('assignPharmTrainingModeTestUsersPermissionsStatus ===> ' + this.assignPharmTrainingModeTestUsersPermissionsStatus);
                }
                if(this.assignMPandCaTrainingModeTestUsersPermissionsStatus === false){
                    this.assignMPandCaTrainingModeTestUsersPermissionsStatus = null;
                    console.log('assignMPandCaTrainingModeTestUsersPermissionsStatus ===> ' + this.assignMPandCaTrainingModeTestUsersPermissionsStatus);
                }


                /*
                if(this.bsConfigStatus === false){
                    this.bsConfigStatus = null;
                    console.log('bsConfigStatus ====> ' +this.bsConfigStatus);
                }
                if(this.bsAssignedUserStatus === false){
                    this.bsAssignedUserStatus = null;
                    console.log('bsAssignedUserStatus ====> ' +this.bsAssignedUserStatus);
                }
                */
                this.turnOnRelaunchSpinner = true

            }

            if (this.AccountLocationFacilityStatus != true){
            AccountLocationFacilityImport()
                .then((result) => {
                    this.AccountLocationFacilityStatus = true;
                    console.log('AccountLocationFacilityImport success')
                })
                .catch((error) => {
                    this.AccountLocationFacilityStatus = false;
                    console.log('AccountLocationFacilityImport Error')
                    console.log('error====> ' +JSON.stringify(error.body.message))
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error at Account Location Facility Import', 
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.MassSignersStatus != true){
            massSignersImport()
                .then((result) => {
                    this.MassSignersStatus = true;
                    console.log('massSignersImport success')
                })
                .catch((error) => {
                    this.MassSignersStatus = false;
                    console.log('massSignersImport Error')
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error at Mass Signers Import', 
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.customSettingAddendumStatus != true){
            customSettingAddendumImport()
                .then((result) => {
                    this.customSettingAddendumStatus = true;
                    console.log('customSettingAddendumImport success')
                })
                .catch((error) => {
                    this.customSettingAddendumStatus = false;
                    console.log('customSettingAddendumImport Error')
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error at Custom Setting Addendum Import', 
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }
                let _this = this;

            //Callback invoked whenever a new event message is received
            const messageCallBack = function (eventResponse) {

                console.log('New message received: ', JSON.stringify(eventResponse));
                console.log('eventHeard====> ' +_this.eventHeard)
                _this.eventHeard++;
                console.log('eventHeard====> ' +_this.eventHeard)
                console.log('Status====> ' +eventResponse.data.payload.Status__c)

                let status = eventResponse.data.payload.Status__c;
                let message = eventResponse.data.payload.Message__c;
                statusList.push(status);
                errorList.push(message);
                console.log('statusList====> ' + statusList);

                function checkStatus(status){
                    return status == 'Success';
                }
                console.log('checkStatus ====> ' +statusList.every(checkStatus));

                if (_this.eventHeard ==2 && statusList.every(checkStatus) ==true) {
                    _this.massCodeSetStatus = true;
                    massCptToProgressNoteMappingImport()
                    .then((result) => {
                        _this.massCptToProgressNoteMappingStatus = true;
                        console.log('massCptToProgressNoteMappingImport success')
                        console.log('eventHeard====> ' +_this.eventHeard)
                    })
                    .catch((error) => {
                        // console.log(JSON.stringify(error));
                        _this.massCptToProgressNoteMappingStatus = false;
                        console.log('massCptToProgressNoteMappingImport Error')
                        this.dispatchEvent(
                            new ShowToastEvent({
                                title: 'Error at Mass CPT To Progress Note Mapping Import', 
                                message: JSON.stringify(error.body.message),
                                variant: 'error'
                            })
                        )
                    })

                } else if (_this.eventHeard ==2) {
                
                    _this.massCodeSetStatus = false;
                    _this.massCptToProgressNoteMappingStatus = false;
                    console.log('errorList ====>' +errorList);
                    dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error at Mass Code Set Import',
                            message: 'Error ' +errorList,
                            variant: 'error'
                        })
                    )
                }
                //Response contains the payLoad of the new message received
            };
            //this. = represents the current instance of the class in which it appears
            // -1 = get all new events sent after the subscription (this is the default)
            //messageCallBack = what you do when you get a message back
            subscribe('/event/Code_Set_Event__e', -1, messageCallBack).then((subscribeResponse) => {
                //Response contains the subscription information on subscribe call
                console.log(
                    'Subscription request sent to: ',
                    JSON.stringify(subscribeResponse.channel)
                );
                this.subscription = subscribeResponse;
            })
            console.log('eventHeard====> '+this.eventHeard);

            if (this.massCodeSetStatus != true){
            massCodeSetImport({staticResourceName : 'CodeSet_Pt1'})
                .then((result) => {
                    console.log('massCodeSetImport part 1 success')
            })
                .catch((error) => {
                    console.log('massCodeSetImport pt 1 Error')
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error at Mass Code Set Import Static Resource CodeSet_Pt1', 
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
            })

            massCodeSetImport({staticResourceName : 'CodeSet_Pt2'})
                .then((result) => {
                    console.log('massCodeSetImport part 2 success')
            })
                .catch((error) => {
                    console.log('massCodeSetImport pt 2 error')
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error at Mass Code Set Import CodeSet_Pt2', 
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
            })
            }

            if (this.massVistaUserImportStatus != true){
            massVistaUserImport()
            .then((result) => {
                this.massVistaUserImportStatus = true;
                console.log('massVistaUserImport success')
            })
            .catch((error) => {
                this.massVistaUserImportStatus = false;
                console.log('massVistaUserImport error')
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Error at Mass Vista User Import', 
                        message: JSON.stringify(error.body.message),
                        variant: 'error'
                    })
                )
            })
            }

            if (this.customSettingAddendumStatus != true){
            customSettingNoteImport()
                .then((result) => {
                    // this[name] = false;
                    this.customSettingNoteStatus = true;
                    console.log('customSettingNoteImport success')
                })
                .catch((error) => {
                    this.customSettingNoteStatus = false;
                    console.log('customSettingNoteImport Error')
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error at Custom Setting Note Import', 
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.createTestUsersStatus != true){
            createTestUsers()
                .then((result) => {
                    // this[name] = false;
                    this.createTestUsersStatus = true;
                    console.log('createTestUsers success')
                })
                .catch((error) => {
                    this.createTestUsersStatus = false;
                    this.dispatchEvent(
                        new ShowToastEvent({
                            title: 'Error at Create Test Users Import', 
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.createAutomationTestUsersStatus != true){
                createAutomationTestUsers()
                .then((result) => {
                    this.createAutomationTestUsersStatus = true;
                    console.log('createAutomationTestUsers success')
                })
                .catch((error) => {
                    this.createAutomationTestUsersStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Create Automation Test Users Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.createVCVAndQueueTestUsersStatus != true){
                createVCVAndQueueTestUsers()
                .then((result) => {
                    this.createVCVAndQueueTestUsersStatus = true;
                    console.log('createVCVAndQueueTestUsersStatus success')
                })
                .catch((error) => {
                    this.createVCVAndQueueTestUsersStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Create VCV and Queue Test Users Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.assignTestUsersPermissionsStatus != true){
                assignTestUsersPermissions()
                .then((result) => {
                    this.assignTestUsersPermissionsStatus = true;
                    console.log('assignTestUsersPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignTestUsersPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign Test Users Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.assignTestSotRnMdUserPermissionsStatus != true){
                assignTestSotRnMdUserPermissions()
                .then((result) => {
                    this.assignTestSotRnMdUserPermissionsStatus = true;
                    console.log('assignTestSotRnMdUserPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignTestSotRnMdUserPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign Test SOT RN and MD Users Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.assignAutomationUserPermissionsStatus != true){
                assignAutomationUserPermissions()
                .then((result) => {
                    this.assignAutomationUserPermissionsStatus = true;
                    console.log('assignAutomationUserPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignAutomationUserPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign Automation Users Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.assignPharmAutomationUserPermissionsStatus != true){
                assignPharmAutomationUserPermissions()
                .then((result) => {
                    this.assignPharmAutomationUserPermissionsStatus = true;
                    console.log('assignPharmAutomationUserPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignPharmAutomationUserPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign Pharm Automation User Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.assignVCVTestUsersPermissionsStatus != true){
                assignVCVTestUsersPermissions()
                .then((result) => {
                    this.assignVCVTestUsersPermissionsStatus = true;
                    console.log('assignVCVTestUsersPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignVCVTestUsersPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign VCV Test Users Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.assignQueueTestUsersPermissionsStatus != true){
                assignQueueTestUsersPermissions()
                .then((result) => {
                    this.assignQueueTestUsersPermissionsStatus = true;
                    console.log('assignQueueTestUsersPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignQueueTestUsersPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign Queue Test Users Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }

            if (this.assignVCVTestUsersMSALeadMSAPermissionsStatus != true){
                assignVCVTestUsersMSALeadMSAPermissions()
                .then((result) => {
                    this.assignVCVTestUsersMSALeadMSAPermissionsStatus = true;
                    console.log('assignVCVTestUsersMSALeadMSAPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignVCVTestUsersMSALeadMSAPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign VCV Test Users MSA and Lead MSA Users Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }
            if (this.createTrainingModeTestUsersStatus != true){
                createTrainingModeTestUsers()
                .then((result) => {
                    this.createTrainingModeTestUsersStatus = true;
                    console.log('createTrainingModeTestUsersStatus success')
                })
                .catch((error) => {
                    this.createTrainingModeTestUsersStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Create Training Mode Test Users Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }
            if (this.assignTrainingModeTestUsersPermissionsStatus != true){
                assignTrainingModeTestUsersPermissions()
                .then((result) => {
                    this.assignTrainingModeTestUsersPermissionsStatus = true;
                    console.log('assignTrainingModeTestUsersPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignTrainingModeTestUsersPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign Training Mode Test Users Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }
            if (this.assignPharmTrainingModeTestUsersPermissionsStatus != true){
                assignPharmTrainingModeTestUsersPermissions()
                .then((result) => {
                    this.assignPharmTrainingModeTestUsersPermissionsStatus = true;
                    console.log('assignPharmTrainingModeTestUsersPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignPharmTrainingModeTestUsersPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign Pharm Training Mode Test Users Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }
            if (this.assignMPandCaTrainingModeTestUsersPermissionsStatus != true){
                assignMPandCATrainingModeTestUsersPermissions()
                .then((result) => {
                    this.assignMPandCaTrainingModeTestUsersPermissionsStatus = true;
                    console.log('assignMPandCaTrainingModeTestUsersPermissionsStatus success')
                })
                .catch((error) => {
                    this.assignMPandCaTrainingModeTestUsersPermissionsStatus = false;
                    this.dispatchEvent(
                        newShowToastEvent({
                            title: 'Error at Assign MP and CA Training Mode Test Users Permissions Import',
                            message: JSON.stringify(error.body.message),
                            variant: 'error'
                        })
                    )
                })
            }
            /*
            if (this.bsConfigStatus != true){
                bsConfig()
                    .then((result) => {
                        // this[name] = false;
                        this.bsConfigStatus = true;
                        console.log('bsConfig success')
                    })
                    .catch((error) => {
                        this.bsConfigStatus = false;
                        this.dispatchEvent(
                            new ShowToastEvent({
                                title: 'Error at bsConfig', 
                                message: JSON.stringify(error.body.message),
                                variant: 'error'
                            })
                        )
                    })
            }

            if (this.bsAssignedUserStatus != true){
                bsAssignedUser()
                    .then((result) => {
                        this[name] = false;
                        this.bsAssignedUserStatus = true;
                        console.log('bsAssignedUser success')
                    })
                    .catch((error) => {
                        this.bsAssignedUserStatus = false;
                        this.dispatchEvent(
                            new ShowToastEvent({
                                title: 'Error at bsAssignedUser Import', 
                                message: JSON.stringify(error.body.message),
                                variant: 'error'
                            })
                        )
                    })
            }
            console.log('isFailure====> ' +this.isFailure);
            */

        }
}