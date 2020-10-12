package com.github.mrgrtt.collegeface.service.impl;

import com.github.mrgrtt.collegeface.entity.Admin;
import com.github.mrgrtt.collegeface.mapper.AdminMapper;
import com.github.mrgrtt.collegeface.service.IAdminService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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
public class AdminServiceImpl extends ServiceImpl<AdminMapper, Admin> implements IAdminService {

}
