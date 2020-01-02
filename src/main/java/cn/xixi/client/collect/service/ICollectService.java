package cn.xixi.client.collect.service;

import cn.xixi.commons.beans.Address;
import cn.xixi.commons.beans.Assess;
import cn.xixi.commons.beans.Product;

import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/22
 */
public interface ICollectService {
    List<Assess> findMyFavorite(String uid);

    int addMyFavorite(Assess assess);
}
