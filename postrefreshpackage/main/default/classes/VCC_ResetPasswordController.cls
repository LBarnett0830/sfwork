public with sharing class VCC_ResetPasswordController 
{
    private final static Integer MAX_RESULTS = 5;

    @AuraEnabled
    public static List<LookupSearchResult> search(String searchTerm, List<String> selectedIds) {
        // Prepare query parameters
        searchTerm += '*';

        // Execute search query
        List<List<SObject>> searchResults = [
            FIND :searchTerm
            IN ALL FIELDS
            RETURNING
		    User(Id, Name, Email, Username WHERE id NOT IN :selectedIds and (NOT Email  Like '%.invalid') )
            LIMIT :MAX_RESULTS
        ];

        // Prepare results
        List<LookupSearchResult> results = new List<LookupSearchResult>();

        // Extract Users & convert them into LookupSearchResult
        String userIcon = 'standard:user';
        User[] users = (List<User>) searchResults[0];
        for (User u : users) results.add(convertUserToResult(u));

        // Optionnaly sort all results on title
        results.sort();

        return results;
    }

    public static LookupSearchResult convertUserToResult(User userRecord)
    {
        return new LookupSearchResult(
            userRecord.Id, 
            'User', 
            'standard:user', 
            userRecord.Name, 
            userRecord.Email + ' • ' + userRecord.UserName);
        
    }

    @AuraEnabled
    public static string resetUserPassword(string userId){
        string response = 'Failed';
        if(string.isBlank(userId)) return response;

        try {
            System.resetPassword(userId, true);
            response = 'Success';
        } catch(Exception ex){
            system.debug('ERROR:' + ex.getMessage());
        }

        return response;
    }
}