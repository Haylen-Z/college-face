package com.github.mrgrtt.collegeface.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.github.mrgrtt.collegeface.entity.Article;
import com.github.mrgrtt.collegeface.entity.ArticleContent;
import com.github.mrgrtt.collegeface.mapper.ArticleContentMapper;
import com.github.mrgrtt.collegeface.mapper.ArticleMapper;
import com.github.mrgrtt.collegeface.service.IArticleService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
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
public class ArticleServiceImpl  implements IArticleService {

    @Autowired
    ArticleMapper articleMapper;

    @Autowired
    ArticleContentMapper articleContentMapper;

    @Override
    public List<Article> getAll(int type, int start, int limit) {

        return null;
    }

    @Override
    public String getContent(long id) {
        long articleId;
        Article article = articleMapper.selectById(id);
        if(article == null){
            return null;
        }else{
            articleId = article.getArticleContentId();
            QueryWrapper<ArticleContent> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("id",article);
            ArticleContent articleContent = articleContentMapper.selectById(articleId);
            String s = null;
            if(articleContent != null){
                s = articleContent.getDetail();
            }
            return s;
        }
    }

    @Override
    public void add(int type, String title, String content) {

    }

    @Override
    public void update(long id, int type, String title, String content) {

    }

    @Override
    public void delete(long id) {

    }
}
