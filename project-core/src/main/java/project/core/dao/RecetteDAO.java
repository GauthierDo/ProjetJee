package project.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import project.core.entity.Recette;


public interface RecetteDAO extends JpaRepository<Recette,Long> {


    @Query("SELECT DISTINCT b FROM Recette b LEFT JOIN FETCH b.chefs LEFT JOIN FETCH b.tags LEFT JOIN FETCH b.reviews WHERE b.id=:id")
    Recette getOneWithChefsAndTagsAndReviews(@Param("id") long recetteId);
}