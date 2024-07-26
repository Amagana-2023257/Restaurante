package com.estancia.restaurante.service;

import com.estancia.restaurante.model.Gerente;
import com.estancia.restaurante.util.JpaUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import java.util.List;

/**
 * La clase GerenteService implementa la interfaz IGerenteService y proporciona
 * la lógica de negocio para la gestión de entidades Gerente.
 */
public class GerenteService implements IGerenteService {
    
    // EntityManager para interactuar con la base de datos
    private EntityManager em;

    /**
     * Constructor de la clase GerenteService. Inicializa el EntityManager.
     */
    public void GerenteService() {
        this.em = JpaUtil.getEntityManager();
    }

    /**
     * Método para crear un nuevo gerente en la base de datos.
     *
     * @param gerente La entidad Gerente que se va a persistir.
     */
    @Override
    public void crearGerente(Gerente gerente) {
        EntityTransaction transaction = em.getTransaction();
        try {
            // Iniciar la transacción
            transaction.begin();
            // Persistir la entidad Gerente
            em.persist(gerente);
            // Confirmar la transacción
            transaction.commit();
        } catch (Exception e) {
            // En caso de excepción, revertir la transacción si está activa
            if (transaction.isActive()) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    /**
     * Método para listar todos los gerentes de la base de datos.
     *
     * @return Una lista de entidades Gerente.
     */
    @Override
    public List<Gerente> listarGerente() {
        // Crear una consulta tipada para obtener todas las entidades Gerente
        TypedQuery<Gerente> query = em.createQuery("SELECT c FROM Gerente c", Gerente.class);
        // Retornar el resultado de la consulta
        return query.getResultList();
    }

    /**
     * Método para buscar un gerente por su código.
     *
     * @param codigoGerente El código del gerente que se va a buscar.
     * @return La entidad Gerente encontrada, o null si no se encuentra.
     */
    @Override
    public Gerente buscarGerente(int codigoGerente) {
        // Buscar y retornar la entidad Gerente por su código
        return em.find(Gerente.class, codigoGerente);
    }

    /**
     * Método para editar un gerente existente en la base de datos.
     *
     * @param gerente La entidad Gerente con los datos actualizados.
     */
    @Override
    public void editarGerente(Gerente gerente) {
        // Actualizar la entidad Gerente existente
        em.merge(gerente);
    }

    /**
     * Método para eliminar un gerente por su código.
     *
     * @param codigoGerente El código del gerente que se va a eliminar.
     */
    @Override
    public void eliminarGerente(int codigoGerente) {
        // Buscar el gerente por su código
        Gerente gerente = buscarGerente(codigoGerente);
        if (gerente != null) {
            // Eliminar la entidad Gerente si se encuentra
            em.remove(gerente);
        }
    }
}