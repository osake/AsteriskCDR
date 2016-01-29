package com.asteriskCDR.crm.entity;
import javax.persistence.*;
/**
 * Created by oregon on 28.01.2016.
 */
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue
    private Integer id;

    @Column(name = "user_name")
    private String login;

    @Column(name = "password")
    private String password;


    @OneToOne(cascade=CascadeType.ALL)
    @JoinTable(name="users_roles",
            joinColumns = {@JoinColumn(name="user_id", referencedColumnName="id")},
            inverseJoinColumns = {@JoinColumn(name="role_id", referencedColumnName="id")}
    )

    private Role role;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String passwrd) {
        this.password = passwrd;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
