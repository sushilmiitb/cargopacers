package com.cargopacers.login;

import javax.annotation.Nonnull;



/**
 * Login Attributes.
 * @author Prashant
 *
 */
public class Login {

  public Login(){}
  
  @Nonnull
  private String j_username;
  
  @Nonnull
  private String j_password;
 
  public String getj_password() {
  return j_password;
  }
 
  public void setj_password(String j_password) {
  this.j_password = j_password;
  }
 
  public String getj_username() {
  return j_username;
  }
 
  public void setj_username(String j_username) {
  this.j_username = j_username;
 
  }

}
