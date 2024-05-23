import { LightningElement, api, wire } from 'lwc';


export default class Estimates extends LightningElement {
  @api recordId;

  @wire(getDistributions, {
    projectId: '$recordId',
  }) records;

}