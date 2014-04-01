package com.cargopacers.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cargopacers.model.ContactUs;
import com.cargopacers.model.UserRegistration;

@Repository
@Transactional
public interface ContactUsRepository extends JpaRepository<ContactUs, Long> {
}