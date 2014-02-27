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
public class Login implements Serializable {
  private static final long serialVersionUID = -5498033954327208834L;

  @Id
  @GeneratedValue
  private Long id;
  private String email;
  private String passwordHash;
  @CreatedDate
  private Date createdAt;
  @LastModifiedDate
  private Date updatedAt;

  public Long getId() {
    return id;
  }
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }
  public String getPasswordHash() {
    return passwordHash;
  }
  public void setPasswordHash(String passwordHash) {
    this.passwordHash = passwordHash;
  }
  public Date getCreatedAt() {
    return createdAt;
  }
  public Date getUpdatedAt() {
    return updatedAt;
  }
}