package cn.xixi.admin.product.service;

import cn.xixi.admin.product.dao.IAdminProductDao;
import cn.xixi.commons.beans.Category;
import cn.xixi.commons.beans.Product;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/24
 */
@Service
public class AdminProductServiceImpl implements IAdminProductService {
    @Resource
    private IAdminProductDao productDao;

    @Override
    public List<Category> findProductCategory() {
        return productDao.selectProductCategory();
    }

    @Override
    public void addProduct(Product product) {
        productDao.insertProduct(product);
    }

    @Override
    public List<Product> finProduct() {
        return productDao.selectProduct();
    }

    @Override
    public void deleteProductById(String param) {
        productDao.deleteProductById(param);
    }

    @Override
    public void update(Product product) {
        productDao.update(product);
    }

    @Override
    public void updateProductByflag(String[] ids, int i) {
        for (String id : ids) {
            productDao.updateProductByflag(id, i);
        }
    }
}
