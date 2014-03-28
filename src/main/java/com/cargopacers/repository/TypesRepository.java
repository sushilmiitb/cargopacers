package com.cargopacers.repository;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



import com.cargopacers.model.Types;

@Repository
@Transactional
public interface TypesRepository extends JpaRepository<Types, Long> {
  List<String> findByTypeClass(String typeType);
}