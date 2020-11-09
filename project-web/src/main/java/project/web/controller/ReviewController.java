package project.web.controller;

import project.core.entity.Review;
import project.core.service.ReviewService;

import javax.inject.Named;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Named
@Path("/reviews")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ReviewController implements RestController{

    private ReviewService reviewService;


    public ReviewController(ReviewService reviewService) {
        this.reviewService = reviewService;
    }

    @POST
    @Path("")
    public void saveReview(Review dto){
        reviewService.save(dto);
    }

    @DELETE
    @Path("/{reviewId}")
    public void deleteReview(@PathParam("reviewId")long reviewId){
        reviewService.delete(reviewId);
    }

}