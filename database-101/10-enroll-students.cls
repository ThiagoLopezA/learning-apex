/**
Implement the method enrollStudents that takes as input a list of strings emails and 
a string className and returns a boolean. The method should enroll all students with 
the provided emails into a class with the given name by creating apxio__Class_Enrollment__c 
records.

Note that apxio__Student__c and apxio__Class__c records already exist in the database.

You will be working with the following custom object and field names for this problem:

    apxio__Student__c
    apxio__Student__c.apxio__Email__c
    apxio__Class__c
    apxio__Class_Enrollment__c
    apxio__Class_Enrollment__c.apxio__Student__c
    apxio__Class_Enrollment__c.apxio__Offered_Class__c
 */

public class Solution {
    public void enrollStudents(List<String> emails, String className) {
        List<apxio__Student__c> students = [
            SELECT Id 
            FROM apxio__Student__c
            WHERE apxio__Email__c IN :emails
        ];
        List<apxio__Class__C> enrollToClass = [
            SELECT Id 
            FROM apxio__Class__C
            WHERE Name =: className
            LIMIT 1
        ];
        List<apxio__Class_Enrollment__c> enrollments = new List<apxio__Class_Enrollment__c>();
    
        for(Integer i = 0; i < students.size(); i++){
            apxio__Class_Enrollment__c enrollment = new apxio__Class_Enrollment__c(
                apxio__Student__c = students[i].Id,
                apxio__Offered_Class__c = enrollToClass[0].Id
            );
    
            enrollments.add(enrollment);
        }
    
        insert enrollments;
    }
}