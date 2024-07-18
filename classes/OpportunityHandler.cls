public class OpportunityHandler {
    
    // Method to calculate and update Opportunity amount based on related Opportunity Line Items
    public static void updateOpportunityAmount(List<OpportunityLineItem> lineItems) {
        Set<Id> oppIds = new Set<Id>();
        
        // Collecting Opportunity Ids from Opportunity Line Items
        for (OpportunityLineItem oli : lineItems) {
            oppIds.add(oli.OpportunityId);
        }
        
        // Querying Opportunities with related Line Items
        List<Opportunity> opportunities = [SELECT Id, (SELECT UnitPrice, Quantity FROM OpportunityLineItems) FROM Opportunity WHERE Id IN :oppIds];
        
        // Updating Opportunity amount based on Line Item details
        List<Opportunity> oppsToUpdate = new List<Opportunity>();
        for (Opportunity opp : opportunities) {
            Decimal totalAmount = 0;
            for (OpportunityLineItem oli : opp.OpportunityLineItems) {
                totalAmount += oli.UnitPrice * oli.Quantity;
            }
            opp.Amount = totalAmount;
            oppsToUpdate.add(opp);
        }
        
        // Performing bulk update of Opportunities
        update oppsToUpdate;
    }
    
    // Trigger handler method for before insert and before update events on Opportunity
    public static void handleOpportunityBeforeInsertUpdate(List<Opportunity> newOpportunities, Map<Id, Opportunity> oldMap) {
        for (Opportunity opp : newOpportunities) {
            // Example logic: setting a default stage if not provided
            if (opp.StageName == null) {
                opp.StageName = 'Prospecting';
            }
        }
    }
}