import java.util.Scanner;
public class BooleanDoubleChar {
    public static void main(String[] args) {

        Scanner leer = new Scanner(System.in);
        Scanner nnn = new Scanner(System.in);
        Boolean es = true;

        System.out.println("Ingresa tu edad");
        int edad= leer.nextInt();

        System.out.println("Ingresa tu nombre");
        String nombre = nnn.nextLine();

        System.out.println(nombre + " tiene " + edad + " es " + es);
    }
}

