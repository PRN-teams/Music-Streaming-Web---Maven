/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.logging.Logger;

/**
 *
 * @author nvlon
 */
public class Bill {
    int billID;
    String username, date, phone, address, postalCode, city, country;
    float amount;
    String content, bank, fullname;

    public Bill() {
    }

    public Bill(int billID, String username, String date, String phone, String address, String postalCode, String city, String country, float amount, String content, String bank, String fullname) {
        this.billID = billID;
        this.username = username;
        this.date = date;
        this.phone = phone;
        this.address = address;
        this.postalCode = postalCode;
        this.city = city;
        this.country = country;
        this.amount = amount;
        this.content = content;
        this.bank = bank;
        this.fullname = fullname;
    }

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    @Override
    public String toString() {
        return "Bill{" + "billID=" + billID + ", username=" + username + ", date=" + date + ", phone=" + phone + ", address=" + address + ", postalCode=" + postalCode + ", city=" + city + ", country=" + country + ", amount=" + amount + ", content=" + content + ", bank=" + bank + '}';
    }
    
}
