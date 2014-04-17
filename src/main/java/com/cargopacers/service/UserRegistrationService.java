package com.cargopacers.service;

import java.util.List;

import org.springframework.ui.Model;

import com.cargopacers.model.UserRegistration;

public interface UserRegistrationService {
  public void getRegistrationDetailsFromModel(Model m);
  public void saveRegistrationDetails(UserRegistration userRegistration);
  public List<UserRegistration> getAllRegistrationDetails();
}