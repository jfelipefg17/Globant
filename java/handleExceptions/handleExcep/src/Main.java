import services.StringException;
import services.mainService;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        mainService s1 = new mainService();
        Scanner read = new Scanner(System.in);
        // the code that is checking

        try {

            System.out.println("write the string you want to change tu a integer");
            String s = read.nextLine();

            s1.convertStringNumber(s);

            int n1 = Integer.parseInt(s);
            System.out.println("the number is " + n1);

            //see if this is the exact exception

        } catch ( StringException e) {
            System.out.println(e.getMessage());
            //see if this is the exception , the word exception is for all exceptions
        } catch (Exception a) {
            System.out.println(a.getMessage());
            // always run does matter if catch something or if it is good
        } finally {
            int n2 = 10;
            System.out.println("the default number is " + n2);

        }

//        // the code that is checking
//
//            try {
//                int n1 = Integer.parseInt("nothing");
//                System.out.println("the number is " + n1);
//
//                //see if this is the exact exception
//
//            } catch (NumberFormatException a) {
//                System.out.println("the date is not a number it was NumberFormatException");
//
//                //see if this is the exception , the word exception is for all exceptions
//            } catch (Exception a) {
//                System.out.println("the date is not a number it was Exception");
//
//                // always run does matter if catch something or if it is good
//            } finally {
//                int n2 = 10;
//                System.out.println("the default number is " + n2);
//
//            }


        }
}