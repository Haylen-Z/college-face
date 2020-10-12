package com.github.mrgrtt.collegeface.service.impl;

import com.github.mrgrtt.collegeface.entity.Article;
import com.github.mrgrtt.collegeface.mapper.ArticleMapper;
import com.github.mrgrtt.collegeface.service.IArticleService;
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
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements IArticleService {

}
