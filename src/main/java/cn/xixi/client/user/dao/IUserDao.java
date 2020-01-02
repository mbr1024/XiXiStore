package cn.xixi.client.user.dao;

import cn.xixi.commons.beans.User;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/18
 */
public interface IUserDao {
    int insertUser(User user);

    User selectUser(User user);

    int updatePassword(User user);

    int updateUser(User user);
}
