@isTest
public class TestVerifyDate{
    static testMethod void testDate(){
        Date myDate = Date.newInstance(1960, 2, 17);
        Date newDate = mydate.addDays(2);
        date d= VerifyDate.CheckDates(myDate,newDate);
            //System.assertEquals(, d);
    }
    static testMethod void testDate1(){
        Date myDate1 = Date.newInstance(1960, 2, 17);
        Date newDate1 = mydate1.addDays(35);
        date d1= VerifyDate.CheckDates(myDate1,newDate1);
    }
    }