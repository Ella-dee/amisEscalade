package com.elo.oc.entity;

import javax.persistence.*;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "sector")
@org.hibernate.annotations.NamedQueries({
        @org.hibernate.annotations.NamedQuery(name = "findSectorByName",
                query = "from Sector where name = :name"),
        @org.hibernate.annotations.NamedQuery(name = "findSectorByUserId",
                query = "from Sector where climb_user_fk = :userId"),
        @org.hibernate.annotations.NamedQuery(name = "findSectorBySpotId",
                query = "from Sector where spot_fk = :spotId")
})
public class Sector {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @NotEmpty
    @Column(name = "name", unique=true)
    private String name;

    @NotEmpty
    @Column(name = "info")
    private String info;

    @ManyToOne //plusieurs secteurs pour un seul user
    @JoinColumn(name = "climb_user_fk")
    private User user;

    @ManyToOne //plusieurs secteurs pour un seul spot
    @JoinColumn(name = "spot_fk")
    private Spot spot;

    public Sector() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Spot getSpot() {
        return spot;
    }

    public void setSpot(Spot spot) {
        this.spot = spot;
    }

    @Override
    public String toString() {
        return "Sector{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
