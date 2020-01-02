package cn.xixi.client.collect.handler;

import cn.xixi.client.collect.service.ICollectService;
import cn.xixi.client.product.service.IProductService;
import cn.xixi.commons.beans.Assess;
import cn.xixi.commons.beans.Product;
import cn.xixi.commons.beans.User;
import cn.xixi.utils.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/22
 */
@Controller
@RequestMapping("/client/collect/")
public class CollectHandler {
    @Autowired
    private ICollectService collectService;
    @Autowired
    private IProductService productService;

    @RequestMapping("myFavorite.do")
    public String myFavorite(HttpSession session, Model model) {
        User user = (User) session.getAttribute("login_user");
        List<Assess> list = collectService.findMyFavorite(user.getUid());
        model.addAttribute("list", list);
        System.out.println(list);
        return "/favorite.jsp";
    }

    @RequestMapping("addFavorite.do")
    public String addFavorite(HttpSession session, Assess assess, String pid, Model model) {
        Product product = productService.findProductByid(pid);
        User user = (User) session.getAttribute("login_user");
        List<Assess> list = collectService.findMyFavorite(user.getUid());
        for (Assess ass : list) {
            if (pid.equals(ass.getProduct().getPid())) {
                return "/client/collect/myFavorite.do";
            }
        }
        assess.setAid(IdUtils.getUUID());
        assess.setContent(product.getPname());
        assess.setUser(user);
        assess.setProduct(product);
        int row = collectService.addMyFavorite(assess);

        return "/client/collect/myFavorite.do";
    }
}
