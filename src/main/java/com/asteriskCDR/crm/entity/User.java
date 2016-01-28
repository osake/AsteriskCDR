package com.asteriskCDR.crm.entity;

import javax.jws.soap.SOAPBinding;

/**
 * Created by oregon on 28.01.2016.
 */
public class User {
    private String login ;
    private String passwrd;

    public User(String login, String passwrd) {
        this.login = login;
        this.passwrd = passwrd;
    }
    public User(){

    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPasswrd() {
        return passwrd;
    }

    public void setPasswrd(String passwrd) {
        this.passwrd = passwrd;
    }
}
