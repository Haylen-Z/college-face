package com.github.mrgrtt.collegeface.service;

import com.github.mrgrtt.collegeface.domain.entity.Teacher;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
public interface ITeacherService {
    public List<Teacher> getAll();
    public String getContent(long id);
    public void add(String name,String content,String level);
    public void update(long id,String name,String content,String level);
    public void delete(long id);
    Teacher get(long id);
}
