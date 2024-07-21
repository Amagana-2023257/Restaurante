
package com.josesanchez.proyectoto.service;

import com.josesanchez.proyectoto.model.Gerente;
import java.util.List;


public interface IGerenteService {
    public void crearGerente(Gerente gerente);
    
    public List<Gerente> listarGerente();
    
    public Gerente buscarGerente(int codigoGerente);
    
    public void editarGerente(Gerente codigoGerente);
    
    public void eliminarGerente(int codigoGerente);
}

