package cn.xixi.client.product.service;

import cn.xixi.commons.beans.Condition;
import cn.xixi.commons.beans.Product;
import cn.xixi.commons.beans.Record;
import cn.xixi.utils.PageModel;

import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/18
 */
public interface IProductService {
    List<Product> finProductShowIndex();

    Product findProductByid(String id);

    List<Product> findProductByName(String name, PageModel pageModel, Condition condition);

    List<Product> findProductByCategoryId(String cid, PageModel pageModel, Condition condition);

    String findCategoryIdByName(String category);

    int findProductCountByName(String search_content);


    int findProductCountByCategoryId(String cid);

    List<Product> findHotProduct();

    void addProductRecord(Record record);

    String findProductRecord(String uid);
}
