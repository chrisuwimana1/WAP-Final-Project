/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package task.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author celem
 */
@Entity
@Table(name = "TEAM")


public class Team implements Serializable {

    

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name ="ID")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "NAME")
    private String name;
    @Size(max = 45)
    @Column(name = "DESCRIPTION")
    private String description;

    @Transient
    private List<ApplicationUser> teamMembers;

    public Team() {
        this.teamMembers = new ArrayList<>();
    }

    public Team(Integer id) {

        this.id = id;
        this.teamMembers = new ArrayList<>();

    }

    public Team(Integer id, String name) {
        this.id = id;
        this.name = name;
        this.teamMembers = new ArrayList<>();
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<ApplicationUser> getTeamMembers() {
        return teamMembers;
    }

    public void setTeamMembers(List<ApplicationUser> teamMembers) {
        this.teamMembers = teamMembers;
    }

    public void addMember(ApplicationUser member){
        teamMembers.add(member);
    }

    public void removeMember(ApplicationUser member){
        teamMembers.remove(member);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Team)) {
            return false;
        }
        Team other = (Team) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "taskmngt.model.Team[ id=" + id + " ]";
    }
    
}
