package com.github.mrgrtt.collegeface.service.impl;

import com.github.mrgrtt.collegeface.domain.entity.ArticleContent;
import com.github.mrgrtt.collegeface.domain.entity.Teacher;
import com.github.mrgrtt.collegeface.mapper.ArticleContentMapper;
import com.github.mrgrtt.collegeface.mapper.TeacherMapper;
import com.github.mrgrtt.collegeface.service.ITeacherService;
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
public class TeacherServiceImpl implements ITeacherService {

    @Autowired
    ArticleContentMapper articleContentMapper;
    @Autowired
    TeacherMapper teacherMapper;

    @Override
    public List<Teacher> getAll() {
        return teacherMapper.selectList(null);
    }

    @Override
    public String getContent(long id) {
        ArticleContent articleContent = articleContentMapper.selectById(id);
        if(articleContent == null){
            return null;
        }else{
            String s = articleContent.getDetail();
            return s;
        }
    }

    @Override
    public void add(String name, String content, String level) {
        LocalDateTime localDateTime = LocalDateTime.now();
        ArticleContent articleContent = new ArticleContent();
        articleContent.setUpdateTime(localDateTime);
        articleContent.setCreateTime(localDateTime);
        articleContent.setDetail(content);
        //插入文章内容表
        articleContentMapper.insert(articleContent);

        Long article_content_id = articleContent.getId();

        //插入教师信息表
        Teacher teacher = new Teacher();
        teacher.setLevel(level);
        teacher.setName(name);
        teacher.setCreateTime(localDateTime);
        teacher.setUpdateTime(localDateTime);
        teacher.setArticleContentId(article_content_id);
        teacherMapper.insert(teacher);
    }

    @Override
    public void update(long id, String name, String content, String level) {
        LocalDateTime updateTime = LocalDateTime.now();
        Teacher teacher = teacherMapper.selectById(id);
        if (teacher == null) {
            return;
        }

        //更新教师信息表
        teacher.setUpdateTime(updateTime);
        teacher.setName(name);
        teacher.setLevel(level);
        teacherMapper.updateById(teacher);

        Long article_id = teacher.getArticleContentId();
        //更新文章内容表
        ArticleContent articleContent = new ArticleContent();
        articleContent.setId(article_id);
        articleContent.setDetail(content);
        articleContent.setUpdateTime(updateTime);
        articleContentMapper.updateById(articleContent);

    }

    @Override
    public void delete(long id) {
        Teacher teacher = teacherMapper.selectById(id);
        Long article_id = teacher.getArticleContentId();
        teacherMapper.deleteById(id);
        articleContentMapper.deleteById(article_id);
    }

    @Override
    public Teacher get(long id) {
        return teacherMapper.selectById(id);
    }
}
