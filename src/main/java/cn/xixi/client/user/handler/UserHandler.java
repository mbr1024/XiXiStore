package cn.xixi.client.user.handler;

import cn.xixi.client.product.service.IProductService;
import cn.xixi.client.user.service.IUserService;
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
 * Create Data: 2019/6/18
 */
@Controller
@RequestMapping("/client/user")
public class UserHandler {
    @Autowired
    private IUserService userService;
    @Autowired
    private IProductService productService;

    @RequestMapping("/register.do")
    public String register(User user, Model model) {
        user.setUid(IdUtils.getUUID());
        System.out.println(user);
        int row = userService.addUser(user);
        if (row > 0) {
            System.out.println("注册成功");
            model.addAttribute("msg", "注册成功,点击下面");
            return "/registerSuccess.jsp";
        }
        return "/index.jsp";
    }

    @RequestMapping("/login.do")
    public String login(User user, Model model,String code, HttpSession session) {
        if (session.getAttribute("checkcode_session").equals(code)) {


            user = userService.findUser(user);
            if (user == null) {
                model.addAttribute("msg", "用户名或密码错误,请重试!");
                return "/login.jsp";
            } else {
                System.out.println("登陆成功!");
                session.setAttribute("login_user", user);
                List<Product> products = productService.finProductShowIndex();
                //System.out.println(products);
                model.addAttribute("showIndex", products);
                return "/index.jsp";
            }
        }
        else {
            model.addAttribute("msg","验证码错误");
            return "/login.jsp";
        }
    }

    @RequestMapping("/updatePassword.do")
    public String updatePassword(Model model, String oldpassword, String password, String repassword, HttpSession session) {
        System.out.println(password);

        User user_login = (User) session.getAttribute("login_user");
        if (user_login.getPassword().equals(oldpassword) && password.equals(repassword)) {

            user_login.setPassword(password);
            int row = userService.updatePassword(user_login);
            return "/client/user/logout.do";
        } else {

            model.addAttribute("msg", "更改密码出错,请重试!");
            return "/password_eidt.jsp";
        }

    }

    @RequestMapping("/updateUser.do")
    public String updateUser(User user, HttpSession session, Model model) {
        // System.out.println(user);
        User login_user = (User) session.getAttribute("login_user");
        login_user.setSex(user.getSex());
        login_user.setName(user.getName());
        int row = userService.updateUser(login_user);
        return "/client/user/logout.do";
    }

    @RequestMapping("/logout.do")
    public String logout(HttpSession session) {
        session.removeAttribute("login_user");
        return "/login.jsp";
    }
}
