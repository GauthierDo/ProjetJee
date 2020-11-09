package project.web.dto;

import project.core.entity.Review;

import java.util.List;
import java.util.Set;

public class RecetteDTO {

    private long id;

    private String title;

    private String image;

    private List<String> chefs;

    private List<String> tags;

    private String language;

    private Set<Review> reviews;


    public long getId() {
        return id;
    }


    public void setId(final long idValue) {
        id = idValue;
    }


    public String getTitle() {
        return title;
    }


    public void setTitle(final String titleValue) {
        title = titleValue;
    }


    public String getImage() {
        return image;
    }


    public void setImage(final String imageValue) {
        image = imageValue;
    }


    public List<String> getChefs() {
        return chefs;
    }


    public void setChefs(final List<String> chefsValue) {
        chefs = chefsValue;
    }


    public List<String> getTags() {
        return tags;
    }


    public void setTags(final List<String> tagsValue) {
        tags = tagsValue;
    }


    public String getLanguage() {
        return language;
    }


    public void setLanguage(final String languageValue) {
        language = languageValue;
    }


    public Set<Review> getReviews() {
        return reviews;
    }


    public void setReviews(final Set<Review> reviewsValue) {
        reviews = reviewsValue;
    }
}
