package com.codeup.adlister.models;

import com.codeup.adlister.util.Password;

import java.io.Serializable;

public class User implements Serializable {
    private long id;
    private String username;
    private String email;
    private String password;
    private String phoneNumber;
    private String first_name;
    private String last_name;
    private boolean isAdmin;

    public User() {}

    public User(long id, String username, String email, String password, String phoneNumber,String first_name,String last_name, boolean isAdmin) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.first_name= first_name;
        this.last_name = last_name;
        this.isAdmin = isAdmin;
    }

    public User(String username, String email, String password, String phoneNumber, long id) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.id = id;
    }

    public User(String username, String email, String password, String phoneNumber, boolean isAdmin) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.isAdmin = isAdmin;
    }

    public User(String username, String email, String phoneNumber, String password) {
        this.username = username;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.password = password;
    }

    public User(String username, String email, String password) {
        this.username = username;
        this.email = email;
        setPassword(password);
    }

    public User(long id, String username, String email, String password,String first_name,String last_name) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.first_name= first_name;
        this.last_name=last_name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean admin) {
        isAdmin = admin;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = Password.hash(password);
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }
}
