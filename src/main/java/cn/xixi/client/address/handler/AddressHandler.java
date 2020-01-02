package cn.xixi.client.address.handler;

import cn.xixi.client.address.service.IAddressService;
import cn.xixi.commons.beans.Address;
import cn.xixi.commons.beans.Product;
import cn.xixi.commons.beans.User;
import cn.xixi.utils.IdUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/22
 */
@Controller
@RequestMapping("/client/address/")
public class AddressHandler {
    @Autowired
    private IAddressService addressService;

    @RequestMapping("addAddress.do")
    public String addAddress(Address address, String type, Model model, HttpSession session) {
        User user = (User) session.getAttribute("login_user");
        address.setUser(user);
        address.setDid(IdUtils.getUUID());
        addressService.addAddress(address);
        model.addAttribute("msg", "添加成功");
        if ("order".equals(type)) {
            return "/client/order/confirmCart.do";
        } else
            return "/client/address/findAddress.do";
    }

    @RequestMapping("findAddress.do")
    public String findAddress(HttpSession session, Model model) {
        User user = (User) session.getAttribute("login_user");
        List<Address> addressList = addressService.findAddress(user.getUid());
        model.addAttribute("addressList", addressList);
        return "/address.jsp";

    }

    @RequestMapping("modifyAddress.do")
    public String modifyAddress(Address address, String did, Model model, String type) {
        System.out.println(type);
        if ("select".equals(type)) {
            address = addressService.findAddressById(did);
            System.out.println(address);
            model.addAttribute("address", address);
            return "/address_edit.jsp";
        }
        int row = addressService.updateAddress(address);
        return "/client/address/findAddress.do";


    }

    @RequestMapping("deleteAddress.do")
    public String deleteAddress(String did) {
        int row = addressService.deleteAddress(did);
        return "/client/address/findAddress.do";
    }

}
