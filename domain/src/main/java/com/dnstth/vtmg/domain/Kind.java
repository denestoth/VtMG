package com.dnstth.vtmg.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Denes_Toth
 */
@Entity
public class Kind {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private int id;

    @Column
    private String details;

    @ManyToMany
    private List<Person> people;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public List<Person> getPeople() {
        return people;
    }

    public void setPeople(List<Person> people) {
        this.people = people;
    }
}
