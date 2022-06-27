public class Calculator1
{
    public Double number1{get;set;}
    public Double number2{get;set;}
    public string operator{get;set;}
    public Double result{get;set;}
    public void calculation()
    {
        if(operator.contains('+'))
            result=number1+number2;
        if(operator.contains('-'))
            result=number1-number2;
        if(operator.contains('*'))
            result=number1*number2;
        if(operator.contains('/'))
            result=number1/number2;
        if(operator.contains('%'))
            result=number1*number2/100;
        
    }
}