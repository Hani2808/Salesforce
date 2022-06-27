trigger duplicateAccName on Account (before insert,before update)
{
Map<string,Account> accMap = new Map<string,Account>();
set<string> accSet = new set<string>();
    for(Account acc : Trigger.new)
        accSet.add(acc.name);
    for(Account a : [select id,name from Account where name in : accSet])
        
        accMap.put(a.name,a);
    for(Account acc1 : trigger.new)
        
        {
        if(accMap.containskey(acc1.name))
        acc1.addError('Account name Already Exist!!');
        }
}