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
@Table(name = "datatable")
public class Asterisk {

    @Id
    @Column(name="id")
    @GeneratedValue
    private Integer id;

    @Column(name = "namevalue")
    private String clid;

    @Column(name = "qwecount")
    private int disposition;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getClid() {
        return clid;
    }

    public void setClid(String clid) {
        this.clid = clid;
    }

    public int getDisposition() {
        return disposition;
    }

    public void setDisposition(int disposition) {
        this.disposition = disposition;
    }
}
