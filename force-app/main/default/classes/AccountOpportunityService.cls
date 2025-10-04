public with sharing class AccountOpportunityService {
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getOpportunitiesByAccountId(Id accountId) {
        //Return Opportunities
        return [
            SELECT Id, Name, StageName, Amount, CloseDate
            FROM Opportunity
            WHERE AccountId = :accountId
            ORDER BY CloseDate DESC
        ];
    }
}
