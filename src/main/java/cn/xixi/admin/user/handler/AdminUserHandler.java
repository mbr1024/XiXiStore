package cn.xixi.admin.user.handler;

import cn.xixi.admin.user.service.IAdminUserService;
import cn.xixi.commons.beans.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/24
 */
@Controller
@RequestMapping("/admin/user")
public class AdminUserHandler {
    @Autowired
    private IAdminUserService adminUserService;

    @RequestMapping("/login.do")
    public String login(User user, Model model, HttpSession session) {
        user = adminUserService.findUserByLogin(user);
        if (user != null) {
            session.setAttribute("login_user", user);
            return "/admin/login/home.jsp";
        } else {

            model.addAttribute("msg", "用户名或密码错误");
            return "/admin/login/login.jsp";
        }
    }

    @RequestMapping("/logout.do")
    public String logout(Model model, HttpSession session) {
        session.removeAttribute("login_user");
        model.addAttribute("msg", "成功退出!");
        return "/admin/login/login.jsp";
    }
}
