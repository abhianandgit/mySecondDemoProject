public class StaticNonStaticContextExample {
    public static integer x=10;
    public integer y=20;
    public static void m1(){
        x=10;
        //y=20;
    }
    public void m2(){
        x=10;
        y=20;
    }
        

}