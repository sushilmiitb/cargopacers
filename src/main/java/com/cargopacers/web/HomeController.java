package com.cargopacers.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
  
  @RequestMapping(value = { "/track" }, method = RequestMethod.GET)
  public String tracking(@RequestParam("trackid")String trackId,ModelMap model){
    
    if(!trackId.equals("12"))
    {
      model.addAttribute("errormessage", "Invalid Tracking ID");
      return "forward:/home";
    }
    return "register";
  }

}
