package com.cargopacers.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

/**
 * 
 * @author mukesh
 *
 */
@Entity
@Table(name="orders")
public class Order implements Serializable {
  private static final long serialVersionUID = 7548489633277523780L;
  
  @Id
  @GeneratedValue
  private Long id;
  @Embedded
  @AttributeOverrides( {
      @AttributeOverride(name="toName", column=@Column(name="fromAddressToName")),
      @AttributeOverride(name="address1", column=@Column(name="fromAddressAddress1")),
      @AttributeOverride(name="address2", column=@Column(name="fromAddressAddress2")),
      @AttributeOverride(name="landmark", column=@Column(name="fromAddressLandmark")),
      @AttributeOverride(name="city", column=@Column(name="fromAddressCity")),
      @AttributeOverride(name="postalCode", column=@Column(name="fromAddressPostalCode")),
      @AttributeOverride(name="stateGeoId", column=@Column(name="fromAddressStateGeoId")),
      @AttributeOverride(name="phoneNumber", column=@Column(name="fromAddressPhoneNumber"))
  })
  private OrderAddress fromAddress;
  @Embedded
  @AttributeOverrides( {
    @AttributeOverride(name="toName", column=@Column(name="toAddressToName")),
    @AttributeOverride(name="address1", column=@Column(name="toAddressAddress1")),
    @AttributeOverride(name="address2", column=@Column(name="toAddressAddress2")),
    @AttributeOverride(name="landmark", column=@Column(name="toAddressLandmark")),
    @AttributeOverride(name="city", column=@Column(name="toAddressCity")),
    @AttributeOverride(name="postalCode", column=@Column(name="toAddressPostalCode")),
    @AttributeOverride(name="stateGeoId", column=@Column(name="toAddressStateGeoId")),
    @AttributeOverride(name="phoneNumber", column=@Column(name="toAddressPhoneNumber"))
})
  private OrderAddress toAddress;
  private Truck.Type truckType;
  private GoodsType goodsType;
  private InsuranceType insuranceType;
  @ManyToOne
  @JoinColumn(name="truck_id")
  private Truck truck;
  @ManyToOne
  @JoinColumn(name="driver_id")
  private Person driver;
  @ManyToOne
  @JoinColumn(name="from_party_id")
  private Party fromParty;
  @ManyToOne
  @JoinColumn(name="to_party_id")
  private Party toParty;
  private Date pickupTime;
  private Date dropTime;
  
  @CreatedDate
  private Date createdAt;
  @LastModifiedDate
  private Date updatedAt;
  public OrderAddress getFromAddress() {
    return fromAddress;
  }
  public void setFromAddress(OrderAddress fromAddress) {
    this.fromAddress = fromAddress;
  }
  public OrderAddress getToAddress() {
    return toAddress;
  }
  public void setToAddress(OrderAddress toAddress) {
    this.toAddress = toAddress;
  }
  public Truck.Type getTruckType() {
    return truckType;
  }
  public void setTruckType(Truck.Type truckType) {
    this.truckType = truckType;
  }
  public GoodsType getGoodsType() {
    return goodsType;
  }
  public void setGoodsType(GoodsType goodsType) {
    this.goodsType = goodsType;
  }
  public InsuranceType getInsuranceType() {
    return insuranceType;
  }
  public void setInsuranceType(InsuranceType insuranceType) {
    this.insuranceType = insuranceType;
  }
  public Truck getTruck() {
    return truck;
  }
  public void setTruck(Truck truck) {
    this.truck = truck;
  }
  public Person getDriver() {
    return driver;
  }
  public void setDriver(Person driver) {
    this.driver = driver;
  }
  public Party getFromParty() {
    return fromParty;
  }
  public void setFromParty(Party fromParty) {
    this.fromParty = fromParty;
  }
  public Party getToParty() {
    return toParty;
  }
  public void setToParty(Party toParty) {
    this.toParty = toParty;
  }
  public Date getPickupTime() {
    return pickupTime;
  }
  public void setPickupTime(Date pickupTime) {
    this.pickupTime = pickupTime;
  }
  public Date getDropTime() {
    return dropTime;
  }
  public void setDropTime(Date dropTime) {
    this.dropTime = dropTime;
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
    result = prime * result + ((id == null) ? 0 : id.hashCode());
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
    Order other = (Order) obj;
    if (id == null) {
      if (other.id != null)
        return false;
    } else if (!id.equals(other.id))
      return false;
    return true;
  }
  
}
