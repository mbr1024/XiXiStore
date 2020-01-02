package cn.xixi.admin.product.handler;

import cn.xixi.admin.product.service.IAdminProductService;
import cn.xixi.commons.beans.Category;
import cn.xixi.commons.beans.Product;
import cn.xixi.utils.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/24
 */
@Controller
@RequestMapping("/admin/product")
public class AdminProductHandler {
    @Autowired
    private IAdminProductService productService;

    @ResponseBody
    @RequestMapping("/findProductList.do")
    public List<Product> findProduct() {
        List<Product> products = productService.finProduct();
        return products;

    }

    @RequestMapping("/findProductCategory.do")
    @ResponseBody
    public List<Category> findProductCategory() {
        List<Category> categories = productService.findProductCategory();
        return categories;

    }

    @RequestMapping("/addProduct.do")
    public String addProduct(Model model, Product product, String cid, HttpServletRequest request, MultipartFile upload) throws IOException {
        // System.out.println(product);
        Map map=upload(request,upload);
        String fileName= (String) map.get("fileName");
        String webPath= (String) map.get("webPath");
        String random= (String) map.get("random");

        product.setPid(IdUtils.getUUID());
        product.setPid(random);
        product.setSucc_count(0);
        product.setPdate(new Date());
        Category category = new Category();
        category.setCid(cid);
        product.setPimage(webPath + fileName);
        product.setCategory(category);
        productService.addProduct(product);
        return "/jsp/index.jsp";
    }

    @RequestMapping("updateProduct.do")
    public String update(Product product, Double price, MultipartFile upload, HttpServletRequest request) throws IOException {
        System.out.println("进入修改");

        if (upload != null) {
            Map map=upload(request,upload);
            String fileName= (String) map.get("fileName");
            String webPath= (String) map.get("webPath");
            String random= (String) map.get("random");
            product.setPimage(webPath + fileName);
        }
        System.out.println(price);
        System.out.println(product);
        productService.update(product);
        return "/jsp/index.jsp";
    }

    @ResponseBody
    @RequestMapping("deleteProductById.do")
    public String deleteProductById(String[] ids, HttpServletResponse response) {
        for (String id : ids) {
            System.out.println(id);
            productService.deleteProductById(id);
        }

        // System.out.println("进入修改");
        // productService.addProduct(product);
        return "success";


    }
    @ResponseBody
    @RequestMapping("/updateProductByflag")
    public String updateProductByflag(String type, String[] ids) {
        if ("xia".equals(type)) {

            productService.updateProductByflag(ids,0);
            return "success";

        } else{

            productService.updateProductByflag(ids,1);
            return "success";
        }

    }

    public Map upload(HttpServletRequest request,MultipartFile upload) throws IOException {
        String webPath = "images/";
        String path = request.getSession().getServletContext().getRealPath("images/");
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
        String random = String.valueOf(System.currentTimeMillis());
        String fileName = random + upload.getOriginalFilename();
        upload.transferTo(new File(path, fileName));
        Map map=new HashMap();
        map.put("random",random);
        map.put("webPath",webPath);
        map.put("fileName",fileName);
        return map;
    }
}
