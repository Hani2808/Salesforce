public class BankAccount {
    
    private Integer Accountno;
    private Integer Deposit;
    private Integer Withdraw;
    private String Accountholdername;
    private Integer Balance;
       
 public BankAccount(){       
		Accountno=987456321;
        Accountholdername = 'Account holder name';
        Deposit = 0;
        Withdraw = 0;
        Balance = 0;
    }
   
  public BankAccount(String accname,Integer acc,Integer dep,Integer wit, Integer bal){       
        Accountholdername = accname;
        Accountno = acc;
        Deposit = dep;
        Withdraw = wit;
        Balance = bal;       
    }
    
   public void setValue(String accname,Integer acc,Integer dep,Integer wit, Integer bal){
        Accountholdername = accname;
        Accountno = acc;
        Deposit = dep;
        Withdraw = wit;
        Balance = bal;
    }
    
    public integer Deposit(){
        integer depositAmt= Balance + Deposit;
        balance=depositAmt;
        return Balance;
    }
     public integer Withdrawl(){
        integer withdrawAmt= Balance - Withdraw;
        Balance = withdrawAmt;
        return Balance;
    }
      
     public void getValues(){
        System.debug('account holder name is '+  Accountholdername);
        System.debug('account no is '+  Accountno);
        System.debug('deposit amount is '+ Deposit);
        System.debug('withdraw amount is '+ Withdraw);
        System.debug('balance amount is '+  Balance);        
        
    }
}