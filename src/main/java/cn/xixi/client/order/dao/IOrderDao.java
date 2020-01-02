package cn.xixi.client.order.dao;

import cn.xixi.commons.beans.Address;
import cn.xixi.commons.beans.Order;
import cn.xixi.commons.beans.Orderitem;
import cn.xixi.commons.beans.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/20
 */
public interface IOrderDao {

    List<Address> selectAddressByUser(@Param("uid") String uid);

    int insertOrder(Order order);

    void insertOrderItem(Orderitem orderitem);

    void changeProductNum(Orderitem orderitem);

    Address selectAddressById(String did);

    Order selectOrderByOrderId(String out_trade_no);

    void modifyOrderStatus(String out_trade_no);

    List<Order> selectOrderByUserId(String uid);

    void insertAddress(Address address);

    void changeProductSuccCount(Orderitem orderitem);
}
