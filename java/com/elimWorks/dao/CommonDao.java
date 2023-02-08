package com.elimWorks.dao;

import com.elimWorks.pojo.*;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;

public interface CommonDao {

    public Color getColorById(@Param(value = "colorId") Integer colorId);

    public Wheel getWheelById(@Param(value = "wheelId") Integer wheelId);

    public Trim getTrimById(@Param(value = "trimId") Integer trimId);

    public void placeOrderMethod(Order order);

    public void orderCar(@Param(value = "orderId") Integer orderId);

    public Collection<Order> getAllOrderByAgencyId(@Param(value = "agencyId") Integer agencyId);

    public Collection<Order> getAllOrderByUserId(@Param(value = "userId") Integer userId);

    public Collection<Order> getIncompleteOrderByUserId(@Param(value = "userId") Integer userId);

    public Order getOrderByOrderId(@Param(value = "orderId") Integer orderId);

    public void updateOrderInventory_true(@Param(value = "orderId") Integer orderId,@Param(value = "inventoryId") Integer inventoryId);

    public void updateOrderInventory_flase(@Param(value = "orderId") Integer orderId);

    public void completeStep1_order(@Param(value = "orderId") Integer orderId);

    public void orderCancel(@Param(value = "orderId") Integer orderId);
}
