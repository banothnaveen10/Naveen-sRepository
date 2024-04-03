public class CaseHandler {
    public static void createCase(String subject, String description, String status) {
        Case newCase = new Case(Subject = subject, Description = description, Status = status);
        insert newCase;
    }

    public static void updateCase(Case caseToUpdate) {
        update caseToUpdate;
    }

    public static void deleteCase(Case caseToDelete) {
        delete caseToDelete;
    }
}