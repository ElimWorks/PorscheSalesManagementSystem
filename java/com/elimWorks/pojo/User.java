package com.elimWorks.pojo;

public class User {

    private Integer userId;
    private String userFirstName;
    private String userLastName;
    private String userPhone;
    private String userEmail;
    private String userPassword;
    private String userGender;
    private String userStatus;
    private Integer userExist;

    public User() {
    }

    public User(Integer userId, String userFirstName, String userLastName, String userPhone, String userEmail, String userPassword, String userGender, String userStatus, Integer userExist) {
        this.userId = userId;
        this.userFirstName = userFirstName;
        this.userLastName = userLastName;
        this.userPhone = userPhone;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userGender = userGender;
        this.userStatus = userStatus;
        this.userExist = userExist;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserFirstName() {
        return userFirstName;
    }

    public void setUserFirstName(String userFirstName) {
        this.userFirstName = userFirstName;
    }

    public String getUserLastName() {
        return userLastName;
    }

    public void setUserLastName(String userLastName) {
        this.userLastName = userLastName;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserGender() {
        return userGender;
    }

    public void setUserGender(String userGender) {
        this.userGender = userGender;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }

    public Integer getUserExist() {
        return userExist;
    }

    public void setUserExist(Integer userExist) {
        this.userExist = userExist;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userFirstName='" + userFirstName + '\'' +
                ", userLastName='" + userLastName + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", userGender='" + userGender + '\'' +
                ", userStatus='" + userStatus + '\'' +
                ", userExist=" + userExist +
                '}';
    }
}
