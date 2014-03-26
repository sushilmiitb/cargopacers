package com.cargopacers.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cargopacers.model.Order;
import com.cargopacers.repository.OrderRepository;


@Controller
public class ShipperController {
  private OrderRepository orderRepository;
  
  @Autowired
  ShipperController(OrderRepository orderRepository){
    this.orderRepository = orderRepository;
  }
  
  @RequestMapping(value={"/shipper"}, method = RequestMethod.GET)
  public String shipper(){
    return "shipper";
  }
  
  @RequestMapping(value={"/shipper/bookTruck"}, method = RequestMethod.GET)
  public String bookTruck(Model  m){
    Order order = new Order();
    m.addAttribute("order", order);
    return "bookTruck";
  }
  
  @RequestMapping(value={"/shipper/bookTruck"}, method = RequestMethod.POST)
  public String bookTruck(@ModelAttribute Order order){
    orderRepository.save(order);
    return "home";
  }
}