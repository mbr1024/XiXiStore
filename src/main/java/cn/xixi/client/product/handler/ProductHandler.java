package cn.xixi.client.product.handler;

import cn.xixi.client.product.service.IProductService;
import cn.xixi.commons.beans.*;
import cn.xixi.utils.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/19
 */
@Controller
@RequestMapping("/client/product")
public class ProductHandler {
    @Autowired
    private IProductService productService;

    @RequestMapping("/showIndex.do")
    public String showIndex(Model model) {
        List<Product> products = productService.finProductShowIndex();
        List<Product> hotProducts = productService.findHotProduct();
        // System.out.println(hotProducts);
        model.addAttribute("hotProducts", hotProducts);
        model.addAttribute("showIndex", products);
        return "/index.jsp";
    }

    @RequestMapping("/findProductById.do")
    public String findProductById(String id, Model model, HttpSession session) {
        Product product = productService.findProductByid(id);
        User user = (User) session.getAttribute("login_user");
        if (user != null) {
            //如果已有用户登录,则开始记录最近浏览
            Record record = new Record();
            record.setPid(id);
            record.setUid(user.getUid());
            record.setTime(new Timestamp(new Date().getTime()));
            productService.addProductRecord(record);
        }
        if (user != null) {
            //如果已有用户登录,则查询
            String productRecordId = productService.findProductRecord(user.getUid());
            Product productRecord = productService.findProductByid(productRecordId);
            model.addAttribute("productRecord", productRecord);
        }
        //查询商品热卖
        List<Product> hotProducts = productService.findHotProduct();
        // System.out.println(hotProducts);
        model.addAttribute("hotProducts", hotProducts);
        // System.out.println(product);
        model.addAttribute("product", product);
        return "/product_info.jsp";
    }

    @RequestMapping("/findProductByName.do")
    public String findProductByName(HttpSession session, Condition condition, String search_content, Model model, @RequestParam(defaultValue = "1") Integer pageIndex) {
        // System.out.println(condition);
        PageModel pageModel = new PageModel();
        pageModel.setPageIndex(pageIndex);
        int count = productService.findProductCountByName(search_content);
        pageModel.setRecordCount(count);
        List<Product> products = productService.findProductByName(search_content, pageModel, condition);
        //查询最近浏览
        User user = (User) session.getAttribute("login_user");
        if (user != null) {
            //如果已有用户登录,则查询
            String productRecordId = productService.findProductRecord(user.getUid());
            Product productRecord = productService.findProductByid(productRecordId);
            model.addAttribute("product", productRecord);
        }
        //查询商品热卖
        List<Product> hotProducts = productService.findHotProduct();
        // System.out.println(hotProducts);
        model.addAttribute("hotProducts", hotProducts);
        model.addAttribute("search_content", search_content);
        // System.out.println(product);
        model.addAttribute("condition", condition);
        model.addAttribute("products", products);
        model.addAttribute("pageModel", pageModel);
        return "/list_ByName.jsp";
    }

    @RequestMapping("/findProductByCategory.do")
    public String findProductByCategory(HttpSession session, Condition condition, String cname, Model model, @RequestParam(defaultValue = "1") Integer pageIndex) {
        // System.out.println(condition);
        PageModel pageModel = new PageModel();
        pageModel.setPageIndex(pageIndex);
        String cid = productService.findCategoryIdByName(cname);
        int count = productService.findProductCountByCategoryId(cid);
        pageModel.setRecordCount(count);
        List<Product> products = productService.findProductByCategoryId(cid, pageModel, condition);
        //查询最近浏览
        User user = (User) session.getAttribute("login_user");
        if (user != null) {
            //如果已有用户登录,则查询
            String productRecordId = productService.findProductRecord(user.getUid());
            Product productRecord = productService.findProductByid(productRecordId);
            // System.out.println(productRecord);
            model.addAttribute("productRecord", productRecord);
        }

        // System.out.println(products);
        model.addAttribute("condition", condition);
        model.addAttribute("pageModel", pageModel);
        model.addAttribute("products", products);
        model.addAttribute("category", cname);
        //查询商品热卖
        List<Product> hotProducts = productService.findHotProduct();
        // System.out.println(hotProducts);
        model.addAttribute("hotProducts", hotProducts);
        return "/list.jsp";
    }
}
