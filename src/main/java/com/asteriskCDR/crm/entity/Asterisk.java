package com.asteriskCDR.crm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by christian on 25.01.2016.
 */

@Entity
@Table(name = "cdr")
public class Asterisk {

    @Id
    @Column(name="id")
    @GeneratedValue
    private Integer id;

    @Column(name = "calldate")
    private String calldate;

    @Column(name = "clid")
    private String clid;

    @Column(name = "lastdata")
    private String lastdata;

    @Column(name = "disposition")
    private String disposition;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCalldate() {
        return calldate;
    }

    public void setCalldate(String calldate) {
        this.calldate = calldate;
    }

    public String getClid() {
        return clid;
    }

    public void setClid(String clid) {
        this.clid = clid;
    }

    public String getLastdata() {
        return lastdata;
    }

    public void setLastdata(String lastdata) {
        this.lastdata = lastdata;
    }

    public String getDisposition() {
        return disposition;
    }

    public void setDisposition(String disposition) {
        this.disposition = disposition;
    }
}
