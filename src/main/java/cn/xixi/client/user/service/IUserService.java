package cn.xixi.client.user.service;

import cn.xixi.commons.beans.User;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/18
 */
public interface IUserService {
    int addUser(User user);

    User findUser(User user);

    int updatePassword(User user);

    int updateUser(User user);
}
