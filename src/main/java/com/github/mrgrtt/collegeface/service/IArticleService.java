package com.github.mrgrtt.collegeface.service;

import com.github.mrgrtt.collegeface.entity.Article;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
public interface IArticleService  {
    public List<Article> getAll(int type,int start,int limit);
    public String getContent(long id);
    public void add(int type,String title,String content);
    public void update(long id,int type,String title,String content);
    public void delete(long id);
}
