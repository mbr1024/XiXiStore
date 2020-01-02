package cn.xixi.admin.user.service;

import cn.xixi.commons.beans.User;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/24
 */
public interface IAdminUserService {
    User findUserByLogin(User user);
}
