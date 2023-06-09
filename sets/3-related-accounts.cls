/**
 Implement the method accountIds that takes as input a list of Opportunity records, and 
 returns a set containing IDs of related accounts.

 Given the following test data:

 Opportunity opp1 = new Opportunity(Name = 'Opportunity 1', AccountId = '0015f00000CtulqAAB');
 Opportunity opp2 = new Opportunity(Name = 'Opportunity 2', AccountId = '0015f00000CtulqAAB');
 List<Opportunity> opps = new List<Opportunity> {opp1, opp2};

 The expression accountIds(opps) returns a Set<Id> containing the single Id 0015f00000CtulqAAB
 since both opportunities were related to the same account.
 */

public class Solution {
    public Set<Id> accountIds(List<Opportunity> opps) {
        Set<Id> ids = new Set<Id>();
    
        for(Opportunity opp : opps){
            if(opp.AccountId != null){
                ids.add(opp.AccountId);
            }
        }
    
        return ids;
    }
}