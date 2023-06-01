@isTest
public class BoatControllerTest {

    @isTest
    static void createBoatTest(){
        test2023arsh__Boat__c boat = new test2023arsh__Boat__c();
        boat.Name = 'Test Boat';
        boat.test2023arsh__Buy_Date__c = Date.newInstance(2023, 04, 13);
        insert boat;
        
        BoatController controller = new BoatController();
        PageReference pageRef = controller.saveBoat();
        System.assertEquals(true, pageRef == null);
        test2023arsh__Boat__c insertedBoat = [SELECT Id, Name, test2023arsh__Buy_Date__c from test2023arsh__Boat__c WHERE Id =:boat.Id];
        System.assertEquals('Test Boat', insertedBoat.Name);
    }
}