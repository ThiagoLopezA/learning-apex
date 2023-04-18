/*
Given a person's age, return true if the person is a teenager (age 13 - 19).
isTeenager(5) = false
isTeenager(15) = true
*/

public class Solution {
   public Boolean isTeenager(Integer age){
       return age >= 13 && age <= 19;
   }
}

