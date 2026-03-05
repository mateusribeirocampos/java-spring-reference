package com.iSchool.entities;

import jakarta.persistence.*;

import java.util.*;

@Entity
@Table(name = "tb_user")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(unique = true)
    private String email;
    private String password;

    @ManyToMany
    @JoinTable(name = "tb_user_role",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles = new HashSet<>();

    @OneToMany(mappedBy = "user")
    private List<Notification> notifications = new ArrayList<>();

    @OneToMany(mappedBy = "author")
    private List<Topic> userTopicOwner = new ArrayList<>();

    @ManyToMany(mappedBy = "likes")
    private List<Topic> likes = new ArrayList<>();

    @ManyToMany
    @JoinTable(name = "tb_user_offer",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "offer_id"))
    private List<Offer> offers = new ArrayList<>();

    @ManyToMany
    @JoinTable(name = "tb_user_reply",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "reply_id"))
    private List<Reply> userWhoReplied = new ArrayList<>();

    @OneToMany(mappedBy = "author")
    private List<Reply> userReplyOwner = new ArrayList<>();

    @ManyToMany(mappedBy = "likes")
    private List<Reply> replyLikes = new ArrayList<>();

    public User() {
    }

    public User(Long id, String firstName, String lastName, String email, String password, Set<Role> roles) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.roles = roles;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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
        this.password = password;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public void addRole(Role role) {
        roles.add(role);
    }

    public boolean hasRole(String roleName) {
        for (Role role : roles) {
            if (role.getAuthority().equals(roleName)) {
                return true;
            }
        }
        return false;
    }

    public List<Notification> getNotifications() {
        return notifications;
    }

    public void setNotifications(List<Notification> notifications) {
        this.notifications = notifications;
    }

    public List<Topic> getUserTopicOwner() {
        return userTopicOwner;
    }

    public void setUserTopicOwner(List<Topic> userTopicOwner) {
        this.userTopicOwner = userTopicOwner;
    }

    public List<Topic> getLikes() {
        return likes;
    }

    public void setLikes(List<Topic> likes) {
        this.likes = likes;
    }

    public List<Offer> getOffers() {
        return offers;
    }

    public void setOffers(List<Offer> offers) {
        this.offers = offers;
    }

    public List<Reply> getUserWhoReplied() {
        return userWhoReplied;
    }

    public void setUserWhoReplied(List<Reply> userWhoReplied) {
        this.userWhoReplied = userWhoReplied;
    }

    public List<Reply> getUserReplyOwner() {
        return userReplyOwner;
    }

    public void setUserReplyOwner(List<Reply> userReplyOwner) {
        this.userReplyOwner = userReplyOwner;
    }

    public List<Reply> getReplyLikes() {
        return replyLikes;
    }

    public void setReplyLikes(List<Reply> replyLikes) {
        this.replyLikes = replyLikes;
    }

    @Override
    public boolean equals(Object o) {
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(id, user.id);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(id);
    }
}