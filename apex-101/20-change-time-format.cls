/**
 13:50 and 01:50 PM are 24-hour and 12-hour representations of the same time. Implement 
 the method changeTimeFormat that takes as input a string strTime formatted as a 24-hour 
 string, and returns the equivalent 12-hour string.

 Examples:
 changeTimeFormat('08:05') returns '08:05 AM'
 changeTimeFormat('00:05') returns '12:00 AM'
 changeTimeFormat('23:15') returns '11:15 PM'
*/

 public class Result {
    public String changeTimeFormat(String strTime) {
        Integer hour = Integer.valueOf(strTime.substring(0, 2));
        String minutes = strTime.substring(2);
        
        if(hour == 0) {
            return '12' + minutes + ' AM';
        } 
        if(hour < 12) return strTime + ' AM';
        if(hour == 12) return strTime + ' PM';
    
        String newHour = String.valueOf(hour - 12);
        if(newHour.length() == 1) newHour = '0' + newHour;


    	return newHour + minutes + ' PM';
}
 }