package com.cargopacers.service;

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
    
    System.out.println("In UserRegistrationServiceImpl " +""+ userregistration.getIsrememberme());
    userRegistartionRepository.save(userregistration);
    
  }
}
