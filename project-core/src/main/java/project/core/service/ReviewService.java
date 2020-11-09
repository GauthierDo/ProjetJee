package project.core.service;


import project.core.dao.ReviewDAO;
import project.core.entity.Review;

import javax.inject.Named;
import javax.transaction.Transactional;

@Named
@Transactional
public class ReviewService {

    private ReviewDAO reviewDAO;

    public ReviewService(ReviewDAO reviewDAO) {
        this.reviewDAO = reviewDAO;
    }


    public void save(Review dto) {
        reviewDAO.save(dto);
    }

    public void delete(long reviewId) {
        reviewDAO.deleteById(reviewId);
    }
}