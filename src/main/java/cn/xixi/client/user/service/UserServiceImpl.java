package cn.xixi.client.user.service;

import cn.xixi.client.user.dao.IUserDao;
import cn.xixi.commons.beans.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/18
 */
@Service
public class UserServiceImpl implements IUserService {
    @Resource
    private IUserDao userDao;

    @Override
    public int addUser(User user) {
        return userDao.insertUser(user);
    }

    @Override
    public User findUser(User user) {
        return userDao.selectUser(user);
    }

    @Override
    public int updatePassword(User user) {
        return userDao.updatePassword(user);
    }

    @Override
    public int updateUser(User user) {
        return userDao.updateUser(user);
    }
}
