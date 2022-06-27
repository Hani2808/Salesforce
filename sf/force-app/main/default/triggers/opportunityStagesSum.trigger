trigger opportunityStagesSum on Opportunity (after insert, after update) {

    List<Id> oppList = new List<Id>();
    List <Account> accountList= new List<Account>();
    Map<Account,List<Opportunity>> accOppList = new map <Account,List<Opportunity>>();
    public Decimal amountwon, amountlost, amountinprogress;
   
    for(Opportunity o : trigger.new){ 
            oppList.add(o.AccountId);
    }
    
    for(Account a : [SELECT Id, Sum_Of_Amount_Won__c, Sum_Of_Amount_Lost__c, Sum_Of_Amount_Inprogess__c,
                     (SELECT ID,Amount,StageName FROM Opportunities) from Account 
                     WHERE Id IN : oppList]) {
     
                accOppList.put(a,a.Opportunities);
                amountwon=0;
                amountlost=0;
                amountinprogress=0;
       
       for(Opportunity ooo : accOppList.get(a)) {
            if(ooo.StageName == 'Closed Won') 
                {
                amountwon= amountwon + ooo.Amount;
                }
            else if(ooo.StageName == 'Closed Lost') 
               {
               amountlost= amountlost + ooo.Amount;
               }
            else 
               {
               amountinprogress = amountinprogress +  ooo.Amount;
               }
        }
                         
        a.Sum_Of_Amount_won__c = amountwon;
        a.Sum_Of_Amount_Lost__c = amountlost;
        a.Sum_Of_Amount_Inprogess__c = amountinprogress;
       accountList.add(a);
    }      
    update accountList;
    }