/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.javierapen.webapp.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

/*
La clase JpaUtil proporciona utilidades para gestionar la creación y el cierre
de instancias de EntityManager y EntityManagerFactory para interactuar 
con la base de datos utilizando JPA
 */
public class JpaUtil {

    private static final EntityManagerFactory emf = buildEntityManagerFactory();

    /*
    Crea e inicializa una instancia de EntityManagerFactory utilizando la 
    unidad de persistencia definida en persistence.xml.
    Devuelve una instancia de EntityManagerFactory.
    En caso de error, imprime la pila de excepciones y lanza ExceptionInInitializerError
     */
    private static EntityManagerFactory buildEntityManagerFactory() {
        try {
            return Persistence.createEntityManagerFactory("DB_LaEstancia");
        } catch (Throwable ex) {
            ex.printStackTrace();
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    //Crea y devuelve una nueva instancia de EntityManager a partir de la fábrica de gestores de entidades 
    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    //Cierra la instancia de EntityManagerFactory para liberar los recursos
    public static void close() {
        emf.close();
    }
}
