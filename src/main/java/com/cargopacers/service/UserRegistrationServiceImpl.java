package com.cargopacers.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.cargopacers.model.UserRegistration;
import com.cargopacers.repository.UserRegistrationRepository;

@Service
public class UserRegistrationServiceImpl implements UserRegistrationService {
  
  @Autowired
  UserRegistrationRepository userRegistartionRepository;

  @Override
  public void getRegistrationDetailsFromModel(Model m) {
    UserRegistration userregistration = new UserRegistration();
    m.addAttribute("userregistration" , userregistration);
    
  }

  @Override
  public void saveRegistrationDetails(UserRegistration userregistration) {
    
    userRegistartionRepository.save(userregistration);
  }

  @Override
  public List<UserRegistration> getAllRegistrationDetails() {
    
    return userRegistartionRepository.findAll();
  }
}
