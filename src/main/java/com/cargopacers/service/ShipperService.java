package com.cargopacers.service;

import org.springframework.ui.Model;

import com.cargopacers.model.Order;

public interface ShipperService {
  public void getBookTruckFromHome(Model m);
  public void getBookTruckFormModel(Model m);
  public void saveBookTruckForm(Order order);
}
