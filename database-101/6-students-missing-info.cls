/**
 Implement the method selectStudentsWithoutContactInfo that queries for and returns a 
 list of all active apxio__Student__c records that are missing an email, phone, or both. 
 Make sure to include the Id and Name fields in the result. The returned list should be 
 sorted A-Z on Name.

 The method should return a list containing Azeem Khan at index 0 and Paulina Smith at 
 index 1

 You will be working with the following custom object and field names for this problem:

    apxio__Student__c
    apxio__Student__c.apxio__Active__c
    apxio__Student__c.apxio__Email__c
    apxio__Student__c.apxio__Phone__c
    apxio__Student__c.apxio__Registration_Number__c
 */

public class Result {
    public List<apxio__Student__c> selectStudentsWithoutContactInfo() {
        List<apxio__Student__c> students = [
            SELECT Name, Id, apxio__Registration_Number__c
            FROM apxio__Student__c 
            WHERE apxio__Active__c = true AND ( apxio__Email__c = '' OR apxio__Phone__c = '' )
            ORDER BY Name
        ];
    
        return students;
    }
}