/**
 A prime number is a number greater than 1 that is not evenly divisible by any number 
 greater than one and smaller than itself. For example, 13 is a prime number because 
 it is not evenly divisible by any number from 2 to 12.

 Implement the function nextPrime that takes as input an integer num and returns the 
 smallest prime number greater than num.

 nextPrime(10) = 11. 11 is the smallest prime number greater than 10
 nextPrime(8) = 11. 11 is the smallest prime number greater than 8
 */

public class Result {
    public Integer nextPrime(Integer num) {
        Boolean foundIt = false;
        Integer prime = 0;
        
        while(foundIt == false){
            Integer counter = 0;
            num++;
    
            for(Integer i = num; i > 0; i--){
                if(math.mod(num,i) == 0) counter++;
            }
    
            if(counter == 2){
                foundIt = true;
                prime = num;
            }
        }
    
        return prime;
    }
}
