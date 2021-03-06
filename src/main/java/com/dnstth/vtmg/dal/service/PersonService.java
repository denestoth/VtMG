package com.dnstth.vtmg.dal.service;

import com.dnstth.vtmg.dal.dto.Person;

import java.util.List;

/**
 * Created by Denes_Toth
 */
public interface PersonService {
    List<Person> findAll();

    void delete(Person gender);

    void add(Person gender);

    Person findOne(int id);

    void update(Person person);
}
