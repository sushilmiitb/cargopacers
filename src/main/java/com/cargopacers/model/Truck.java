package com.cargopacers.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

/**
 * 
 * @author mukesh
 *
 */
@Entity
public class Truck implements Serializable {
  private static final long serialVersionUID = -4964348096061987796L;
  
  @Id
  @GeneratedValue
  private Long id;
  private Types genericType;
  private String makeCompany;
  private String model;
  private String registrationNumber;
  private Long lengthFeet;
  private Long heightFeet;
  private Long widthFeet;
  private String rcFileLocation;
  private String insuranceFileLocation;
  
  public String getRcFileLocation() {
    return rcFileLocation;
  }
  public void setRcFileLocation(String rcFileLocation) {
    this.rcFileLocation = rcFileLocation;
  }
  public String getInsuranceFileLocation() {
    return insuranceFileLocation;
  }
  public void setInsuranceFileLocation(String insuranceFileLocation) {
    this.insuranceFileLocation = insuranceFileLocation;
  }
  @CreatedDate
  private Date createdAt;
  @LastModifiedDate
  private Date updatedAt;
 
  public Types getGenericType() {
    return genericType;
  }
  public void setGenericType(Types genericType) {
    this.genericType = genericType;
  }
  public String getMakeCompany() {
    return makeCompany;
  }
  public void setMakeCompany(String makeCompany) {
    this.makeCompany = makeCompany;
  }
  public String getRegistrationNumber() {
    return registrationNumber;
  }
  public void setRegistrationNumber(String registrationNumber) {
    this.registrationNumber = registrationNumber;
  }
  public Long getLengthFeet() {
    return lengthFeet;
  }
  public void setLengthFeet(Long lengthFeet) {
    this.lengthFeet = lengthFeet;
  }
  public Long getHeightFeet() {
    return heightFeet;
  }
  public void setHeightFeet(Long heightFeet) {
    this.heightFeet = heightFeet;
  }
  public Long getWidthFeet() {
    return widthFeet;
  }
  public void setWidthFeet(Long widthFeet) {
    this.widthFeet = widthFeet;
  }
  public String getModel() {
    return model;
  }
  public void setModel(String model) {
    this.model = model;
  }
  
  public Long getId() {
    return id;
  }
  public Date getCreatedAt() {
    return createdAt;
  }
  public Date getUpdatedAt() {
    return updatedAt;
  }
  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((registrationNumber == null) ? 0 : registrationNumber.hashCode());
    return result;
  }
  @Override
  public boolean equals(Object obj) {
    if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
    Truck other = (Truck) obj;
    if (registrationNumber == null) {
      if (other.registrationNumber != null)
        return false;
    } else if (!registrationNumber.equals(other.registrationNumber))
      return false;
    return true;
  }
  
}
