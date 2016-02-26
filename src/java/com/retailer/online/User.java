/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.retailer.online;

/**
 *
 * @author Abdulla
 */
public class User {
    private String name;
    private String email;
    private String password;
    private int mobNumber;

    public User() {
        name = null;
        email = null;
        password = null;
        mobNumber = 0;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getMobNumber() {
        return mobNumber;
    }

    public void setMobNumber(int mobNumber) {
        this.mobNumber = mobNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   

   
    
    
}
