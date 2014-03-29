package com.cargopacers.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.cargopacers.model.TruckModel;

public interface TruckModelRepository extends JpaRepository<TruckModel, Long> {
  @Query("select genericType from  TruckModel")
  public List<String> findAllGenericTypes();
}