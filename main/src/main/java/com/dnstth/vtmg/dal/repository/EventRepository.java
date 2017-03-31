package com.dnstth.vtmg.dal.repository;

import com.dnstth.vtmg.dal.dto.Event;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Denes_Toth
 */
public interface EventRepository extends JpaRepository<Event, Integer> {
}