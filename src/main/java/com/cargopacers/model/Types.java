package com.cargopacers.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

@Entity
public class Types implements Serializable{
  @Id
  @GeneratedValue
  private Long id;
  private String typeClass;
  private String typeValue;
  public String getTypeClass() {
    return typeClass;
  }
  public void setTypeClass(String typeClass) {
    this.typeClass = typeClass;
  }
  public String getTypeValue() {
    return typeValue;
  }
  public void setTypeValue(String typeValue) {
    this.typeValue = typeValue;
  } 
}