public class primeNumberCheck {
public integer i;
    public void m1(integer j){
        for(i=2;i<j-1;i++){
            //Integer x = math.mod(j,i);
                if ( math.mod(j,i)==0){
                    system.debug(+j+ 'is not a prime no');
                }
            else{
                system.debug(+j + 'is a prime no');
            }
        }
    }
}