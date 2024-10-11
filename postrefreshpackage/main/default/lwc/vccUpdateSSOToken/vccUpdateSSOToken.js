/**
 * 
 * Class Description
 *
 * @author barne
 * @version 1.0.0
 */
import { LightningElement, wire } from 'lwc';
import { ShowToastEvent }  from 'lightning/platformShowToastEvent';
import updateSSO from '@salesforce/apex/VCC_DataImportUtil.updateSSO';


export default class VccUpdateSsoToken extends LightningElement {
    token = 'Enter SSO Token';
    duzValue = 'Enter DUZ Value';
    vistainstance = 'Enter Vista Instance';
    //updateTokenResult;

    paramObj = {
      tokenVar : this.token,
      duzVar : this.duzValue,
      vistaVar  : this.vistainstance
    };




    handleToken(event) {

            this.paramObj = {
                ...this.paramObj,
                tokenVar: (this.token = event.target.value)
            };
            //this.token = trimmedValue; // updates the internal state
    }

    handleDUZ(event) {

            this.paramObj = {
                ...this.paramObj,
                duzVar: (this.duzValue = event.target.value)
            };
    }

    handleVista(event) {

        //this.vistainstance = trimmedValue; // updates the internal state
        this.paramObj = {
                ...this.paramObj,
                vistaVar: (this.vistainstance = event.target.value)
            };
    }

    //@wire(updateSSO, { tokenWrapper : '$paramObj'})
    handleClick(){
        console.log(this.paramObj);
        updateSSO( { tokenWrapper:this.paramObj })
            .then(result => {
                //this.updateTokenResult = result;
                if(result != 'SUCCESS'){
                    const succ = new ShowToastEvent({
                                         title: 'ERROR!',
                                         message: JSON.stringify(result),
                                         variant: 'warning',
                                         mode: "sticky"
                                     });
                                     this.dispatchEvent(succ);
                }
                if(result == 'SUCCESS'){
                    const succ = new ShowToastEvent({
                            title: 'Success',
                            message: JSON.stringify(result),
                            variant: 'success'
                        });
                        this.dispatchEvent(succ);
                        this.token = '';
                        this.duzValue = '';
                        this.vistainstance = '';

                }

            })
            .catch(error => {
                console.log(error);
                //this.updateTokenResult = error;
                const fell = new ShowToastEvent({
                        title: 'ERROR',
                        message: JSON.stringify(error),
                        variant: 'error',
                        mode: "sticky"
                    });
                    this.dispatchEvent(fell);
            });
    }
}