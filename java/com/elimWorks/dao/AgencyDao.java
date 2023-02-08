package com.elimWorks.dao;

import com.elimWorks.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;

public interface AgencyDao {

    public Collection<Province> getAllProvince();

    public Collection<City> getAllCity();

    public Collection<Agency> getAllAgency();

    public Agency getAgencyById(@Param(value = "agencyId") Integer agencyId);

    public void registerAgencyMethod(Agency agency);

    public Collection<Inventory> getAllInventoryByAgencyId(@Param(value = "agencyId") Integer agencyId);

    public Inventory judgeInventoryState(@Param(value = "orderAutoName") String orderAutoName,@Param(value = "orderColorName") String orderColorName,@Param(value = "orderWheelName") String orderWheelName,@Param(value = "orderTrimName") String orderTrimName,@Param(value = "agencyId") Integer agencyId);

    public void updateInventoryReserve_true(@Param(value = "inventoryId") Integer inventoryId);

    public void updateAllInventoryReserve_flase();

    public void completeStep2_inventory(@Param(value = "inventoryId") Integer inventoryId);

    public Collection<Agency> getUserRegisterAgencyState(@Param(value = "userId") Integer userId);
}
