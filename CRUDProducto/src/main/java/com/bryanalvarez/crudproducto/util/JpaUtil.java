
package com.bryanalvarez.crudproducto.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

/**
 *
 * @author USUARIO
 */
public class JpaUtil {
    private static final EntityManagerFactory emf = buildEntityManagerFactory();

    private static EntityManagerFactory buildEntityManagerFactory() {
      try{
          return Persistence.createEntityManagerFactory("DB_LaEstancia");
      }catch(Throwable ex){
          throw new ExceptionInInitializerError(ex);
      }  
    }
    
    public static EntityManager getEntityManager(){
        return emf.createEntityManager();
    }
    public static void close(){
        emf.close();
    }
}