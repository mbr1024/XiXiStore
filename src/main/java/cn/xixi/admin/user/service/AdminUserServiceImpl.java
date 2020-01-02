package cn.xixi.admin.user.service;

import cn.xixi.admin.user.dao.IAdminUserDao;
import cn.xixi.commons.beans.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * company: www.abc.com
 * Author: 苏依林
 * Create Data: 2019/6/24
 */
@Service
public class AdminUserServiceImpl implements IAdminUserService {
    @Resource
    private IAdminUserDao adminUserDao;

    @Override
    public User findUserByLogin(User user) {
        return adminUserDao.findUserByLogin(user);
    }
}
