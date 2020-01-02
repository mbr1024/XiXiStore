package cn.xixi.client.collect.service;

import cn.xixi.client.collect.dao.ICollectDao;
import cn.xixi.commons.beans.Address;
import cn.xixi.commons.beans.Assess;
import cn.xixi.commons.beans.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/22
 */
@Service
public class CollectServiceImpl implements ICollectService {
    @Resource
    private ICollectDao collectDao;
    @Override
    public List<Assess> findMyFavorite(String uid) {
        return collectDao.selectCollectById(uid);
    }

    @Override
    public int addMyFavorite(Assess assess) {
        return collectDao.insertCollect(assess);
    }
}
