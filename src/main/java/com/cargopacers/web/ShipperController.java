package com.cargopacers.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ShipperController {
  
  @RequestMapping(value={"/shipper"}, method = RequestMethod.GET)
  public String shipper(){
    return "shipper";
  }
}
