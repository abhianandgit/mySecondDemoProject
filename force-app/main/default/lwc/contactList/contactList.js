import { LightningElement, wire } from 'lwc';
import FirstName_FIELD from '@salesforce/schema/Contact.FirstName';
import LastName_FIELD from '@salesforce/schema/Contact.LastName';
import Email_FIELD from '@salesforce/schema/Contact.Email';
import getContacts from '@salesforce/apex/ContactController.getContacts';
const COLUMNS = [
    { label: 'FirstName', fieldName: FirstName_FIELD.fieldApiName, type: 'text' },
    { label: 'LastName', fieldName: LastName_FIELD.fieldApiName, type: 'text' },
    { label: 'Email', fieldName: Email_FIELD.fieldApiName, type: 'Email' }
];
export default class contactList extends LightningElement {
    columns = COLUMNS;
    @wire(getContacts)
    Contacts;
}