package com.elimWorks.controller;

import com.elimWorks.dao.UserDao;
import com.elimWorks.pojo.Agency;
import com.elimWorks.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Collection;

@Controller
public class UserController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(value = "loginMethod",method = RequestMethod.POST)
    public String loginMethod(HttpServletRequest request, @RequestParam("account") String account,@RequestParam("password") String password){
        User user = userDao.loginMethod(account,password);

        if (user != null){

            HttpSession session = request.getSession();
            session.setAttribute("loginUser",user);

            if (user.getUserStatus().equals("Agency")){
                Agency agency = userDao.getAgencyById(user.getUserId());
                session.setAttribute("agency",agency);
                System.out.println("★[Elim] " + agency);
            }
            System.out.println("★[Elim] loginUser = " + user);
            System.out.println("★[Elim] 用户登录成功!");
            return "index";
        }else {
            System.out.println("★[Elim] 用户登录失败!");
            return "error_passwordError";
        }

    }

    @RequestMapping(value = "exitMethod")
    public String exitMethod(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        System.out.println("★[Elim]: 用户退出!");
        return "index";
    }

    @RequestMapping(value = "registerMethod",method = RequestMethod.POST)
    public String registerMethod(User user,String UserPasswordConfirm){
        Collection<User> checkUsers = userDao.registerCheckMethod(user);
        System.out.println("★[Elim]: checkUser =  " + checkUsers);

        if(UserPasswordConfirm.equals(user.getUserPassword())){
            if (checkUsers.isEmpty()){
                userDao.registerMethod(user);
                System.out.println("★[Elim]: 注册成功");
                System.out.println("★[Elim]: 用户信息 " + user);
                return "login";
            }else {
                System.out.println("★[Elim]: 注册失败，手机号或邮箱号已存在");
                return "error_registerUser";
            }
        }else {
            System.out.println("★[Elim]: 注册失败");
            System.out.println("★[Elim]: 用户第一次输入密码 " + user.getUserPassword());
            System.out.println("★[Elim]: 用户第二次输入密码 " + UserPasswordConfirm);
            return "error_password";
        }
    }

    @RequestMapping(value = "logoutMethod")
    public String logoutMethod(Integer userId){
        // 注销账户
        userDao.logoutMethod(userId);
        return "redirect:exitMethod";
    }

    @RequestMapping(value = "goToEditCustomer")
    public String goToEditCustomer(HttpServletRequest request,Integer userId){
        User editUser = userDao.getUserById(userId);
        request.setAttribute("editUser",editUser);

        return "editMessage_customer";
    }

    @RequestMapping(value = "editCustomerMessage",method = RequestMethod.POST)
    public String editCustomerMessage(User user){
        System.out.println("★[Elim]: 用户修改信息" + user);
        userDao.editUserMessageMethod(user);
        System.out.println("★[Elim]: 用户修改信息成功！");

        return "redirect:goToPersonalCustomer";
    }

    @RequestMapping(value = "editCustomerPassword",method = RequestMethod.POST)
    public String editCustomerMethod(User user,String EditPasswordConfirm){
        System.out.println("★[Elim]: 修改密码第一次输入 = " + user.getUserPassword());
        System.out.println("★[Elim]: 修改密码第二次输入 = " + EditPasswordConfirm);

        if (user.getUserPassword().equals(EditPasswordConfirm)){
            userDao.editUserPasswordMethod(user);
            System.out.println("★[Elim]: 密码修改成功");
            return "redirect:exitMethod";
        }else {
            System.out.println("★[Elim]: 密码修改失败");
            return "error_password";
        }
    }

}
