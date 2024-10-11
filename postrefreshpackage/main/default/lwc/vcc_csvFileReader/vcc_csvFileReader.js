import { LightningElement, track, api } from "lwc";
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import userCreationFileReader from '@salesforce/apex/VCC_DataImportUtil.userCreationFileReader';

const columns = [
    { label: 'FirstName', fieldName: 'FirstName' },
    { label: 'LastName', fieldName: 'LastName' },
    { label: 'Email', fieldName: 'Email' },
    { label: 'Username', fieldName: 'Username'},
    // { label: 'Alias', fieldName: 'Alias'},
    // { label: 'Time Zone', fieldName: 'TimeZoneSidKey'},
    // { label: 'Language', fieldName: 'LanguageLocaleKey'},
    // { label: 'Locale', fieldName: 'LocaleSidKey'},
    // { label: 'Profile', fieldName: 'ProfileId'},
    // { label: 'Permission Set', fieldName: 'PermissionSet'}
];
export default class Vcc_csvFileReader extends LightningElement {
    //@api = to expose a public method
    //@track = to track a private property's value and rerender a component when it changes
    @api recordId;
    @track error;
    @track columns = columns;
    @track data;
    @track UpdateData;
    @track CreateData;
    fileAdded = false;
    uploadComplete = false;
    showUsersCreated = null;
    showUsersUpdated = null;

    //accepted parameters
    get acceptedFormats() {
        return['.csv'];
    }

    handleUploadFinished(event) {
        //get the list of uploaded files
        const uploadedFiles = event.detail.files;
        console.log('uploadedFiles ====> ' + JSON.stringify(uploadedFiles));
        this.fileAdded = true;

        //calling apex class
        userCreationFileReader({idContentDocument : uploadedFiles[0].documentId})
        
        .then(result => {
            this.uploadComplete = true;
            console.log('create ====> '+JSON.stringify(result.usersToCreateList));
            console.log('update ====> '+JSON.stringify(result.usersToUpdateList));
            this.UpdateData = [];
            this.CreateData = [];
            this.UpdateData.push(... result.usersToUpdateList);
            this.CreateData.push(... result.usersToCreateList);
            console.log('this.data ====> ' + JSON.stringify(this.data));
            
            if (this.UpdateData.length != 0){
                this.showUsersUpdated = true;
            }
            console.log('UpdateData Length ====> ' +this.UpdateData.length)

            if (this.CreateData.length != 0){
                this.showUsersCreated = true;
            }

            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Success!',
                    message: 'Users have been created based on the CSV file uploaded',
                    variant: 'success',
                }),
            );

            this.fileAdded = false;
            console.log('this.fileAdded ' +this.fileAdded);
            this.uploadComplete = false;
            console.log('this.uploadComplete ' + this.uploadComplete);
        })

        .catch(error => {
            console.log(error);
            this.error = error;
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error',
                    message: JSON.stringify(error.body.message),
                    variant: 'error',
                }),
            );
        })

        this.showUsersCreated = false;
        this.showUsersUpdated = false;
    }
}