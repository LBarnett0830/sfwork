import { LightningElement, api } from 'lwc';

export default class VccLightningSpinner extends LightningElement {
    @api spinnerText=""
    @api size="large" //small, medium, large

    get helpText(){
        return this.spinnerText? this.spinnerText: 'Loading spinner'
    }
}