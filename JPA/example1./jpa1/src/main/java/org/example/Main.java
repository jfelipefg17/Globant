package org.example;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Main {

  public static void main(String[] args) {
    System.out.println("Hello world!");
//    EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
//    EntityManager em = emf.createEntityManager();
    EntityManager em = Persistence.createEntityManagerFactory("Market").createEntityManager();
  }

}