package com.cargopacers.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

  @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
  public String home() {
    return "home";
  }

  @RequestMapping(value = { "/aboutus" }, method = RequestMethod.GET)
  public String aboutUs() {
    return "aboutus";
  }

  @RequestMapping(value = { "/contactus" }, method = RequestMethod.GET)
  public String contactUs() {
    return "contactus";
  }

  @RequestMapping(value = { "/services" }, method = RequestMethod.GET)
  public String services() {
    return "services";
  }
  
  @RequestMapping(value = { "/register" }, method = RequestMethod.GET)
  public String register() {
    return "register";
  }

}
