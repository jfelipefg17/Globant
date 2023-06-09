package basicJava.extraExcercises;

import java.util.Scanner;

/**Perform a program that completes a vector with the first N numbers of the
 * Fibonacci sequence. Remember that the Fibonacci succession is the
 * succession of the following numbers:

 * 1, 1, 2, 3, 5, 8, 13, 21, 34, ...

 * Where each of the numbers is calculated by adding the two above to it.
 * For example:

 * The sequence of the number 2 is calculated by adding (1+1)

 * Similarly, the sequence of the number 3 is (1+2),

 * and the sequence of 5is (2+3),

 * and so on...

 * The Fibonacci sequence can be formalized according to the following
 * formula:

 * Fibonaccin = Fibonaccin-1 + Fibonaccin-2 for all n>1
 * Fibonaccin = 1for all n<=1

 * Therefore, if we want to calculate the term "n" we must write a function
 * that receives as parameter the value of "n" and calculate the series to
 * that value.

 * */
public class Fibonacci {
    public static void main(String[] args) {
        Scanner num = new Scanner(System.in);

        System.out.println("write a number");
        int n = num.nextInt();

        System.out.println(n + "! = " + fibo(n) );
        System.out.println("");
        System.out.print(n + "! = ");

        for ( int i = 0; i < n; i++ ){
            System.out.print(fibo(i) + " + ");
        }
    }

    public static int fibo(int num){
        if(num <= 1 ) {
            return num;
        }else
            return (fibo(num - 1) + fibo(num - 2));
    }
}
