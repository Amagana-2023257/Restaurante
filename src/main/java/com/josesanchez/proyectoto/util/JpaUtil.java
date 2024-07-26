package com.josesanchez.proyectoto.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

/**
 * Clase de utilidad para la gestión de la entidad JPA.
 * Proporciona métodos para obtener y cerrar el EntityManagerFactory.
 */
public class JpaUtil {

    // Instancia de EntityManagerFactory, inicializada al cargar la clase.
    private static final EntityManagerFactory emf = buildEntityManagerFactory();

    /**
     * Construye y configura el EntityManagerFactory.
     * Se llama automáticamente durante la inicialización de la clase.
     * 
     * @return El EntityManagerFactory configurado.
     */
    private static EntityManagerFactory buildEntityManagerFactory() {
        try {
            // Crea un EntityManagerFactory utilizando la unidad de persistencia definida en el archivo persistence.xml
            return Persistence.createEntityManagerFactory("DB_LaEstancia");
        } catch (Throwable ex) {
            // Lanza un error si ocurre un problema al crear el EntityManagerFactory
            throw new ExceptionInInitializerError(ex);
        }
    }

    /**
     * Obtiene una nueva instancia de EntityManager.
     * 
     * @return Una nueva instancia de EntityManager.
     */
    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    /**
     * Cierra el EntityManagerFactory.
     * Debe llamarse cuando se haya terminado de usar la fábrica de entidades.
     */
    public static void close() {
        emf.close();
    }
}
