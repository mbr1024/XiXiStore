package cn.xixi.client.address.service;

import cn.xixi.commons.beans.Address;
import cn.xixi.commons.beans.Product;

import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/22
 */
public interface IAddressService {
    void addAddress(Address address);

    List<Address> findAddress(String uid);

    Address findAddressById(String did);

    int updateAddress(Address address);

    int deleteAddress(String did);
}
