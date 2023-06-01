public class BoatController {
    public test2023arsh__Boat__c boat {get; set;}
    
    public BoatController(){
        boat = new test2023arsh__Boat__c();
    }
    
    public pageReference saveBoat(){
        try{
            insert boat;
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.CONFIRM, 'Boat created successfully.'));
        }catch(Exception ex){
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR, 'Error creating boat: '+ex.getMessage()));
        }
        return null;
    }
}