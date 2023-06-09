/**
 Implement the method getListOfsObject(), which accepts two parameters, a list of accounts, 
 and a list of contacts, as an input and returns a list of sObjects. If both lists are empty 
 or null, return an empty list of sObject.

 Given the following test code:

 List<Account> accounts = new List<Account>();
 accounts.add(new Account(name ='Salesforce'));
 accounts.add(new Account(name ='Microsoft'));

 List<Contact> contacts= new List<Contact>();
 contacts.add(new Contact(lastName = 'Benioff'));
 contacts.add(new Contact(lastName = 'Taylor'));

 List result = getListOfsObject(accounts,contacts);

 result should be (Account:{Name=Salesforce}, Account:{Name=Microsoft}, Contact:{LastName=Benioff}, 
 Contact:{LastName=Taylor})

 Note: Adding different types into a list of sObjects can be used to perform operations on multiple 
 object types in a single DML operation. 
*/

public class Solution {
    public List<sObject> getListOfsObject(List<Account> accounts, List<Contact> contacts)
    {
        List<sObject> objects = new List<sObject>();

        if(accounts != null){
            for(Account account : accounts) objects.add(account);
        }

        if(contacts != null){
            for(Contact contact : contacts) objects.add(contact);
        }

        return objects;
    }
}