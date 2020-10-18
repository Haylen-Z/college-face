package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import com.github.mrgrtt.collegeface.domain.entity.Article;
import com.github.mrgrtt.collegeface.domain.entity.ArticleContent;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author haylen
 * @since 2020-10-12
 */
@Controller
@RequestMapping("/admin/articles")
public class ArticleController {
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getArticles(@RequestParam int type,
                                    @RequestParam(required = false, defaultValue = "0") int start,
                                    @RequestParam(required = false, defaultValue = "16") int limit) {
        List<Article> articles = new ArrayList<>();
        ModelAndView mv = new ModelAndView("admin/article/article");
        mv.addObject("type", type);
        mv.addObject("start", start);
        mv.addObject("limit", limit);
        mv.addObject("articles", articles);
        return mv;
    }

    @RequestMapping(value = "/create-page", method = RequestMethod.GET)
    public ModelAndView getCreatePage() {
        ModelAndView mv = new ModelAndView("admin/article/create-page");
        return mv;
    }

    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult create(@RequestParam String title,
                               @RequestParam String content, @RequestParam int type) {
        return CommonResult.success();
    }

    @RequestMapping(value = "/update-page/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdatePage(@PathVariable long id) {
        Article article = new Article();
        ArticleContent content = new ArticleContent();
        ModelAndView mv = new ModelAndView("admin/article/update-page");
        mv.addObject("article", article);
        mv.addObject("content", content.getDetail());
        return mv;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable long id, @RequestParam String title,
                               @RequestParam String content, @RequestParam int type) {
        return CommonResult.success();
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable long id) {
        return CommonResult.success();
    }
}
