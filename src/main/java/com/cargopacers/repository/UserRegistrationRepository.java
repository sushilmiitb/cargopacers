package com.cargopacers.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.cargopacers.model.UserRegistration;

@Repository
@Transactional
public interface UserRegistrationRepository extends JpaRepository<UserRegistration, Long> {
}