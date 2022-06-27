public class Email {
    public static void sendMail(List<Account> accList){
         for(account acc : accList){
               List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        list<contact> contacts = [select id, ownerid, Email, firstname from contact where Accountid =: acc.Id limit 1];
              for(contact con : contacts){
             Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
   
      // Step 2: Set list of people who should get the email
      List<String> sendTo = new List<String>();
      sendTo.add(con.email);
      mail.setToAddresses(sendTo);
   
      // Step 3: Set who the email is sent from
      mail.setReplyTo('Hani.verma@trantorinc.com');
      mail.setSenderDisplayName('Hani verma');
   
     
 
      // Step 4. Set email contents - you can use variables!
      mail.setSubject('Congratulations!!');
      String body = 'Dear ' + con.FirstName + 'your account' + acc.Name +'has been completed the final stage.';
     
      mail.setHtmlBody(body);
   
      // Step 5. Add your email to the master list
      mails.add(mail);
        Messaging.sendEmail(mails);
    }
}
}
}