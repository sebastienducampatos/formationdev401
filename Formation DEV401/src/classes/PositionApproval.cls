public class PositionApproval {
    // Author: Mike Dannenfeldt, Etherios
    
    static final Map<String,Position_Approval_Matrix__c> APPROVAL_MAP_CONST;
    
    static {
        APPROVAL_MAP_CONST = getPositionApprovalMap();
    }
    
    private static Map<String,Position_Approval_Matrix__c> getPositionApprovalMap(){
        // build a Map from Department --> Approval Matrix record
        Map<String,Position_Approval_Matrix__c> results = new Map<String,Position_Approval_Matrix__c>();
        List<Position_Approval_Matrix__c> records = [select id,name,department__c,approver_1__c,approver_2__c,approver_3__c from Position_Approval_Matrix__c];
        for(Position_Approval_Matrix__c record : records){
            if (!results.containsKey(record.department__c)) results.put(record.department__c, record);
        }
        return results;
    }
    
    public static void setPositionApprovers(Position__c[] positions){
        for (Position__c p:positions){
            if (p.Department__c != null) {
                if (APPROVAL_MAP_CONST.containsKey(p.Department__c)){
                    p.approver_1__c = APPROVAL_MAP_CONST.get(p.Department__c).approver_1__c;
                    p.approver_2__c = APPROVAL_MAP_CONST.get(p.Department__c).approver_2__c;
                    p.approver_3__c = APPROVAL_MAP_CONST.get(p.Department__c).approver_3__c;
                } else {
                    p.approver_1__c = null;
                    p.approver_2__c = null;
                    p.approver_3__c = null;
                }
            }
        }
    }
}