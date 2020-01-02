package cn.xixi.client.product.dao;

import cn.xixi.commons.beans.Product;
import cn.xixi.commons.beans.Record;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/19
 */
public interface IProductDao {
    List<Product> selectProductShowIndex();

    Product selectProductById(String id);

    List<Product> selectProductByName(Map map);

    List<Product> selectProductByCategoryId(Map map);

    String selectCategoryIdByName(String category);


    int selectProductCountByCategoryId(@Param("cid")String cid);

    int selectProductCountByName(@Param("name") String search_content);

    List<Product> selectHotProduct();

    void insertProductRecord(Record record);

    String selectProductRecord(String uid);
}
