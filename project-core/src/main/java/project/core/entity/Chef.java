package project.core.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;

// The @JsonIgnoreProperties annotation is mandatory in our case because it helps the JSON Serialization
// The @ManyToMany annotation is provided because it is not that easy ;)

@Entity
@JsonIgnoreProperties({ "recettes" })
public class Chef implements Comparable<Chef> {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String firstname;

    private String lastname;

    @ManyToMany(mappedBy = "chefs")
    private List<Recette> recettes;


    public Chef(final String firstname, final String lastname) {
        this.firstname = firstname;
        this.lastname = lastname;
    }

    public Chef() {
    }

    public Long getId() {
        return id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public List<Recette> getRecette() {
        return recettes;
    }

    public void setRecettes(List<Recette> recettes) {
        this.recettes = recettes;
    }

    @Override public int compareTo(final Chef o) {
        if (lastname.equals(o.lastname)) {
            return firstname.compareTo(o.firstname);
        } else {
            return lastname.compareTo(o.lastname);
        }
    }

    public String getFullname(){
        return firstname+" "+lastname;
    }
}
