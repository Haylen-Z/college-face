package com.github.mrgrtt.collegeface.service;


import com.github.mrgrtt.collegeface.entity.Recommend;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
public interface IRecommendService {
    public List<Recommend> getAll();
    public void add(String title,long articleId,String cover);
    public void update(long id,String title,long articleId,String cover);
    public void delete(long id);
}
