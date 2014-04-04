package com.cargopacers.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.cargopacers.model.GoodsType;
import com.cargopacers.model.Order;
import com.cargopacers.repository.GoodsTypeRepository;
import com.cargopacers.repository.OrderRepository;
import com.cargopacers.repository.TruckModelRepository;

@Service
public class ShipperServiceImpl implements ShipperService{
  
  @Autowired 
  OrderRepository orderRepository;
  
  @Autowired 
  GoodsTypeRepository goodsTypeRepository;
  
  @Autowired
  TruckModelRepository truckModelRepository;
  
  
  public void getBookTruckFormModel(Model m){
    Order order = new Order();
    m.addAttribute("order", order);
    List<String> goodsTypeSpecificNameList = goodsTypeRepository.findAllSpecificName();
    m.addAttribute("goodsTypeSpecificNameList", goodsTypeSpecificNameList);
    List<String> insuranceTypeList = new ArrayList<String>();
    insuranceTypeList.add("yes");
    insuranceTypeList.add("no");
    m.addAttribute("insuranceTypeList", insuranceTypeList);
    List<String> genericTruckTypeList = truckModelRepository.findAllGenericTypes();
    m.addAttribute("genericTruckTypeList", genericTruckTypeList);
  }
  
  public void saveBookTruckForm(Order order){
    orderRepository.save(order);
  }

  @Override
  public void getBookTruckFromHome(Model m) {
    Order order = new Order();
    m.addAttribute("bookingdata", order);
    
  }
}