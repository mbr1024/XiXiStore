package cn.xixi.client.address.service;

import cn.xixi.client.address.dao.IAddressDao;
import cn.xixi.commons.beans.Address;
import cn.xixi.commons.beans.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/22
 */
@Service
public class AddressServiceImpl implements IAddressService {
    @Resource
    private IAddressDao addressDao;

    @Override
    public void addAddress(Address address) {
        addressDao.insertAddress(address);
    }

    @Override
    public List<Address> findAddress(String uid) {
        return addressDao.selectAddress(uid);
    }

    @Override
    public Address findAddressById(String did) {
        return addressDao.selectAddressById(did);
    }

    @Override
    public int updateAddress(Address address) {
        return addressDao.updateAddress(address);
    }

    @Override
    public int deleteAddress(String did) {
        return addressDao.deleteAddress(did);
    }
}
