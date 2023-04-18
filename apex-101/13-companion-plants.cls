/**
 Some plants are considered companion plants. They grow better when planted next to each other.
 For the purpose of this problem, we consider the following plants to be companions: lettuce
 and cucumbers, lettuce and onions, onions and carrots, and onions and tomatoes.

 Write a function isCompanion that takes as input two strings plant1 and plant2. If the two plants
 are companion plants based on the criteria described above, return true. Otherwise, return false.

 companionPlants('onions', 'lettuce') = true
 companionPlants('lettuce', 'tomatoes') = false
 */

public class Result {
    public Boolean companionPlants(String plant1, String plant2) {

        List<String> companions = new List<String>{plant1, plant2};
    
        Integer lettuce = companions.indexOf('lettuce');
        Integer onions = companions.indexOf('onions');
    
        if(lettuce != -1){
            Integer indexOfCompanion = lettuce == 1 ? 0 : 1;
            String companion = companions.get(indexOfCompanion);
    
            if(companion == 'cucumbers' || companion == 'onions') return true;
        } else if (onions != -1){
            Integer indexOfCompanion = onions == 1 ? 0 : 1;
            String companion = companions.get(indexOfCompanion);
    
            if(companion == 'carrots' || companion == 'tomatoes') return true;
        }
        
        return false;
        
    }
}