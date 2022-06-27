trigger accountRating on Account (before insert, before update,after insert, after update) {

    If(trigger.isBefore)
    {
        
        If(trigger.isInsert) 
        {
            accountRatingHandler.beforeInsertMd(trigger.new);
        }
        If(trigger.isUpdate) 
        {
            accountRatingHandler.beforeUpdateMd(trigger.new, trigger.old);
        }
    }
    If(trigger.isAfter)
    {
      If(trigger.isInsert) 
        {
            accountRatingHandler.afterInsertMd();
        }
        If(trigger.isUpdate) 
        {
            accountRatingHandler.afterUpdateMd();
        }  
        
    }
}