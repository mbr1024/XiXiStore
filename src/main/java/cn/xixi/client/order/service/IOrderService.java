package cn.xixi.client.order.service;

import cn.xixi.commons.beans.Address;
import cn.xixi.commons.beans.Order;
import cn.xixi.commons.beans.Product;

import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/20
 */
public interface IOrderService {
    List<Address> findAddressByUser(String uid);

    int creatOrder(Order order);

    Address findAddressById(String did);

    Order findOrderByOrderId(String out_trade_no);

    void modifyOrderStatus(String out_trade_no);

    List<Order> findOrderByUserId(String uid);

    void addAddress(Address address);


}
