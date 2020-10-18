package com.github.mrgrtt.collegeface.service.impl;


import com.github.mrgrtt.collegeface.domain.entity.Recommend;
import com.github.mrgrtt.collegeface.mapper.ArticleContentMapper;
import com.github.mrgrtt.collegeface.mapper.RecommendMapper;
import com.github.mrgrtt.collegeface.service.IRecommendService;
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
public class RecommendServiceImpl  implements IRecommendService {

    @Autowired
    RecommendMapper recommendMapper;

    @Autowired
    ArticleContentMapper articleContentMapper;

    @Override
    public List<Recommend> getAll() {
        return recommendMapper.selectList(null);
    }

    @Override
    public void add(String title, long articleId, String cover) {
        LocalDateTime createTime = LocalDateTime.now();
        Recommend recommend = new Recommend();
        recommend.setCover(cover);
        recommend.setTitle(title);
        recommend.setCreateTime(createTime);
        recommend.setArticleId(articleId);
        recommendMapper.insert(recommend);
    }

    @Override
    public void update(long id, String title, long articleId, String cover) {
        LocalDateTime updateTime = LocalDateTime.now();
        Recommend recommend = new Recommend();
        recommend.setArticleId(articleId);
        recommend.setTitle(title);
        recommend.setId(id);
        recommend.setCover(cover);
        recommend.setUpdateTime(updateTime);
        recommendMapper.updateById(recommend);
    }

    @Override
    public void delete(long id) {
        recommendMapper.deleteById(id);
    }

    @Override
    public Recommend get(long id) {
        return recommendMapper.selectById(id);
    }
}
