package com.github.mrgrtt.collegeface.service;


import com.github.mrgrtt.collegeface.domain.entity.Information;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
public interface IInformationService {
    public String getDatail(String name);
    public List<Information> getAll();
    public void add(String name,String detail);
    public void update(long id,String name,String detail);
    public void delete(long id);
    Information get(long id);
}
