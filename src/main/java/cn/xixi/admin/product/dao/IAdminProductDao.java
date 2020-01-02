package cn.xixi.admin.product.dao;

import cn.xixi.commons.beans.Category;
import cn.xixi.commons.beans.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/24
 */
public interface IAdminProductDao {
    List<Category> selectProductCategory();

    void insertProduct(Product product);

    List<Product> selectProduct();

    void deleteProductById(@Param("params") String params);

    void update(Product product);

    void updateProductByflag(@Param("params") String ids, @Param("i")int i);
}
