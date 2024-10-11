import { LightningElement, api, wire, track } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import search from '@salesforce/apex/VCC_ResetPasswordController.search';
import resetPassword from '@salesforce/apex/VCC_ResetPasswordController.resetUserPassword';

export default class VccResetPassword extends LightningElement {
    @track isBusy = false;
    @api notifyViaAlerts = false;
    @api recordid;

    isMultiEntry = true;
    maxSelectionSize = 5;
    errors = [];
    results = [];
    selection = [];

    connectedCallback() {
        this.initLookupDefaultResults();
    }

    initLookupDefaultResults() {
        const lookup = this.template.querySelector('c-lookup');
    }

    handleLookupSearch(event) {
        const lookupElement = event.target;
        search(event.detail)
            .then((results) => {
                lookupElement.setSearchResults(results);
            })
            .catch((error) => {
                this.notifyUser('Lookup Error', 'An error occured while searching with the lookup field.', 'error');
                // eslint-disable-next-line no-console
                console.error('Lookup error', JSON.stringify(error));
                this.errors = [error];
            });
    }

    handleLookupSelectionChange(event) {
        this.checkForErrors();
    }

    handleLookupTypeChange(event) {
        this.errors = [];
    }

    handleSubmit(event) {
        this.isBusy = true;
        this.checkForErrors();
        if (this.errors.length === 0) {
            this.selection.forEach((u, i) => {
                this.resetUser(u);
            });
        }
        this.handleClear();
        this.isBusy = false;
    }

    resetUser(user){
        let variant = 'error';
        let title = 'Reset Password Failed';
        let message = 'The reset password for ' + user.title + ' failed.';

        console.log('User ID:' + user.id);
        resetPassword({ userId : user.id })
            .then((response) => {
                if(response.startsWith('Success')){
                    variant = 'success';
                    title = 'Reset Password Success';
                    message = 'The reset password for ' + user.title + ' was successful.';
                } 

                this.notifyUser(title, message, variant);
            })
            .catch((error) => {
                console.log('ERROR:' + JSON.stringify(error));
                this.notifyUser('Reset Password Error', 'An error occured while resetting the password(s).', 'error');
                this.errors = [error];
            });
    }

    handleClear() {
       this.template.querySelector('c-lookup').clearSelection();
       this.errors = [];
    }

    checkForErrors() {
        this.errors = [];
        this.selection = this.template.querySelector('c-lookup').getSelection();
        // Custom validation rule
        if (this.isMultiEntry && this.selection.length > this.maxSelectionSize) {
            this.errors.push({ message: `You may only select up to ${this.maxSelectionSize} items.` });
        }
        // Enforcing required field
        if (this.selection.length === 0) {
            this.errors.push({ message: 'Please make a selection.' });
        }
    }

    notifyUser(title, message, variant) {
        if (this.notifyViaAlerts) {
            // Notify via alert
            // eslint-disable-next-line no-alert
            alert(`${title}\n${message}`);
        } else {
            // Notify via toast (only works in LEX)
            const toastEvent = new ShowToastEvent({ title, message, variant });
            this.dispatchEvent(toastEvent);
        }
    }
}