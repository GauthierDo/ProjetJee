package project.core.entity;

import javax.persistence.*;
import java.util.Set;
// The @ManyToMany annotation is provided because it is not that easy ;)
// Another @ManyToMany annotation is needed !
// Hint : https://www.baeldung.com/jpa-many-to-many
// Hint 2 : https://tomee.apache.org/examples-trunk/jpa-enumerated/

@Entity
public class Recette implements Comparable<Recette> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String title;

    @Enumerated(EnumType.STRING)
    private Language language;

    @ManyToMany
    @JoinTable(
            name = "recette_chef",
            joinColumns = @JoinColumn(name = "recette_id"),
            inverseJoinColumns = @JoinColumn(name = "chef_id"))
    private Set<Chef> chefs;

    private String image;

    private String description;

    private String ingredient;

    @ManyToMany
    @JoinTable(
            name = "recette_tag",
            joinColumns = @JoinColumn(name = "recette_id"),
            inverseJoinColumns = @JoinColumn(name = "tag_id"))
    private Set<Tag> tags;

    @OneToMany(mappedBy = "recette")
    private Set<Review> reviews;

    public String getIngredient() {
        return ingredient;
    }

    public void setIngredient(String ingredient) {
        this.ingredient = ingredient;
    }

    public Long getId() {
        return id;
    }

    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
    }

    public Set<Chef> getChefs() {
        return chefs;
    }

    public void setChefs(Set<Chef> chefs) {
        this.chefs = chefs;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Set<Tag> getTags() {
        return tags;
    }

    public void setTags(Set<Tag> tags) {
        this.tags = tags;
    }

    public Set<Review> getReviews() {
        return reviews;
    }

    public void setReviews(Set<Review> reviews) {
        this.reviews = reviews;
    }

    @Override public int compareTo(final Recette o) {
        return title.compareTo(o.title);
    }

}
