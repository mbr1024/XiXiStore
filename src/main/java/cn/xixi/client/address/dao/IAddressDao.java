package cn.xixi.client.address.dao;

import cn.xixi.commons.beans.Address;

import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/22
 */
public interface IAddressDao {
    void insertAddress(Address address);

    List<Address> selectAddress(String uid);

    Address selectAddressById(String did);

    int updateAddress(Address address);

    int deleteAddress(String did);
}
