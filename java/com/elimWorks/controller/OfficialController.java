package com.elimWorks.controller;

import com.elimWorks.dao.AutoDao;
import com.elimWorks.dao.CommonDao;
import com.elimWorks.dao.OfficialDao;
import com.elimWorks.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

@Controller
public class OfficialController {

    @Autowired
    private OfficialDao officialDao;
    @Autowired
    private AutoDao autoDao;
    @Autowired
    private CommonDao commonDao;

    @RequestMapping(value = "goToManagenmentAdministrator")
    public String goToManagenmentAdministrator(HttpServletRequest request){
        Collection<Agency> agenciesForNoApproval = officialDao.getAllAgencyForNoApproval();
        System.out.println("★[Elim] agenciesForNoApproval =" + agenciesForNoApproval);
        request.setAttribute("agenciesForNoApproval",agenciesForNoApproval);

        Collection<Order> ordersNeedTransmit = officialDao.getAllOrderNeedTransmit();
        System.out.println("★[Elim] ordersNeedTransmit =" + ordersNeedTransmit);
        request.setAttribute("ordersNeedTransmit",ordersNeedTransmit);

        return "management_administrator";
    }

    @RequestMapping(value = "goToManagenmentAdministratorAuto")
    public String goToManagenmentAdministratorAuto(HttpServletRequest request){

        Collection<Auto> offcialAutos_718 = autoDao.getModelsAllById(1);
        request.setAttribute("offcialAutos_718",offcialAutos_718);
        Collection<Auto> offcialAutos_911 = autoDao.getModelsAllById(2);
        request.setAttribute("offcialAutos_911",offcialAutos_911);
        Collection<Auto> offcialAutos_Taycan = autoDao.getModelsAllById(3);
        request.setAttribute("offcialAutos_Taycan",offcialAutos_Taycan);
        Collection<Auto> offcialAutos_Panamera = autoDao.getModelsAllById(4);
        request.setAttribute("offcialAutos_Panamera",offcialAutos_Panamera);
        Collection<Auto> offcialAutos_Macan = autoDao.getModelsAllById(5);
        request.setAttribute("offcialAutos_Macan",offcialAutos_Macan);
        Collection<Auto> offcialAutos_Cayenne = autoDao.getModelsAllById(6);
        request.setAttribute("offcialAutos_Cayenne",offcialAutos_Cayenne);


        return "management_administrator_auto";
    }

    @RequestMapping(value = "goToManagenmentAdministratorUser")
    public String goToManagenmentAdministratorUser(HttpServletRequest request){

        return "management_administrator_user";
    }

    @RequestMapping(value = "goToManagenmentAdministratorPart")
    public String goToManagenmentAdministratorPart(HttpServletRequest request){

        return "management_administrator_part";
    }


    @RequestMapping(value = "gotoRegisterAuto")
    public String gotoRegisterAuto(HttpServletRequest request){
        Collection<Auto_modelType> auto_modelTypes = autoDao.getAllModelType();
        request.setAttribute("auto_modelTypes",auto_modelTypes);
        Collection<Auto_energyType> auto_energyTypes = autoDao.getAllEnergyType();
        request.setAttribute("auto_energyTypes",auto_energyTypes);
        Collection<Auto_bodyDesignType> auto_bodyDesignTypes = autoDao.getAllBodyDesignType();
        request.setAttribute("auto_bodyDesignTypes",auto_bodyDesignTypes);

        return "registerAuto";
    }


    @RequestMapping(value = "registerAuto")
    public String registerAuto(Auto auto){
        officialDao.registerAuto(auto);
        System.out.println("★[Elim] auto =" + auto);

        return "redirect:goToManagenmentAdministratorAuto";
    }

    @RequestMapping(value = "deliverCar")
    public String deliverCar(Integer orderId){
        officialDao.deliverCarStep1(orderId);
        System.out.println("★[Elim] DeliveCar_1 =" + orderId);
        Order order = commonDao.getOrderByOrderId(orderId);
        System.out.println("★[Elim] DeliveCar_2 =" + order);
        officialDao.deliverCarStep2(order);
        System.out.println("★[Elim] DeliveCar_3 = finish!");

        return "redirect:goToManagenmentAdministrator";
    }

    @RequestMapping(value = "agencyRatify")
    public String agencyRatify(Integer agencyId,Integer agencyUserId){
        System.out.println("★[Elim] agencyId = " + agencyId);
        System.out.println("★[Elim] agencyUserId = " + agencyUserId);
        officialDao.agencyRatifyStep1(agencyId);
        System.out.println("★[Elim] agencyRatify_1 = finish!");
        officialDao.agencyRatifyStep2(agencyUserId);
        System.out.println("★[Elim] agencyRatify_2 = finish!");

        return "personal_administrator";
    }

    @RequestMapping(value = "agencyRefuse")
    public String agencyRefuse(Integer agencyId){
        officialDao.agencyRefuse(agencyId);
        System.out.println("★[Elim] agencyRefuse = finish!");

        return "personal_administrator";
    }

}
