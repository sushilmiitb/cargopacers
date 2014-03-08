package com.cargopacers.model;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

/**
 * 
 * @author mukesh
 *
 */
@Entity
@PrimaryKeyJoinColumn
public class Person extends Party {
  private static final long serialVersionUID = 7331861590248669955L;
  
  public static enum Role {
    SHIPPER, TRUCKER, SHIPPER_TRUCKER
  };
  private String firstName;
  private String lastName;
  private char gender;
  //private Role role;
  public String getFirstName() {
    return firstName;
  }
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }
  public String getLastName() {
    return lastName;
  }
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }
  public char getGender() {
    return gender;
  }
  public void setGender(char gender) {
    this.gender = gender;
  }
}
