package com.example.spring_seatreservation.Bean;


public class MyUser {
    long uid;
    String username;
    String password;
    long number;
    long phone;

    public long getNumber() {
        return number;
    }

    public MyUser setNumber(long number) {
        this.number = number;
        return this;
    }

    public MyUser setPhone(long phone) {
        this.phone = phone;
        return this;
    }

    int type;

    public int getType() {
        return type;
    }

    public MyUser setType(int type) {
        this.type = type;
        return this;
    }


    public MyUser(long uid, String username, String password,long phone) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.phone = phone;
    }

    public long getUid() {
        return uid;
    }

    public MyUser setUid(long uid) {
        this.uid = uid;
        return this;
    }

    public String getUsername() {
        return username;
    }

    public MyUser setUsername(String username) {
        this.username = username;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public MyUser setPassword(String password) {
        this.password = password;
        return this;
    }
}
