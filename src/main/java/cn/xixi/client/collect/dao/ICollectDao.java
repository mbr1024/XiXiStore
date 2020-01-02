package cn.xixi.client.collect.dao;

import cn.xixi.commons.beans.Assess;
import cn.xixi.commons.beans.Product;

import java.util.List;
import java.util.Map;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/22
 */
public interface ICollectDao {
    int insertCollect(Assess assess);

    List<Assess> selectCollectById(String uid);
}
