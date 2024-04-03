public class OpportunityHandler {
    public static void createOpportunity(String oppName, Date closeDate, Decimal amount) {
        Opportunity newOpp = new Opportunity(Name = oppName, CloseDate = closeDate, Amount = amount);
        insert newOpp;
    }

    public static void updateOpportunity(Opportunity oppToUpdate) {
        update oppToUpdate;
    }

    public static void deleteOpportunity(Opportunity oppToDelete) {
        delete oppToDelete;
    }
}