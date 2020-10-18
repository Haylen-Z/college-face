package com.github.mrgrtt.collegeface.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.github.mrgrtt.collegeface.domain.entity.Admin;
import com.github.mrgrtt.collegeface.mapper.AdminMapper;
import com.github.mrgrtt.collegeface.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
@Service
public class AdminServiceImpl  implements IAdminService {

    @Autowired
    AdminMapper adminMapper;

    @Override
    public long login(String username, String password) {
        QueryWrapper<Admin> queryWrapper = new QueryWrapper<>();
        queryWrapper.and(i->i.eq("username",username).eq("password",password));
        Admin admin = adminMapper.selectOne(queryWrapper);
        long id;
        if(admin == null){
            id = -1;
        }else{
            id = admin.getId();
        }
        return id;
    }

    @Override
    public void changePassword(long id, String newPassword) {
        Admin admin = new Admin();
        admin.setId(id);
        admin.setPassword(newPassword);
        adminMapper.updateById(admin);
    }
}
