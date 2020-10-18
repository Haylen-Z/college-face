package com.github.mrgrtt.collegeface.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.github.mrgrtt.collegeface.domain.entity.Information;
import com.github.mrgrtt.collegeface.mapper.InformationMapper;
import com.github.mrgrtt.collegeface.service.IInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
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

    @Autowired
    InformationMapper informationMapper;

    @Override
    public String getDatail(String name) {
        QueryWrapper<Information> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("name",name);
        String s = null;
        Information information = informationMapper.selectOne(queryWrapper);
        if(information != null){
            s = information.getDetail();
        }
        return s;
    }

    @Override
    public List<Information> getAll() {
        return informationMapper.selectList(null);
    }

    @Override
    public void add(String name, String detail) {
        LocalDateTime create_time = LocalDateTime.now();
        Information information = new Information();
        information.setName(name);
        information.setDetail(detail);
        information.setCreateTime(create_time);
        information.setUpdateTime(create_time);
        informationMapper.insert(information);
    }

    @Override
    public void update(long id, String name, String detail) {
        LocalDateTime updateTime = LocalDateTime.now();
        Information information = new Information();
        information.setId(id);
        information.setName(name);
        information.setDetail(detail);
        information.setUpdateTime(updateTime);
        informationMapper.updateById(information);
    }

    @Override
    public void delete(long id) {
        informationMapper.deleteById(id);
    }
}
