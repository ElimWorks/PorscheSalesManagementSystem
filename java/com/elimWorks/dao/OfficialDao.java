package com.elimWorks.dao;

import com.elimWorks.pojo.Agency;
import com.elimWorks.pojo.Auto;
import com.elimWorks.pojo.Order;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;

public interface OfficialDao {

    public Collection<Agency> getAllAgencyForNoApproval();

    public Collection<Order> getAllOrderNeedTransmit();

    public void registerAuto(Auto auto);

    public void deliverCarStep1(@Param(value = "orderId") Integer orderId);

    public void deliverCarStep2(Order order);

    public void agencyRatifyStep1(@Param(value = "agencyId") Integer agencyId);

    public void agencyRatifyStep2(@Param(value = "agencyUserId") Integer agencyUserId);

    public void agencyRefuse(@Param(value = "agencyId") Integer agencyId);
}
