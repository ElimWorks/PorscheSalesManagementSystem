package com.elimWorks.controller;

import com.elimWorks.dao.AgencyDao;
import com.elimWorks.dao.AutoDao;
import com.elimWorks.dao.CommonDao;
import com.elimWorks.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

@Controller
public class CommonController {

    @Autowired
    private CommonDao commonDao;
    @Autowired
    private AutoDao autoDao;
    @Autowired
    private AgencyDao agencyDao;

    @RequestMapping(value = "orderMethod",method = RequestMethod.POST)
    public String orderMethod(HttpServletRequest request,Integer userId,Integer autoId,Integer colorId,Integer wheelId,Integer trimId,Integer agencyId){
        Auto auto = autoDao.getDetialsByAutoId(autoId);
        request.setAttribute("auto",auto);
        Color color = commonDao.getColorById(colorId);
        request.setAttribute("color",color);
        Wheel wheel = commonDao.getWheelById(wheelId);
        request.setAttribute("wheel",wheel);
        Trim trim = commonDao.getTrimById(trimId);
        request.setAttribute("trim",trim);
        Integer totalPrice = color.getColorPrice()+wheel.getWheelPrice()+trim.getTrimPrice();
        request.setAttribute("totalPrice",totalPrice);
        Agency agency = agencyDao.getAgencyById(agencyId);
        request.setAttribute("agency",agency);
        Collection<Agency> userRegisterState = agencyDao.getUserRegisterAgencyState(userId);
        request.setAttribute("userRegisterState",userRegisterState);

        return "order";
    }

    @RequestMapping(value = "placeOrder")
    public String placeOrder(Order order){
        commonDao.placeOrderMethod(order);
        System.out.println("★[Elim] order =" + order);
        return "payment";
    }

    @RequestMapping(value = "orderCar")
    public String orderCar(Integer orderId){
        commonDao.orderCar(orderId);
        System.out.println("★[Elim] 成功向官方订车");
        return "personal_agency";
    }

    @RequestMapping(value = "goToPersonalCustomer")
    public String goToPersonalCustomer(HttpServletRequest request,Integer userId){
        Collection<Order> ordersByUserId = commonDao.getAllOrderByUserId(userId);
        request.setAttribute("ordersByUserId",ordersByUserId);
        System.out.println("★[Elim] ordersByUserId =" + ordersByUserId);
        Collection<Order> incompleteOrdersByUserId = commonDao.getIncompleteOrderByUserId(userId);
        request.setAttribute("incompleteOrdersByUserId",incompleteOrdersByUserId);
        System.out.println("★[Elim] incompleteOrdersByUserId =" + incompleteOrdersByUserId);

        return "personal_customer";
    }

    @RequestMapping(value = "orderComplete")
    public String orderComplete(Integer orderId){
        Order completeOrder = commonDao.getOrderByOrderId(orderId);
        commonDao.completeStep1_order(orderId);
        System.out.println("★[Elim] step1 =" + orderId);
        agencyDao.completeStep2_inventory(completeOrder.getOrderInventoryId());
        System.out.println("★[Elim] step2 =" + completeOrder.getOrderInventoryId());

        return "personal_agency";
    }

    @RequestMapping(value = "orderCancel")
    public String orderCancel(Integer orderId){
        commonDao.orderCancel(orderId);
        return "index";
    }
}
