Public class StringArrayTest{
    Public static List<String> generateStringArray(Integer n){
        List<String> Lstring =new List<String>();
        for(Integer i=0; i<n; i++) {
            Lstring.add('Test ' + i);
            System.debug(Lstring[i]);
        }
     return Lstring;
    }
}