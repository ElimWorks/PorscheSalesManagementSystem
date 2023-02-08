package com.elimWorks.controller;

import com.elimWorks.dao.AgencyDao;
import com.elimWorks.dao.CommonDao;
import com.elimWorks.pojo.*;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.Iterator;

@Controller
public class AgencyController {

    @Autowired
    private AgencyDao agencyDao;
    @Autowired
    private CommonDao commonDao;

    @RequestMapping(value = "goToregisterAgencyMethod")
    public String goToregisterAgencyMethod(HttpServletRequest request){

        Collection<Province> provinces = agencyDao.getAllProvince();
        request.setAttribute("provinces",provinces);

        Collection<City> cities = agencyDao.getAllCity();
        request.setAttribute("cities",cities);


        System.out.println("★[Elim] provinces =" + provinces);
        System.out.println("★[Elim] cities =" + cities);

        return "registerAgency";
    }

    @RequestMapping(value = "registerAgencyMethod",method = RequestMethod.POST)
    public String registerAgencyMethod(Agency agency){
        agencyDao.registerAgencyMethod(agency);

        System.out.println("★[Elim]: 经销商申请信息 =  " + agency);

        return "reminder_registerAgency";
    }

    @RequestMapping(value = "goToManagenmentAgency")
    public String goToManagenmentAgency(HttpServletRequest request,Integer agencyId){
        System.out.println("★[Elim]: agencyId =  " + agencyId);
        Collection<Order> orders = commonDao.getAllOrderByAgencyId(agencyId);

        Iterator iterator = orders.iterator();
        agencyDao.updateAllInventoryReserve_flase();

        while (iterator.hasNext()) {
            Order order = (Order) iterator.next();
            System.out.println("★[Elim]: order =  " + order);

            Inventory inventory = agencyDao.judgeInventoryState(order.getOrderAutoName(), order.getOrderColorName(), order.getOrderWheelName(), order.getOrderTrimName(), agencyId);
            System.out.println("★[Elim]: inventory " + inventory);

            if (inventory == null) {
                System.out.println("★[Elim]: null " + order.getOrderId());
                commonDao.updateOrderInventory_flase(order.getOrderId());
                System.out.println("★[Elim]: update_flase Accomplish!");
            } else {
                System.out.println("★[Elim]: have " + order.getOrderId());
                commonDao.updateOrderInventory_true(order.getOrderId(),inventory.getInventoryId());
                agencyDao.updateInventoryReserve_true(inventory.getInventoryId());
                System.out.println("★[Elim]: update_ture Accomplish!");
            }
        }

        Collection<Order> ordersNew = commonDao.getAllOrderByAgencyId(agencyId);
        request.setAttribute("orders",ordersNew);
        System.out.println("★[Elim]: orders =  " + orders);
        Collection<Inventory> inventories = agencyDao.getAllInventoryByAgencyId(agencyId);
        request.setAttribute("inventories",inventories);
        System.out.println("★[Elim]: inventories =  " + inventories);


        return "management_agency";
    }
}
