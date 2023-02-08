package com.elimWorks.dao;

import com.elimWorks.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;

public interface UserDao {

    public User loginMethod(@Param(value = "account") String account, @Param(value = "password") String password);

    public Collection<User> registerCheckMethod(User user);

    public void registerMethod(User user);

    public void logoutMethod(@Param(value = "userId") Integer userId);

    public Agency getAgencyById(@Param(value = "agencyUserId") Integer agencyUserId);

    public User getUserById(@Param(value = "userId") Integer userId);

    public void editUserMessageMethod(User user);

    public void editUserPasswordMethod(User user);
}
