import entities.Dog;
import service.ServiceDog;

import java.util.*;

public class Main {



    public static void main(String[] args) {
        Dog d1 = new Dog("copper",10);
        Dog d2 = new Dog("greta",3);

        ServiceDog s1 = new ServiceDog();

        // Array
        ArrayList<Dog> arrayD = new ArrayList<>();
            arrayD.add(d1);
            arrayD.add(d2);

        for (Dog var : arrayD) {
            System.out.println(var);
        }

        System.out.println("////////////////////////////");

        arrayD.sort(ServiceDog.comp);

        for (Dog var : arrayD) {
            System.out.println(var);
        }

        System.out.println("/////////////////////////////");
        
        // set
        HashSet<Dog> setD = new HashSet<>();
        setD.add(d1);
        setD.add(d2);
        ArrayList<Dog> listD = new ArrayList<>(setD);

        for (Dog var : listD) {
            System.out.println(var);
        }

        System.out.println("/////////////////////////////");

        listD.sort(ServiceDog.comp);

        for (Dog var : listD) {
            System.out.println(var);
        }

        System.out.println("/////////////////////////////");


        // treeSet

        //TreeSet<Dog> treeSD = new TreeSet<>(Dog.comp);
        //Dog dog = new Dog();
        //treeSD.add(dog);

        System.out.println("/////////////////////////////");

        // maps
        HashMap<Integer, Dog> map = new HashMap<>();
        map.put(1,d1);
        map.put(2,d2);
        ArrayList<Dog> dogs = new ArrayList<>(map.values());

        for (Dog var : dogs) {
            System.out.println(var);
        }

        System.out.println("/////////////////////////////");

        dogs.sort(ServiceDog.comp);

        for (Dog var : dogs) {
            System.out.println(var);
        }

    }

}