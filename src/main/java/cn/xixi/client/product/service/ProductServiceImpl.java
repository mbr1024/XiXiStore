package cn.xixi.client.product.service;

import cn.xixi.client.product.dao.IProductDao;
import cn.xixi.commons.beans.Condition;
import cn.xixi.commons.beans.Product;
import cn.xixi.commons.beans.Record;
import cn.xixi.utils.PageModel;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/19
 */
@Service
public class ProductServiceImpl implements IProductService {
    @Resource
    private IProductDao productDao;
    @Override
    public List<Product> finProductShowIndex() {
        return productDao.selectProductShowIndex();
    }

    @Override
    public Product findProductByid(String id) {
        return productDao.selectProductById(id);
    }

    @Override
    public List<Product> findProductByName(String name, PageModel pageModel, Condition condition) {
        Map map=new HashMap();
        map.put("name",name);
        map.put("pageModel",pageModel);
        map.put("condition",condition);
        return productDao.selectProductByName(map);
    }

    @Override
    public List<Product> findProductByCategoryId(String cid, PageModel pageModel, Condition condition) {
        Map map=new HashMap();
        map.put("cid",cid);
        map.put("pageModel",pageModel);
        map.put("condition",condition);
        return productDao.selectProductByCategoryId(map);
    }

    @Override
    public String findCategoryIdByName(String category) {
        return productDao.selectCategoryIdByName(category);
    }

    @Override
    public int findProductCountByName(String search_content) {
        return productDao.selectProductCountByName(search_content);
    }


    @Override
    public int findProductCountByCategoryId(String cid) {
        return productDao.selectProductCountByCategoryId(cid);
    }

    @Override
    public List<Product> findHotProduct() {
        return productDao.selectHotProduct();
    }

    @Override
    public void addProductRecord(Record record) {
        productDao.insertProductRecord(record);
    }

    @Override
    public String findProductRecord(String uid) {
        return productDao.selectProductRecord(uid);
    }
}
