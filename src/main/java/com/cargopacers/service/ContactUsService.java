package com.cargopacers.service;

import org.springframework.ui.Model;

import com.cargopacers.model.ContactUs;

public interface ContactUsService {

  public void getContactUsFormModelDetails(Model m);

  public void save(ContactUs contactUs);

}
