/*
 A student passes a course if any two of the following three conditions are true: they have passed the exam,
 they have passed assignments, and they have passed the course project.
 Implement the function isPassed that takes in three parameters passedExam, passedAssignments, and
 passedProject, and returns true of at least two of the passed variables are true.

 isPassed(true, false, true) = true. 
 Student did not pass assignments, but passes overall because they passed the exam and the project.

 isPassed(false, false, true) = false. 
 Student only passed the project, and therefore does not pass overall.
*/

public class Result {
    public Boolean isPassed(Boolean passedExam, Boolean passedAssignments, Boolean passedProject) {
        List<Boolean> results = new List<Boolean>{passedExam, passedAssignments, passedProject};
        Integer counter = 0;
        
        for(Boolean bool : results){
            if(bool) counter++;
        }
    
        return counter >= 2;
    }
}