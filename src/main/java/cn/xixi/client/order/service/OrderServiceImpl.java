package cn.xixi.client.order.service;

import cn.xixi.client.order.dao.IOrderDao;
import cn.xixi.commons.beans.Address;
import cn.xixi.commons.beans.Order;
import cn.xixi.commons.beans.Orderitem;
import cn.xixi.commons.beans.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/20
 */
@Service
public class OrderServiceImpl implements IOrderService {
    @Resource
    private IOrderDao orderDao;

    @Override
    public List<Address> findAddressByUser(String uid) {
        return orderDao.selectAddressByUser(uid);
    }

    @Override
    public int creatOrder(Order order) {
        int row = orderDao.insertOrder(order);
        List<Orderitem> orderItems = order.getOrderitems();
        // if (1==1){
        //     throw new Exception();
        // }
        for (Orderitem orderitem : orderItems) {
            orderDao.insertOrderItem(orderitem);
            orderDao.changeProductNum(orderitem);
            orderDao.changeProductSuccCount(orderitem);
        }

        return row;
    }

    @Override
    public Address findAddressById(String did) {
        return orderDao.selectAddressById(did);
    }

    @Override
    public Order findOrderByOrderId(String out_trade_no) {
        return orderDao.selectOrderByOrderId(out_trade_no);
    }

    @Override
    public void modifyOrderStatus(String out_trade_no) {
        orderDao.modifyOrderStatus(out_trade_no);
    }

    @Override
    public List<Order> findOrderByUserId(String uid) {
        return orderDao.selectOrderByUserId(uid);
    }

    @Override
    public void addAddress(Address address) {
        orderDao.insertAddress(address);
    }


}
