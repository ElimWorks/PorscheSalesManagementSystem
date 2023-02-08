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
public class AutoController {

    @Autowired
    private AutoDao autoDao;
    @Autowired
    private CommonDao commonDao;
    @Autowired
    private AgencyDao agencyDao;


    @RequestMapping(value = "getModelsMessages")
    public String getModelsMessages(HttpServletRequest request){
        Collection<Auto> modelsMessages = autoDao.getModelsMessages();
        request.setAttribute("autoMessages",modelsMessages);
        return "models";
    }

    @RequestMapping(value = "getModelsAllById")
    public String getModelsAllById(HttpServletRequest request,Integer autoModelId){
        Collection<Auto> models = autoDao.getModelsAllById(autoModelId);
        request.setAttribute("autoMessages",models);
        return "models";
    }

    @RequestMapping(value = "goToDetials")
    public String goToDetials_718(HttpServletRequest request,Integer autoId,String autoModel){
        Auto detial = autoDao.getDetialsByAutoId(autoId);
        request.setAttribute("detial",detial);
        switch (autoModel){
            case "718":
                return "details_718";
            case "911":
                return "details_911";
            case "Taycan":
                return "details_Taycan";
            case "Panamera":
                return "details_Panamera";
            case "Macan":
                return "details_Macan";
            case "Cayenne":
                return "details_Cayenne";
            default:
                System.out.println("★[Elim]: 出现错误！");
                return "error";
        }
    }

    @RequestMapping(value = "configuratorMethod")
    public String configuratorMethod(HttpServletRequest request,Integer autoId){
        Auto detial_conf = autoDao.getDetialsByAutoId(autoId);
        request.setAttribute("detial_conf",detial_conf);

        Collection<Color> colors = autoDao.getAllColorMethod();
        request.setAttribute("colors",colors);

        Collection<Color> colorTypes = autoDao.getAllColorTypeMethod();
        request.setAttribute("colorTypes",colorTypes);

        Collection<Wheel> wheels = autoDao.getAllWheelMetod();
        request.setAttribute("wheels",wheels);

        Collection<Trim> trims = autoDao.getAllTrimMethod();
        request.setAttribute("trims",trims);

        Collection<Agency> agencies = agencyDao.getAllAgency();
        request.setAttribute("agencies",agencies);

        return "configurator";
    }




}
