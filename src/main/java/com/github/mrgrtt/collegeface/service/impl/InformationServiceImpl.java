package com.github.mrgrtt.collegeface.service.impl;

import com.github.mrgrtt.collegeface.entity.Information;
import com.github.mrgrtt.collegeface.mapper.InformationMapper;
import com.github.mrgrtt.collegeface.service.IInformationService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
@Service
public class InformationServiceImpl implements IInformationService {

    @Override
    public String getDatail(String name) {
        return null;
    }

    @Override
    public List<Information> getAll() {
        return null;
    }

    @Override
    public void add(String name, String detail) {

    }

    @Override
    public void update(long id, String name, String detail) {

    }

    @Override
    public void delete(long id) {

    }
}
