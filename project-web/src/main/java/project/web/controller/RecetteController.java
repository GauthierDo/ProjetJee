package project.web.controller;

import project.core.entity.Chef;
import project.core.entity.Recette;
import project.core.entity.Tag;
import project.core.service.RecetteService;
import project.web.dto.RecetteDTO;

import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.Map;
import java.util.stream.Collectors;

@Named
@Path("/recettes")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class RecetteController implements RestController{

    private RecetteService recetteService;


    public RecetteController(RecetteService recetteService) {
        this.recetteService = recetteService;
    }

    @GET
    @Path("")
    public Map<Long,String> findAllrecettes(){
        return recetteService.findAll().stream().collect(Collectors.toMap(Recette::getId, Recette::getTitle));
    }


    @GET
    @Path("/{recetteId}")
    public RecetteDTO findRecetteDetails(@PathParam("recetteId") long recetteId){
        Recette recette = recetteService.findRecetteDetails(recetteId);
            RecetteDTO recetteDTO = new RecetteDTO();
        recetteDTO.setId(recetteId);
        recetteDTO.setTitle(recette.getTitle());
        recetteDTO.setImage(recette.getImage());
        recetteDTO.setLanguage(recette.getLanguage().name());
        recetteDTO.setReviews(recette.getReviews());
        recetteDTO.setChefs(recette.getChefs().stream().map(Chef::getFullname).collect(Collectors.toList()));
        recetteDTO.setTags(recette.getTags().stream().map(Tag::getName).collect(Collectors.toList()));
        return recetteDTO;
    }

}