public with sharing class EstimatesController {

    @AuraEnabled(cacheable=true)
    public static List<Estimate__c> getEstimates() {
        return [SELECT CreatedById, CreatedDate, Id, IsDeleted, LastActivityDate, LastModifiedById, LastModifiedDate, Name, Project__c, SystemModstamp
        FROM TL_Est_Estimate__c];
    }
}