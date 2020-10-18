package com.github.mrgrtt.collegeface.controller;


import com.github.mrgrtt.collegeface.domain.dto.CommonResult;
import com.github.mrgrtt.collegeface.domain.entity.Article;
import com.github.mrgrtt.collegeface.service.IAdminService;
import com.github.mrgrtt.collegeface.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

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

    @Autowired
    IArticleService iArticleService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView getArticles(@RequestParam int type,
                                    @RequestParam(required = false, defaultValue = "0") int start,
                                    @RequestParam(required = false, defaultValue = "16") int limit) {
        ModelAndView mv = new ModelAndView("admin/article/article");
        mv.addObject("type", type);
        //返回所有文章信息
        List<Article> articlesList = iArticleService.getAll(type,start,limit);

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
        //插入文章及文章内容
        iArticleService.add(type,title,content);
        return CommonResult.success();
    }

    @RequestMapping(value = "/update-page/{id}", method = RequestMethod.GET)
    public ModelAndView getUpdatePage(@PathVariable long id) {
        ModelAndView mv = new ModelAndView("admin/article/update-page");
        return mv;
    }

    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable long id, @RequestParam String title,
                               @RequestParam String content, @RequestParam int type) {
        //根据id 更新文章
        iArticleService.update(id,type,title,content);
        return CommonResult.success();
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable long id) {
        //根据id,删除文章
        iArticleService.delete(id);
        return CommonResult.success();
    }
}
