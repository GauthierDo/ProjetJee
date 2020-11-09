package project.core.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;
// The @JsonIgnoreProperties annotation is mandatory in our case because it helps the JSON Serialization

@Entity
@JsonIgnoreProperties({"recettes"})
public class Tag implements Comparable<Tag> {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String name;

    @ManyToMany(mappedBy = "tags")
    private List<Recette> recettes;

    public Long getId() {
        return id;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Recette> getrecettes() {
        return recettes;
    }

    public void setrecettes(List<Recette> recettes) {
        this.recettes = recettes;
    }

    @Override
    public int compareTo(final Tag o) {
        return name.compareTo(o.name);
    }
}