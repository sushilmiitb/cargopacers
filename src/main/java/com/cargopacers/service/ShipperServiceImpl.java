package com.cargopacers.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.cargopacers.model.Order;
import com.cargopacers.repository.OrderRepository;
import com.cargopacers.repository.TypesRepository;

@Service
public class ShipperServiceImpl implements ShipperService{
  
  @Autowired
  private TypesRepository typesRepository;
  
  @Autowired OrderRepository orderRepository;
  
  
  public void getBookTruckFormModel(Model m){
    Order order = new Order();
    m.addAttribute("order", order);
    List<String> goodsTypeList = typesRepository.findByTypeClass("goods");
    m.addAttribute("goodsType", goodsTypeList);
    m.addAttribute("good", goodsTypeList.get(0));
    List<String> insuranceTypeList = typesRepository.findByTypeClass("insurance");
    m.addAttribute("insuranceType", insuranceTypeList);
  }
  
  public void saveBookTruckForm(Order order){
    orderRepository.save(order);
  }
}