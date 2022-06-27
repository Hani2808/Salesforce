trigger accountRatingtest on Account (after insert){
    list<Id> accIds = new list<Id>();
    list<Account> accounts = new list<account>();
    for(Account aList:trigger.new){
        accIds.add(aList.Id);
    }
    system.debug(accIds);
    for(account a:[select Id, Rating, NumberOfEmployees from account where Id IN :accIds]){		     
        if(a.NumberOfEmployees == 500){
            a.Rating='hot';
            accounts.add(a);
        }
        else if (a.NumberOfEmployees > 250 && a.NumberOfEmployees <= 500){
            System.debug('test');
            a.Rating='Warm';
            accounts.add(a);
        }    
        else if (a.NumberOfEmployees <=250){
            a.Rating='Cold';
            accounts.add(a);
        }
    }
     System.debug(accounts);
    update accounts;
}