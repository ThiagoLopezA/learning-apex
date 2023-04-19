/**
 The method insertCourse takes as input strings name and details, an integer credits, 
 and returns a record ID. Implement the method to insert a apxio__Course__c record with 
 the Name and apxio__Course_Details__c and apxio__Credits__c fields filled out, and return 
 the Id of the new record.

 Note thatapxio__Credits__c is a restricted picklist with valid values 1, 2, 3, and 4. 
 If an invalid value is provided for this picklist, return null.

 You will be working with the following custom object and field names for this problem:

    apxio__Course__c
    apxio__Course__c.apxio__Course_Details__c
    apxio__Course__c.apxio__Credits__c

 */

public class Result {
    public Id insertCourse(String name, String details, Integer credits) {
        if(credits < 1 || credits > 4) return null;
    
        apxio__Course__c course = new apxio__Course__c(
            Name = name,
            apxio__Course_Details__c = details,
            apxio__Credits__c = String.valueof(credits)
        );
    
        insert course;
    
        return course.Id;
    }
}