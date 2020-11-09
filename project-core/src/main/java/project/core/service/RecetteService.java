package project.core.service;

import project.core.dao.RecetteDAO;

import javax.inject.Named;
import javax.transaction.Transactional;
import project.core.entity.Recette;
import java.util.List;

@Named
@Transactional
public class RecetteService {

    private RecetteDAO recetteDAO;


    public RecetteService(RecetteDAO recetteDAO) {
        this.recetteDAO = recetteDAO;
    }

    public List<Recette> findAll(){
        return recetteDAO.findAll();
    }

    public Recette findRecetteDetails(long recetteId) {
        return recetteDAO.getOneWithChefsAndTagsAndReviews(recetteId);
    }
}