public class calculatorHandler{
    
    
    public integer number1 {get;set;}
    public integer number2 {get;set;}
    public integer result {get;set;}   
    public void addition(){
        result = number1+number2;
        
    }
    public void subtraction(){
        result = number1-number2;
        
    }
    public void division(){
        result = number1/number2;
        
    }
    public void multiplication(){
        result = number1*number2;
        
        
    }
    
}