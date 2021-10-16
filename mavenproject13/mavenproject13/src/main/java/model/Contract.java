/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author nvlon
 */
public class Contract {
    int contractID;
    String username, startDate, endDate;

    public Contract() {
    }

    public Contract(int contractID, String username, String startDate, String endDate) {
        this.contractID = contractID;
        this.username = username;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public int getContractID() {
        return contractID;
    }

    public void setContractID(int contractID) {
        this.contractID = contractID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    @Override
    public String toString() {
        return "Contract{" + "contractID=" + contractID + ", username=" + username + ", startDate=" + startDate + ", endDate=" + endDate + '}';
    }
    
}
