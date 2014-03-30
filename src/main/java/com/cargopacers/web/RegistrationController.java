package com.cargopacers.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cargopacers.model.UserRegistration;
import com.cargopacers.service.UserRegistrationService;

@Controller
public class RegistrationController {

  @Autowired
  UserRegistrationService userRegistrationService;

  @RequestMapping(value = { "/register" }, method = RequestMethod.GET)
  public String registration(Model m) {
    userRegistrationService.getRegistrationDetailsFromModel(m);
    return "register";
  }

  @RequestMapping(value = { "/success" },method = RequestMethod.POST)
  public String saveRegistrationData(@ModelAttribute UserRegistration userregistration) {
    System.out.println("I am in Post methode"+userregistration.getFirstname()+"isremember values is"+userregistration.getIsrememberme()+"user password"+userregistration.getPassword());
    userRegistrationService.saveRegistrationDetails(userregistration);
    return "register";
  }

}
