package com.cargopacers.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class RegistrationController {

  @RequestMapping(value = {"/register" }, method = RequestMethod.GET)
  public String registration() {
    return "register";
  }

}
