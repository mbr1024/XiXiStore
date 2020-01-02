package cn.xixi.admin.product.service;

import cn.xixi.commons.beans.Category;
import cn.xixi.commons.beans.Product;

import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/24
 */
public interface IAdminProductService {
    List<Category> findProductCategory();

    void addProduct(Product product);

    List<Product> finProduct();

    void deleteProductById(String param);

    void update(Product product);

    void updateProductByflag(String[] ids, int i);
}
